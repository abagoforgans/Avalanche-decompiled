contract main {




// =====================  Runtime code  =====================


#
#  - startArb(address arg1, address arg2, uint256[] arg3, uint256 arg4)
#
address stor0;
mapping of uint8 stor1;

function _fallback() payable {
    revert
}

function sqrt(uint256 arg1) {
    require calldata.size - 4 >= 32
    s = arg1 + 1 / 2
    t = arg1
    while s < t:
        require s
        s = (arg1 / s) + s / 2
        t = s
        continue 
    return t
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 != msg.sender:
        require stor1[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function setWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1 + (32 * arg1.length) + 36
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
    if stor0 != msg.sender:
        require stor1[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function calculAmount(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require (arg6 * arg2) + (10000 * arg3)
    s = (10000 * arg5 * arg6 * arg2 * arg4 / (arg6 * arg2) + (10000 * arg3) * 10000 * arg1 * arg3 / (arg6 * arg2) + (10000 * arg3)) + 1 / 2
    t = 10000 * arg5 * arg6 * arg2 * arg4 / (arg6 * arg2) + (10000 * arg3) * 10000 * arg1 * arg3 / (arg6 * arg2) + (10000 * arg3)
    while s < t:
        require s
        s = (10000 * arg5 * arg6 * arg2 * arg4 / (arg6 * arg2) + (10000 * arg3) * 10000 * arg1 * arg3 / (arg6 * arg2) + (10000 * arg3) / s) + s / 2
        t = s
        continue 
    if arg5:
        return 10000 * arg1 * arg3 / (arg6 * arg2) + (10000 * arg3), 
               arg6 * arg2 * arg4 / (arg6 * arg2) + (10000 * arg3),
               t - (10000 * 10000 * arg1 * arg3 / (arg6 * arg2) + (10000 * arg3)) / arg5,
               arg5
    revert
}

function checkPath(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 >= 96 and (32 * arg2.length) + 128 <= test266151307()
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg2.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = msg.value
    mem[(32 * arg2.length) + 164] = 64
    mem[(32 * arg2.length) + 196] = arg2.length
    idx = 0
    s = 128
    t = (32 * arg2.length) + 228
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args mem[(32 * arg2.length) + 132 len (96 * arg2.length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _61 = mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32
    require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
    require (32 * arg2.length) + return_data.size + 128 > (32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 159
    _62 = mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]
    require mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128] <= test266151307()
    require (32 * mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 32 >= 0 and (32 * arg2.length) + ceil32(return_data.size) + (32 * mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 160 <= test266151307()
    mem[64] = (32 * arg2.length) + ceil32(return_data.size) + (32 * mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 160
    mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = _62
    require return_data.size >= _61 + (32 * _62) + 32
    mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len 32 * _62] = mem[(32 * arg2.length) + _61 + 160 len 32 * _62]
    require 1 < _62
    _86 = mem[(32 * arg2.length) + ceil32(return_data.size) + 192]
    mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = arg2.length
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = 24 * 10^9 * 24 * 3600
    require ext_code.size(arg1)
    call arg1.mem[mem[64] len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len 64], address(this.address), 24 * 10^9 * 24 * 3600, mem[mem[64] + 132 len (32 * arg2.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _106 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _107 = mem[_106]
    require mem[_106] <= test266151307()
    require _106 + return_data.size > _106 + mem[_106] + 31
    _108 = mem[_106 + mem[_106]]
    require mem[_106 + mem[_106]] <= test266151307()
    require (32 * mem[_106 + mem[_106]]) + 32 >= 0 and _106 + ceil32(return_data.size) + (32 * mem[_106 + mem[_106]]) + 32 <= test266151307()
    mem[64] = _106 + ceil32(return_data.size) + (32 * mem[_106 + mem[_106]]) + 32
    mem[_106 + ceil32(return_data.size)] = _108
    require return_data.size >= _107 + (32 * _108) + 32
    mem[_106 + ceil32(return_data.size) + 32 len 32 * _108] = mem[_106 + _107 + 32 len 32 * _108]
    require 1 < arg2.length
    _121 = mem[160]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_121))
    staticcall address(_121).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _124 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_124] < _86:
        revert with 0, 'Not enough return from swap'
}

function elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 36)] + 67
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 >= 96 and (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 <= test266151307()
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + (128 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        require arg4 + arg4.length + -s + 36 >= 128
        _287 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_287] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_287 + 32] = cd[(s + 32)]
        mem[_287 + 64] = cd[(s + 64)]
        mem[_287 + 96] = cd[(s + 96)]
        mem[t] = _287
        s = s + 128
        t = t + 32
        idx = idx + 1
        continue 
    require 0 < mem[96]
    if mem[mem[128] + 12 len 20] != msg.sender:
        revert with 0, 'Unauthorized'
    if not arg2:
        _566 = mem[96]
        idx = 1
        while idx < _566:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _590 = mem[(32 * idx) + 128]
                    _606 = mem[mem[(32 * idx) + 128]]
                    _607 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_638] == mem[_638 + 12 len 20]
                    if mem[_638 + 12 len 20] == address(_607):
                        _679 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _731 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_731] == mem[_731 + 12 len 20]
                        if mem[_731 + 12 len 20] != address(_679):
                            _788 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_788] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _788 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _782 = mem[_590 + 96]
                            _786 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_786] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _782
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _786 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _782, address(this.address), 128, 0
                    else:
                        _671 = mem[_590 + 96]
                        _683 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _732 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_732] == mem[_732 + 12 len 20]
                        if mem[_732 + 12 len 20] != address(_683):
                            _792 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_792] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _792 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _671, 0, address(this.address), 128, 0
                        else:
                            _783 = mem[_590 + 96]
                            _790 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_790] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = _783
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _790 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _671, _783, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _592 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _611 = mem[(32 * idx) + 128]
                    _626 = mem[mem[(32 * idx) + 128]]
                    _627 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_644] == mem[_644 + 12 len 20]
                    if mem[_644 + 12 len 20] == address(_627):
                        _703 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _749 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_749] == mem[_749 + 12 len 20]
                        if mem[_749 + 12 len 20] != address(_703):
                            _812 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_812] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _812 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_592), 128, 0
                        else:
                            _794 = mem[_611 + 96]
                            _810 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_810] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _794
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _810 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _794, address(_592), 128, 0
                    else:
                        _687 = mem[_611 + 96]
                        _707 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _750 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_750] == mem[_750 + 12 len 20]
                        if mem[_750 + 12 len 20] != address(_707):
                            _816 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_816] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _816 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _687, 0, address(_592), 128, 0
                        else:
                            _795 = mem[_611 + 96]
                            _814 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_814] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = _795
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _814 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _687, _795, address(_592), 128, 0
            else:
                require 1 < mem[96]
                _579 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _613 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _613
                require ext_code.size(address(_579))
                call address(_579).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _613
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _647 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_647] == bool(mem[_647])
                if not mem[_647]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _711 = mem[(32 * idx) + 128]
                    _733 = mem[mem[(32 * idx) + 128]]
                    _734 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_767] == mem[_767 + 12 len 20]
                    if mem[_767 + 12 len 20] == address(_734):
                        _836 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_886] == mem[_886 + 12 len 20]
                        if mem[_886 + 12 len 20] != address(_836):
                            _944 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_944] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _944 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _938 = mem[_711 + 96]
                            _942 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_942] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _938
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _942 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _938, address(this.address), 128, 0
                    else:
                        _818 = mem[_711 + 96]
                        _840 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _887 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_887] == mem[_887 + 12 len 20]
                        if mem[_887 + 12 len 20] != address(_840):
                            _948 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_948] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _948 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _818, 0, address(this.address), 128, 0
                        else:
                            _939 = mem[_711 + 96]
                            _946 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_946] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = _939
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _946 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _818, _939, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _713 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _738 = mem[(32 * idx) + 128]
                    _751 = mem[mem[(32 * idx) + 128]]
                    _752 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_774] == mem[_774 + 12 len 20]
                    if mem[_774 + 12 len 20] == address(_752):
                        _862 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _898 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_898] == mem[_898 + 12 len 20]
                        if mem[_898 + 12 len 20] != address(_862):
                            _968 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_968] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _968 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_713), 128, 0
                        else:
                            _950 = mem[_738 + 96]
                            _966 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_966] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _950
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _966 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _950, address(_713), 128, 0
                    else:
                        _844 = mem[_738 + 96]
                        _866 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _899 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_899] == mem[_899 + 12 len 20]
                        if mem[_899 + 12 len 20] != address(_866):
                            _972 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_972] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _972 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _844, 0, address(_713), 128, 0
                        else:
                            _951 = mem[_738 + 96]
                            _970 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_970] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = _951
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _970 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _844, _951, address(_713), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _566 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _636 = mem[_604]
            require mem[_604] == mem[_604 + 12 len 20]
            require 0 < mem[96]
            _657 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _657
            require ext_code.size(address(_636))
            call address(_636).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _657
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _702 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_702] == bool(mem[_702])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _605 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _637 = mem[_605]
            require mem[_605] == mem[_605 + 12 len 20]
            require 0 < mem[96]
            _665 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _665
            require ext_code.size(address(_637))
            call address(_637).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _665
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _730 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_730] == bool(mem[_730])
    else:
        require not arg3
        _567 = mem[96]
        idx = 1
        while idx < _567:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _597 = mem[(32 * idx) + 128]
                    _617 = mem[mem[(32 * idx) + 128]]
                    _618 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_642] == mem[_642 + 12 len 20]
                    if mem[_642 + 12 len 20] == address(_618):
                        _691 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _740 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_740] == mem[_740 + 12 len 20]
                        if mem[_740 + 12 len 20] != address(_691):
                            _798 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_798] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _798 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _784 = mem[_597 + 96]
                            _796 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_796] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _784
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _796 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _784, address(this.address), 128, 0
                    else:
                        _675 = mem[_597 + 96]
                        _695 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _741 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_741] == mem[_741 + 12 len 20]
                        if mem[_741 + 12 len 20] != address(_695):
                            _802 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_802] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _802 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _675, 0, address(this.address), 128, 0
                        else:
                            _785 = mem[_597 + 96]
                            _800 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_800] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = _785
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _800 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _675, _785, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _599 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _622 = mem[(32 * idx) + 128]
                    _631 = mem[mem[(32 * idx) + 128]]
                    _632 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_645] == mem[_645 + 12 len 20]
                    if mem[_645 + 12 len 20] == address(_632):
                        _717 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _757 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_757] == mem[_757 + 12 len 20]
                        if mem[_757 + 12 len 20] != address(_717):
                            _825 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_825] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _825 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_599), 128, 0
                        else:
                            _804 = mem[_622 + 96]
                            _823 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_823] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _804
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _823 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _804, address(_599), 128, 0
                    else:
                        _699 = mem[_622 + 96]
                        _721 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _758 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_758] == mem[_758 + 12 len 20]
                        if mem[_758 + 12 len 20] != address(_721):
                            _829 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_829] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _829 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _699, 0, address(_599), 128, 0
                        else:
                            _805 = mem[_622 + 96]
                            _827 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_827] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = _805
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _827 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _699, _805, address(_599), 128, 0
            else:
                require 1 < mem[96]
                _588 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _624 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _624
                require ext_code.size(address(_588))
                call address(_588).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _624
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _649 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_649] == bool(mem[_649])
                if not mem[_649]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _725 = mem[(32 * idx) + 128]
                    _742 = mem[mem[(32 * idx) + 128]]
                    _743 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _771 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_771] == mem[_771 + 12 len 20]
                    if mem[_771 + 12 len 20] == address(_743):
                        _849 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _892 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_892] == mem[_892 + 12 len 20]
                        if mem[_892 + 12 len 20] != address(_849):
                            _954 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_954] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _954 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _940 = mem[_725 + 96]
                            _952 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_952] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _940
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _952 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _940, address(this.address), 128, 0
                    else:
                        _831 = mem[_725 + 96]
                        _853 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _893 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_893] == mem[_893 + 12 len 20]
                        if mem[_893 + 12 len 20] != address(_853):
                            _958 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_958] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _958 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _831, 0, address(this.address), 128, 0
                        else:
                            _941 = mem[_725 + 96]
                            _956 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_956] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = _941
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _956 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _831, _941, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _727 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _747 = mem[(32 * idx) + 128]
                    _759 = mem[mem[(32 * idx) + 128]]
                    _760 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _777 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_777] == mem[_777 + 12 len 20]
                    if mem[_777 + 12 len 20] == address(_760):
                        _874 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_904] == mem[_904 + 12 len 20]
                        if mem[_904 + 12 len 20] != address(_874):
                            _980 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_980] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _980 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_727), 128, 0
                        else:
                            _960 = mem[_747 + 96]
                            _978 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_978] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _960
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _978 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _960, address(_727), 128, 0
                    else:
                        _857 = mem[_747 + 96]
                        _878 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _905 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_905] == mem[_905 + 12 len 20]
                        if mem[_905 + 12 len 20] != address(_878):
                            _984 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_984] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _984 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _857, 0, address(_727), 128, 0
                        else:
                            _961 = mem[_747 + 96]
                            _982 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_982] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = _961
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _982 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _857, _961, address(_727), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _567 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _615 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _640 = mem[_615]
            require mem[_615] == mem[_615 + 12 len 20]
            require 0 < mem[96]
            _661 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _661
            require ext_code.size(address(_640))
            call address(_640).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _661
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _716 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_716] == bool(mem[_716])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _641 = mem[_616]
            require mem[_616] == mem[_616 + 12 len 20]
            require 0 < mem[96]
            _668 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _668
            require ext_code.size(address(_641))
            call address(_641).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _668
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _739 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_739] == bool(mem[_739])
}

function zeroCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 36)] + 67
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 >= 96 and (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 <= test266151307()
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + (128 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        require arg4 + arg4.length + -s + 36 >= 128
        _287 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_287] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_287 + 32] = cd[(s + 32)]
        mem[_287 + 64] = cd[(s + 64)]
        mem[_287 + 96] = cd[(s + 96)]
        mem[t] = _287
        s = s + 128
        t = t + 32
        idx = idx + 1
        continue 
    require 0 < mem[96]
    if mem[mem[128] + 12 len 20] != msg.sender:
        revert with 0, 'Unauthorized'
    if not arg2:
        _566 = mem[96]
        idx = 1
        while idx < _566:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _590 = mem[(32 * idx) + 128]
                    _606 = mem[mem[(32 * idx) + 128]]
                    _607 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_638] == mem[_638 + 12 len 20]
                    if mem[_638 + 12 len 20] == address(_607):
                        _679 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _731 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_731] == mem[_731 + 12 len 20]
                        if mem[_731 + 12 len 20] != address(_679):
                            _788 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_788] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _788 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _782 = mem[_590 + 96]
                            _786 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_786] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _782
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _786 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _782, address(this.address), 128, 0
                    else:
                        _671 = mem[_590 + 96]
                        _683 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _732 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_732] == mem[_732 + 12 len 20]
                        if mem[_732 + 12 len 20] != address(_683):
                            _792 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_792] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _792 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _671, 0, address(this.address), 128, 0
                        else:
                            _783 = mem[_590 + 96]
                            _790 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_790] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = _783
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _790 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _671, _783, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _592 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _611 = mem[(32 * idx) + 128]
                    _626 = mem[mem[(32 * idx) + 128]]
                    _627 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_644] == mem[_644 + 12 len 20]
                    if mem[_644 + 12 len 20] == address(_627):
                        _703 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _749 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_749] == mem[_749 + 12 len 20]
                        if mem[_749 + 12 len 20] != address(_703):
                            _812 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_812] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _812 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_592), 128, 0
                        else:
                            _794 = mem[_611 + 96]
                            _810 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_810] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _794
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _810 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _794, address(_592), 128, 0
                    else:
                        _687 = mem[_611 + 96]
                        _707 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _750 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_750] == mem[_750 + 12 len 20]
                        if mem[_750 + 12 len 20] != address(_707):
                            _816 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_816] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _816 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _687, 0, address(_592), 128, 0
                        else:
                            _795 = mem[_611 + 96]
                            _814 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_814] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = _795
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _814 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _687, _795, address(_592), 128, 0
            else:
                require 1 < mem[96]
                _579 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _613 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _613
                require ext_code.size(address(_579))
                call address(_579).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _613
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _647 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_647] == bool(mem[_647])
                if not mem[_647]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _711 = mem[(32 * idx) + 128]
                    _733 = mem[mem[(32 * idx) + 128]]
                    _734 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_767] == mem[_767 + 12 len 20]
                    if mem[_767 + 12 len 20] == address(_734):
                        _836 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_886] == mem[_886 + 12 len 20]
                        if mem[_886 + 12 len 20] != address(_836):
                            _944 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_944] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _944 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _938 = mem[_711 + 96]
                            _942 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_942] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _938
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _942 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _938, address(this.address), 128, 0
                    else:
                        _818 = mem[_711 + 96]
                        _840 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _887 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_887] == mem[_887 + 12 len 20]
                        if mem[_887 + 12 len 20] != address(_840):
                            _948 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_948] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _948 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _818, 0, address(this.address), 128, 0
                        else:
                            _939 = mem[_711 + 96]
                            _946 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_946] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = _939
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _946 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _818, _939, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _713 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _738 = mem[(32 * idx) + 128]
                    _751 = mem[mem[(32 * idx) + 128]]
                    _752 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_774] == mem[_774 + 12 len 20]
                    if mem[_774 + 12 len 20] == address(_752):
                        _862 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _898 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_898] == mem[_898 + 12 len 20]
                        if mem[_898 + 12 len 20] != address(_862):
                            _968 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_968] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _968 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_713), 128, 0
                        else:
                            _950 = mem[_738 + 96]
                            _966 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_966] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _950
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _966 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _950, address(_713), 128, 0
                    else:
                        _844 = mem[_738 + 96]
                        _866 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _899 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_899] == mem[_899 + 12 len 20]
                        if mem[_899 + 12 len 20] != address(_866):
                            _972 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_972] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _972 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _844, 0, address(_713), 128, 0
                        else:
                            _951 = mem[_738 + 96]
                            _970 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_970] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = _951
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _970 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _844, _951, address(_713), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _566 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _636 = mem[_604]
            require mem[_604] == mem[_604 + 12 len 20]
            require 0 < mem[96]
            _657 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _657
            require ext_code.size(address(_636))
            call address(_636).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _657
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _702 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_702] == bool(mem[_702])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _605 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _637 = mem[_605]
            require mem[_605] == mem[_605 + 12 len 20]
            require 0 < mem[96]
            _665 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _665
            require ext_code.size(address(_637))
            call address(_637).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _665
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _730 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_730] == bool(mem[_730])
    else:
        require not arg3
        _567 = mem[96]
        idx = 1
        while idx < _567:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _597 = mem[(32 * idx) + 128]
                    _617 = mem[mem[(32 * idx) + 128]]
                    _618 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_642] == mem[_642 + 12 len 20]
                    if mem[_642 + 12 len 20] == address(_618):
                        _691 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _740 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_740] == mem[_740 + 12 len 20]
                        if mem[_740 + 12 len 20] != address(_691):
                            _798 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_798] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _798 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _784 = mem[_597 + 96]
                            _796 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_796] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _784
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _796 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _784, address(this.address), 128, 0
                    else:
                        _675 = mem[_597 + 96]
                        _695 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _741 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_741] == mem[_741 + 12 len 20]
                        if mem[_741 + 12 len 20] != address(_695):
                            _802 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_802] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _802 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _675, 0, address(this.address), 128, 0
                        else:
                            _785 = mem[_597 + 96]
                            _800 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_800] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = _785
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _800 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _675, _785, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _599 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _622 = mem[(32 * idx) + 128]
                    _631 = mem[mem[(32 * idx) + 128]]
                    _632 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_645] == mem[_645 + 12 len 20]
                    if mem[_645 + 12 len 20] == address(_632):
                        _717 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _757 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_757] == mem[_757 + 12 len 20]
                        if mem[_757 + 12 len 20] != address(_717):
                            _825 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_825] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _825 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_599), 128, 0
                        else:
                            _804 = mem[_622 + 96]
                            _823 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_823] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _804
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _823 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _804, address(_599), 128, 0
                    else:
                        _699 = mem[_622 + 96]
                        _721 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _758 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_758] == mem[_758 + 12 len 20]
                        if mem[_758 + 12 len 20] != address(_721):
                            _829 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_829] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _829 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _699, 0, address(_599), 128, 0
                        else:
                            _805 = mem[_622 + 96]
                            _827 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_827] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = _805
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _827 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _699, _805, address(_599), 128, 0
            else:
                require 1 < mem[96]
                _588 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _624 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _624
                require ext_code.size(address(_588))
                call address(_588).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _624
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _649 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_649] == bool(mem[_649])
                if not mem[_649]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _725 = mem[(32 * idx) + 128]
                    _742 = mem[mem[(32 * idx) + 128]]
                    _743 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _771 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_771] == mem[_771 + 12 len 20]
                    if mem[_771 + 12 len 20] == address(_743):
                        _849 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _892 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_892] == mem[_892 + 12 len 20]
                        if mem[_892 + 12 len 20] != address(_849):
                            _954 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_954] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _954 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _940 = mem[_725 + 96]
                            _952 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_952] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _940
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _952 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _940, address(this.address), 128, 0
                    else:
                        _831 = mem[_725 + 96]
                        _853 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _893 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_893] == mem[_893 + 12 len 20]
                        if mem[_893 + 12 len 20] != address(_853):
                            _958 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_958] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _958 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _831, 0, address(this.address), 128, 0
                        else:
                            _941 = mem[_725 + 96]
                            _956 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_956] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = _941
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _956 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _831, _941, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _727 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _747 = mem[(32 * idx) + 128]
                    _759 = mem[mem[(32 * idx) + 128]]
                    _760 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _777 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_777] == mem[_777 + 12 len 20]
                    if mem[_777 + 12 len 20] == address(_760):
                        _874 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_904] == mem[_904 + 12 len 20]
                        if mem[_904 + 12 len 20] != address(_874):
                            _980 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_980] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _980 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_727), 128, 0
                        else:
                            _960 = mem[_747 + 96]
                            _978 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_978] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _960
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _978 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _960, address(_727), 128, 0
                    else:
                        _857 = mem[_747 + 96]
                        _878 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _905 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_905] == mem[_905 + 12 len 20]
                        if mem[_905 + 12 len 20] != address(_878):
                            _984 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_984] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _984 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _857, 0, address(_727), 128, 0
                        else:
                            _961 = mem[_747 + 96]
                            _982 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_982] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = _961
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _982 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _857, _961, address(_727), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _567 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _615 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _640 = mem[_615]
            require mem[_615] == mem[_615 + 12 len 20]
            require 0 < mem[96]
            _661 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _661
            require ext_code.size(address(_640))
            call address(_640).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _661
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _716 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_716] == bool(mem[_716])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _641 = mem[_616]
            require mem[_616] == mem[_616 + 12 len 20]
            require 0 < mem[96]
            _668 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _668
            require ext_code.size(address(_641))
            call address(_641).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _668
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _739 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_739] == bool(mem[_739])
}

function oliveCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 36)] + 67
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 >= 96 and (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 <= test266151307()
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + (128 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        require arg4 + arg4.length + -s + 36 >= 128
        _287 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_287] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_287 + 32] = cd[(s + 32)]
        mem[_287 + 64] = cd[(s + 64)]
        mem[_287 + 96] = cd[(s + 96)]
        mem[t] = _287
        s = s + 128
        t = t + 32
        idx = idx + 1
        continue 
    require 0 < mem[96]
    if mem[mem[128] + 12 len 20] != msg.sender:
        revert with 0, 'Unauthorized'
    if not arg2:
        _566 = mem[96]
        idx = 1
        while idx < _566:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _590 = mem[(32 * idx) + 128]
                    _606 = mem[mem[(32 * idx) + 128]]
                    _607 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_638] == mem[_638 + 12 len 20]
                    if mem[_638 + 12 len 20] == address(_607):
                        _679 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _731 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_731] == mem[_731 + 12 len 20]
                        if mem[_731 + 12 len 20] != address(_679):
                            _788 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_788] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _788 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _782 = mem[_590 + 96]
                            _786 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_786] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _782
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _786 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _782, address(this.address), 128, 0
                    else:
                        _671 = mem[_590 + 96]
                        _683 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _732 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_732] == mem[_732 + 12 len 20]
                        if mem[_732 + 12 len 20] != address(_683):
                            _792 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_792] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _792 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _671, 0, address(this.address), 128, 0
                        else:
                            _783 = mem[_590 + 96]
                            _790 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_790] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = _783
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _790 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _671, _783, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _592 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _611 = mem[(32 * idx) + 128]
                    _626 = mem[mem[(32 * idx) + 128]]
                    _627 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_644] == mem[_644 + 12 len 20]
                    if mem[_644 + 12 len 20] == address(_627):
                        _703 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _749 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_749] == mem[_749 + 12 len 20]
                        if mem[_749 + 12 len 20] != address(_703):
                            _812 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_812] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _812 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_592), 128, 0
                        else:
                            _794 = mem[_611 + 96]
                            _810 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_810] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _794
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _810 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _794, address(_592), 128, 0
                    else:
                        _687 = mem[_611 + 96]
                        _707 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _750 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_750] == mem[_750 + 12 len 20]
                        if mem[_750 + 12 len 20] != address(_707):
                            _816 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_816] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _816 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _687, 0, address(_592), 128, 0
                        else:
                            _795 = mem[_611 + 96]
                            _814 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_814] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = _795
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _814 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _687, _795, address(_592), 128, 0
            else:
                require 1 < mem[96]
                _579 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _613 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _613
                require ext_code.size(address(_579))
                call address(_579).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _613
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _647 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_647] == bool(mem[_647])
                if not mem[_647]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _711 = mem[(32 * idx) + 128]
                    _733 = mem[mem[(32 * idx) + 128]]
                    _734 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_767] == mem[_767 + 12 len 20]
                    if mem[_767 + 12 len 20] == address(_734):
                        _836 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_886] == mem[_886 + 12 len 20]
                        if mem[_886 + 12 len 20] != address(_836):
                            _944 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_944] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _944 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _938 = mem[_711 + 96]
                            _942 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_942] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _938
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _942 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _938, address(this.address), 128, 0
                    else:
                        _818 = mem[_711 + 96]
                        _840 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _887 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_887] == mem[_887 + 12 len 20]
                        if mem[_887 + 12 len 20] != address(_840):
                            _948 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_948] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _948 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _818, 0, address(this.address), 128, 0
                        else:
                            _939 = mem[_711 + 96]
                            _946 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_946] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = _939
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _946 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _818, _939, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _713 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _738 = mem[(32 * idx) + 128]
                    _751 = mem[mem[(32 * idx) + 128]]
                    _752 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_774] == mem[_774 + 12 len 20]
                    if mem[_774 + 12 len 20] == address(_752):
                        _862 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _898 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_898] == mem[_898 + 12 len 20]
                        if mem[_898 + 12 len 20] != address(_862):
                            _968 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_968] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _968 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_713), 128, 0
                        else:
                            _950 = mem[_738 + 96]
                            _966 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_966] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _950
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _966 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _950, address(_713), 128, 0
                    else:
                        _844 = mem[_738 + 96]
                        _866 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _899 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_899] == mem[_899 + 12 len 20]
                        if mem[_899 + 12 len 20] != address(_866):
                            _972 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_972] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _972 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _844, 0, address(_713), 128, 0
                        else:
                            _951 = mem[_738 + 96]
                            _970 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_970] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = _951
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _970 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _844, _951, address(_713), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _566 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _636 = mem[_604]
            require mem[_604] == mem[_604 + 12 len 20]
            require 0 < mem[96]
            _657 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _657
            require ext_code.size(address(_636))
            call address(_636).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _657
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _702 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_702] == bool(mem[_702])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _605 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _637 = mem[_605]
            require mem[_605] == mem[_605 + 12 len 20]
            require 0 < mem[96]
            _665 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _665
            require ext_code.size(address(_637))
            call address(_637).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _665
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _730 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_730] == bool(mem[_730])
    else:
        require not arg3
        _567 = mem[96]
        idx = 1
        while idx < _567:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _597 = mem[(32 * idx) + 128]
                    _617 = mem[mem[(32 * idx) + 128]]
                    _618 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_642] == mem[_642 + 12 len 20]
                    if mem[_642 + 12 len 20] == address(_618):
                        _691 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _740 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_740] == mem[_740 + 12 len 20]
                        if mem[_740 + 12 len 20] != address(_691):
                            _798 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_798] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _798 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _784 = mem[_597 + 96]
                            _796 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_796] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _784
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _796 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _784, address(this.address), 128, 0
                    else:
                        _675 = mem[_597 + 96]
                        _695 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _741 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_741] == mem[_741 + 12 len 20]
                        if mem[_741 + 12 len 20] != address(_695):
                            _802 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_802] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _802 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _675, 0, address(this.address), 128, 0
                        else:
                            _785 = mem[_597 + 96]
                            _800 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_800] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = _785
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _800 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _675, _785, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _599 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _622 = mem[(32 * idx) + 128]
                    _631 = mem[mem[(32 * idx) + 128]]
                    _632 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_645] == mem[_645 + 12 len 20]
                    if mem[_645 + 12 len 20] == address(_632):
                        _717 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _757 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_757] == mem[_757 + 12 len 20]
                        if mem[_757 + 12 len 20] != address(_717):
                            _825 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_825] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _825 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_599), 128, 0
                        else:
                            _804 = mem[_622 + 96]
                            _823 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_823] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _804
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _823 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _804, address(_599), 128, 0
                    else:
                        _699 = mem[_622 + 96]
                        _721 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _758 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_758] == mem[_758 + 12 len 20]
                        if mem[_758 + 12 len 20] != address(_721):
                            _829 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_829] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _829 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _699, 0, address(_599), 128, 0
                        else:
                            _805 = mem[_622 + 96]
                            _827 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_827] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = _805
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _827 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _699, _805, address(_599), 128, 0
            else:
                require 1 < mem[96]
                _588 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _624 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _624
                require ext_code.size(address(_588))
                call address(_588).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _624
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _649 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_649] == bool(mem[_649])
                if not mem[_649]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _725 = mem[(32 * idx) + 128]
                    _742 = mem[mem[(32 * idx) + 128]]
                    _743 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _771 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_771] == mem[_771 + 12 len 20]
                    if mem[_771 + 12 len 20] == address(_743):
                        _849 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _892 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_892] == mem[_892 + 12 len 20]
                        if mem[_892 + 12 len 20] != address(_849):
                            _954 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_954] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _954 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _940 = mem[_725 + 96]
                            _952 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_952] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _940
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _952 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _940, address(this.address), 128, 0
                    else:
                        _831 = mem[_725 + 96]
                        _853 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _893 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_893] == mem[_893 + 12 len 20]
                        if mem[_893 + 12 len 20] != address(_853):
                            _958 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_958] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _958 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _831, 0, address(this.address), 128, 0
                        else:
                            _941 = mem[_725 + 96]
                            _956 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_956] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = _941
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _956 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _831, _941, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _727 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _747 = mem[(32 * idx) + 128]
                    _759 = mem[mem[(32 * idx) + 128]]
                    _760 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _777 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_777] == mem[_777 + 12 len 20]
                    if mem[_777 + 12 len 20] == address(_760):
                        _874 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_904] == mem[_904 + 12 len 20]
                        if mem[_904 + 12 len 20] != address(_874):
                            _980 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_980] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _980 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_727), 128, 0
                        else:
                            _960 = mem[_747 + 96]
                            _978 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_978] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _960
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _978 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _960, address(_727), 128, 0
                    else:
                        _857 = mem[_747 + 96]
                        _878 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _905 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_905] == mem[_905 + 12 len 20]
                        if mem[_905 + 12 len 20] != address(_878):
                            _984 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_984] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _984 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _857, 0, address(_727), 128, 0
                        else:
                            _961 = mem[_747 + 96]
                            _982 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_982] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = _961
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _982 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _857, _961, address(_727), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _567 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _615 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _640 = mem[_615]
            require mem[_615] == mem[_615 + 12 len 20]
            require 0 < mem[96]
            _661 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _661
            require ext_code.size(address(_640))
            call address(_640).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _661
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _716 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_716] == bool(mem[_716])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _641 = mem[_616]
            require mem[_616] == mem[_616 + 12 len 20]
            require 0 < mem[96]
            _668 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _668
            require ext_code.size(address(_641))
            call address(_641).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _668
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _739 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_739] == bool(mem[_739])
}

function lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 36)] + 67
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 >= 96 and (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 <= test266151307()
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + (128 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        require arg4 + arg4.length + -s + 36 >= 128
        _287 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_287] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_287 + 32] = cd[(s + 32)]
        mem[_287 + 64] = cd[(s + 64)]
        mem[_287 + 96] = cd[(s + 96)]
        mem[t] = _287
        s = s + 128
        t = t + 32
        idx = idx + 1
        continue 
    require 0 < mem[96]
    if mem[mem[128] + 12 len 20] != msg.sender:
        revert with 0, 'Unauthorized'
    if not arg2:
        _566 = mem[96]
        idx = 1
        while idx < _566:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _590 = mem[(32 * idx) + 128]
                    _606 = mem[mem[(32 * idx) + 128]]
                    _607 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_638] == mem[_638 + 12 len 20]
                    if mem[_638 + 12 len 20] == address(_607):
                        _679 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _731 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_731] == mem[_731 + 12 len 20]
                        if mem[_731 + 12 len 20] != address(_679):
                            _788 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_788] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _788 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _782 = mem[_590 + 96]
                            _786 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_786] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _782
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _786 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _782, address(this.address), 128, 0
                    else:
                        _671 = mem[_590 + 96]
                        _683 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _732 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_732] == mem[_732 + 12 len 20]
                        if mem[_732 + 12 len 20] != address(_683):
                            _792 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_792] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _792 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _671, 0, address(this.address), 128, 0
                        else:
                            _783 = mem[_590 + 96]
                            _790 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_790] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = _783
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _790 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _671, _783, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _592 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _611 = mem[(32 * idx) + 128]
                    _626 = mem[mem[(32 * idx) + 128]]
                    _627 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_644] == mem[_644 + 12 len 20]
                    if mem[_644 + 12 len 20] == address(_627):
                        _703 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _749 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_749] == mem[_749 + 12 len 20]
                        if mem[_749 + 12 len 20] != address(_703):
                            _812 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_812] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _812 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_592), 128, 0
                        else:
                            _794 = mem[_611 + 96]
                            _810 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_810] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _794
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _810 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _794, address(_592), 128, 0
                    else:
                        _687 = mem[_611 + 96]
                        _707 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _750 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_750] == mem[_750 + 12 len 20]
                        if mem[_750 + 12 len 20] != address(_707):
                            _816 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_816] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _816 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _687, 0, address(_592), 128, 0
                        else:
                            _795 = mem[_611 + 96]
                            _814 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_814] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = _795
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _814 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _687, _795, address(_592), 128, 0
            else:
                require 1 < mem[96]
                _579 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _613 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _613
                require ext_code.size(address(_579))
                call address(_579).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _613
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _647 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_647] == bool(mem[_647])
                if not mem[_647]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _711 = mem[(32 * idx) + 128]
                    _733 = mem[mem[(32 * idx) + 128]]
                    _734 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_767] == mem[_767 + 12 len 20]
                    if mem[_767 + 12 len 20] == address(_734):
                        _836 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_886] == mem[_886 + 12 len 20]
                        if mem[_886 + 12 len 20] != address(_836):
                            _944 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_944] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _944 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _938 = mem[_711 + 96]
                            _942 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_942] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _938
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _942 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _938, address(this.address), 128, 0
                    else:
                        _818 = mem[_711 + 96]
                        _840 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _887 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_887] == mem[_887 + 12 len 20]
                        if mem[_887 + 12 len 20] != address(_840):
                            _948 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_948] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _948 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _818, 0, address(this.address), 128, 0
                        else:
                            _939 = mem[_711 + 96]
                            _946 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_946] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = _939
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _946 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _818, _939, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _713 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _738 = mem[(32 * idx) + 128]
                    _751 = mem[mem[(32 * idx) + 128]]
                    _752 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_774] == mem[_774 + 12 len 20]
                    if mem[_774 + 12 len 20] == address(_752):
                        _862 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _898 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_898] == mem[_898 + 12 len 20]
                        if mem[_898 + 12 len 20] != address(_862):
                            _968 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_968] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _968 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_713), 128, 0
                        else:
                            _950 = mem[_738 + 96]
                            _966 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_966] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _950
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _966 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _950, address(_713), 128, 0
                    else:
                        _844 = mem[_738 + 96]
                        _866 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _899 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_899] == mem[_899 + 12 len 20]
                        if mem[_899 + 12 len 20] != address(_866):
                            _972 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_972] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _972 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _844, 0, address(_713), 128, 0
                        else:
                            _951 = mem[_738 + 96]
                            _970 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_970] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = _951
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _970 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _844, _951, address(_713), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _566 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _636 = mem[_604]
            require mem[_604] == mem[_604 + 12 len 20]
            require 0 < mem[96]
            _657 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _657
            require ext_code.size(address(_636))
            call address(_636).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _657
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _702 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_702] == bool(mem[_702])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _605 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _637 = mem[_605]
            require mem[_605] == mem[_605 + 12 len 20]
            require 0 < mem[96]
            _665 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _665
            require ext_code.size(address(_637))
            call address(_637).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _665
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _730 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_730] == bool(mem[_730])
    else:
        require not arg3
        _567 = mem[96]
        idx = 1
        while idx < _567:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _597 = mem[(32 * idx) + 128]
                    _617 = mem[mem[(32 * idx) + 128]]
                    _618 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_642] == mem[_642 + 12 len 20]
                    if mem[_642 + 12 len 20] == address(_618):
                        _691 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _740 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_740] == mem[_740 + 12 len 20]
                        if mem[_740 + 12 len 20] != address(_691):
                            _798 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_798] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _798 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _784 = mem[_597 + 96]
                            _796 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_796] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _784
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _796 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _784, address(this.address), 128, 0
                    else:
                        _675 = mem[_597 + 96]
                        _695 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _741 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_741] == mem[_741 + 12 len 20]
                        if mem[_741 + 12 len 20] != address(_695):
                            _802 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_802] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _802 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _675, 0, address(this.address), 128, 0
                        else:
                            _785 = mem[_597 + 96]
                            _800 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_800] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = _785
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _800 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _675, _785, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _599 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _622 = mem[(32 * idx) + 128]
                    _631 = mem[mem[(32 * idx) + 128]]
                    _632 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_645] == mem[_645 + 12 len 20]
                    if mem[_645 + 12 len 20] == address(_632):
                        _717 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _757 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_757] == mem[_757 + 12 len 20]
                        if mem[_757 + 12 len 20] != address(_717):
                            _825 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_825] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _825 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_599), 128, 0
                        else:
                            _804 = mem[_622 + 96]
                            _823 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_823] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _804
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _823 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _804, address(_599), 128, 0
                    else:
                        _699 = mem[_622 + 96]
                        _721 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _758 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_758] == mem[_758 + 12 len 20]
                        if mem[_758 + 12 len 20] != address(_721):
                            _829 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_829] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _829 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _699, 0, address(_599), 128, 0
                        else:
                            _805 = mem[_622 + 96]
                            _827 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_827] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = _805
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _827 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _699, _805, address(_599), 128, 0
            else:
                require 1 < mem[96]
                _588 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _624 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _624
                require ext_code.size(address(_588))
                call address(_588).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _624
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _649 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_649] == bool(mem[_649])
                if not mem[_649]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _725 = mem[(32 * idx) + 128]
                    _742 = mem[mem[(32 * idx) + 128]]
                    _743 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _771 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_771] == mem[_771 + 12 len 20]
                    if mem[_771 + 12 len 20] == address(_743):
                        _849 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _892 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_892] == mem[_892 + 12 len 20]
                        if mem[_892 + 12 len 20] != address(_849):
                            _954 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_954] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _954 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _940 = mem[_725 + 96]
                            _952 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_952] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _940
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _952 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _940, address(this.address), 128, 0
                    else:
                        _831 = mem[_725 + 96]
                        _853 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _893 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_893] == mem[_893 + 12 len 20]
                        if mem[_893 + 12 len 20] != address(_853):
                            _958 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_958] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _958 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _831, 0, address(this.address), 128, 0
                        else:
                            _941 = mem[_725 + 96]
                            _956 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_956] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = _941
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _956 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _831, _941, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _727 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _747 = mem[(32 * idx) + 128]
                    _759 = mem[mem[(32 * idx) + 128]]
                    _760 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _777 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_777] == mem[_777 + 12 len 20]
                    if mem[_777 + 12 len 20] == address(_760):
                        _874 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_904] == mem[_904 + 12 len 20]
                        if mem[_904 + 12 len 20] != address(_874):
                            _980 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_980] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _980 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_727), 128, 0
                        else:
                            _960 = mem[_747 + 96]
                            _978 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_978] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _960
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _978 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _960, address(_727), 128, 0
                    else:
                        _857 = mem[_747 + 96]
                        _878 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _905 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_905] == mem[_905 + 12 len 20]
                        if mem[_905 + 12 len 20] != address(_878):
                            _984 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_984] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _984 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _857, 0, address(_727), 128, 0
                        else:
                            _961 = mem[_747 + 96]
                            _982 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_982] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = _961
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _982 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _857, _961, address(_727), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _567 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _615 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _640 = mem[_615]
            require mem[_615] == mem[_615 + 12 len 20]
            require 0 < mem[96]
            _661 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _661
            require ext_code.size(address(_640))
            call address(_640).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _661
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _716 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_716] == bool(mem[_716])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _641 = mem[_616]
            require mem[_616] == mem[_616 + 12 len 20]
            require 0 < mem[96]
            _668 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _668
            require ext_code.size(address(_641))
            call address(_641).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _668
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _739 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_739] == bool(mem[_739])
}

function yetiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 36)] + 67
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 >= 96 and (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 <= test266151307()
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + (128 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        require arg4 + arg4.length + -s + 36 >= 128
        _287 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_287] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_287 + 32] = cd[(s + 32)]
        mem[_287 + 64] = cd[(s + 64)]
        mem[_287 + 96] = cd[(s + 96)]
        mem[t] = _287
        s = s + 128
        t = t + 32
        idx = idx + 1
        continue 
    require 0 < mem[96]
    if mem[mem[128] + 12 len 20] != msg.sender:
        revert with 0, 'Unauthorized'
    if not arg2:
        _566 = mem[96]
        idx = 1
        while idx < _566:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _590 = mem[(32 * idx) + 128]
                    _606 = mem[mem[(32 * idx) + 128]]
                    _607 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_638] == mem[_638 + 12 len 20]
                    if mem[_638 + 12 len 20] == address(_607):
                        _679 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _731 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_731] == mem[_731 + 12 len 20]
                        if mem[_731 + 12 len 20] != address(_679):
                            _788 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_788] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _788 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _782 = mem[_590 + 96]
                            _786 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_786] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _782
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _786 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _782, address(this.address), 128, 0
                    else:
                        _671 = mem[_590 + 96]
                        _683 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _732 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_732] == mem[_732 + 12 len 20]
                        if mem[_732 + 12 len 20] != address(_683):
                            _792 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_792] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _792 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _671, 0, address(this.address), 128, 0
                        else:
                            _783 = mem[_590 + 96]
                            _790 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_790] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = _783
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _790 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _671, _783, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _592 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _611 = mem[(32 * idx) + 128]
                    _626 = mem[mem[(32 * idx) + 128]]
                    _627 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_644] == mem[_644 + 12 len 20]
                    if mem[_644 + 12 len 20] == address(_627):
                        _703 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _749 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_749] == mem[_749 + 12 len 20]
                        if mem[_749 + 12 len 20] != address(_703):
                            _812 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_812] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _812 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_592), 128, 0
                        else:
                            _794 = mem[_611 + 96]
                            _810 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_810] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _794
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _810 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _794, address(_592), 128, 0
                    else:
                        _687 = mem[_611 + 96]
                        _707 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _750 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_750] == mem[_750 + 12 len 20]
                        if mem[_750 + 12 len 20] != address(_707):
                            _816 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_816] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _816 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _687, 0, address(_592), 128, 0
                        else:
                            _795 = mem[_611 + 96]
                            _814 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_814] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = _795
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _814 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _687, _795, address(_592), 128, 0
            else:
                require 1 < mem[96]
                _579 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _613 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _613
                require ext_code.size(address(_579))
                call address(_579).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _613
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _647 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_647] == bool(mem[_647])
                if not mem[_647]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _711 = mem[(32 * idx) + 128]
                    _733 = mem[mem[(32 * idx) + 128]]
                    _734 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_767] == mem[_767 + 12 len 20]
                    if mem[_767 + 12 len 20] == address(_734):
                        _836 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_886] == mem[_886 + 12 len 20]
                        if mem[_886 + 12 len 20] != address(_836):
                            _944 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_944] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _944 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _938 = mem[_711 + 96]
                            _942 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_942] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _938
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _942 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _938, address(this.address), 128, 0
                    else:
                        _818 = mem[_711 + 96]
                        _840 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _887 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_887] == mem[_887 + 12 len 20]
                        if mem[_887 + 12 len 20] != address(_840):
                            _948 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_948] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _948 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _818, 0, address(this.address), 128, 0
                        else:
                            _939 = mem[_711 + 96]
                            _946 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_946] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = _939
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _946 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _818, _939, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _713 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _738 = mem[(32 * idx) + 128]
                    _751 = mem[mem[(32 * idx) + 128]]
                    _752 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_774] == mem[_774 + 12 len 20]
                    if mem[_774 + 12 len 20] == address(_752):
                        _862 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _898 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_898] == mem[_898 + 12 len 20]
                        if mem[_898 + 12 len 20] != address(_862):
                            _968 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_968] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _968 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_713), 128, 0
                        else:
                            _950 = mem[_738 + 96]
                            _966 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_966] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _950
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _966 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _950, address(_713), 128, 0
                    else:
                        _844 = mem[_738 + 96]
                        _866 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _899 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_899] == mem[_899 + 12 len 20]
                        if mem[_899 + 12 len 20] != address(_866):
                            _972 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_972] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _972 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _844, 0, address(_713), 128, 0
                        else:
                            _951 = mem[_738 + 96]
                            _970 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_970] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = _951
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _970 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _844, _951, address(_713), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _566 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _636 = mem[_604]
            require mem[_604] == mem[_604 + 12 len 20]
            require 0 < mem[96]
            _657 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _657
            require ext_code.size(address(_636))
            call address(_636).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _657
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _702 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_702] == bool(mem[_702])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _605 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _637 = mem[_605]
            require mem[_605] == mem[_605 + 12 len 20]
            require 0 < mem[96]
            _665 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _665
            require ext_code.size(address(_637))
            call address(_637).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _665
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _730 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_730] == bool(mem[_730])
    else:
        require not arg3
        _567 = mem[96]
        idx = 1
        while idx < _567:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _597 = mem[(32 * idx) + 128]
                    _617 = mem[mem[(32 * idx) + 128]]
                    _618 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_642] == mem[_642 + 12 len 20]
                    if mem[_642 + 12 len 20] == address(_618):
                        _691 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _740 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_740] == mem[_740 + 12 len 20]
                        if mem[_740 + 12 len 20] != address(_691):
                            _798 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_798] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _798 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _784 = mem[_597 + 96]
                            _796 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_796] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _784
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _796 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _784, address(this.address), 128, 0
                    else:
                        _675 = mem[_597 + 96]
                        _695 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _741 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_741] == mem[_741 + 12 len 20]
                        if mem[_741 + 12 len 20] != address(_695):
                            _802 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_802] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _802 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _675, 0, address(this.address), 128, 0
                        else:
                            _785 = mem[_597 + 96]
                            _800 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_800] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = _785
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _800 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _675, _785, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _599 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _622 = mem[(32 * idx) + 128]
                    _631 = mem[mem[(32 * idx) + 128]]
                    _632 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_645] == mem[_645 + 12 len 20]
                    if mem[_645 + 12 len 20] == address(_632):
                        _717 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _757 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_757] == mem[_757 + 12 len 20]
                        if mem[_757 + 12 len 20] != address(_717):
                            _825 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_825] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _825 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_599), 128, 0
                        else:
                            _804 = mem[_622 + 96]
                            _823 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_823] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _804
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _823 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _804, address(_599), 128, 0
                    else:
                        _699 = mem[_622 + 96]
                        _721 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _758 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_758] == mem[_758 + 12 len 20]
                        if mem[_758 + 12 len 20] != address(_721):
                            _829 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_829] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _829 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _699, 0, address(_599), 128, 0
                        else:
                            _805 = mem[_622 + 96]
                            _827 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_827] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = _805
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _827 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _699, _805, address(_599), 128, 0
            else:
                require 1 < mem[96]
                _588 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _624 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _624
                require ext_code.size(address(_588))
                call address(_588).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _624
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _649 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_649] == bool(mem[_649])
                if not mem[_649]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _725 = mem[(32 * idx) + 128]
                    _742 = mem[mem[(32 * idx) + 128]]
                    _743 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _771 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_771] == mem[_771 + 12 len 20]
                    if mem[_771 + 12 len 20] == address(_743):
                        _849 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _892 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_892] == mem[_892 + 12 len 20]
                        if mem[_892 + 12 len 20] != address(_849):
                            _954 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_954] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _954 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _940 = mem[_725 + 96]
                            _952 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_952] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _940
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _952 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _940, address(this.address), 128, 0
                    else:
                        _831 = mem[_725 + 96]
                        _853 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _893 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_893] == mem[_893 + 12 len 20]
                        if mem[_893 + 12 len 20] != address(_853):
                            _958 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_958] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _958 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _831, 0, address(this.address), 128, 0
                        else:
                            _941 = mem[_725 + 96]
                            _956 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_956] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = _941
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _956 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _831, _941, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _727 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _747 = mem[(32 * idx) + 128]
                    _759 = mem[mem[(32 * idx) + 128]]
                    _760 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _777 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_777] == mem[_777 + 12 len 20]
                    if mem[_777 + 12 len 20] == address(_760):
                        _874 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_904] == mem[_904 + 12 len 20]
                        if mem[_904 + 12 len 20] != address(_874):
                            _980 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_980] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _980 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_727), 128, 0
                        else:
                            _960 = mem[_747 + 96]
                            _978 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_978] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _960
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _978 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _960, address(_727), 128, 0
                    else:
                        _857 = mem[_747 + 96]
                        _878 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _905 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_905] == mem[_905 + 12 len 20]
                        if mem[_905 + 12 len 20] != address(_878):
                            _984 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_984] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _984 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _857, 0, address(_727), 128, 0
                        else:
                            _961 = mem[_747 + 96]
                            _982 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_982] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = _961
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _982 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _857, _961, address(_727), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _567 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _615 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _640 = mem[_615]
            require mem[_615] == mem[_615 + 12 len 20]
            require 0 < mem[96]
            _661 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _661
            require ext_code.size(address(_640))
            call address(_640).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _661
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _716 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_716] == bool(mem[_716])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _641 = mem[_616]
            require mem[_616] == mem[_616 + 12 len 20]
            require 0 < mem[96]
            _668 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _668
            require ext_code.size(address(_641))
            call address(_641).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _668
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _739 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_739] == bool(mem[_739])
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 36)] + 67
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 >= 96 and (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 <= test266151307()
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + (128 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        require arg4 + arg4.length + -s + 36 >= 128
        _287 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_287] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_287 + 32] = cd[(s + 32)]
        mem[_287 + 64] = cd[(s + 64)]
        mem[_287 + 96] = cd[(s + 96)]
        mem[t] = _287
        s = s + 128
        t = t + 32
        idx = idx + 1
        continue 
    require 0 < mem[96]
    if mem[mem[128] + 12 len 20] != msg.sender:
        revert with 0, 'Unauthorized'
    if not arg2:
        _566 = mem[96]
        idx = 1
        while idx < _566:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _590 = mem[(32 * idx) + 128]
                    _606 = mem[mem[(32 * idx) + 128]]
                    _607 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_638] == mem[_638 + 12 len 20]
                    if mem[_638 + 12 len 20] == address(_607):
                        _679 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _731 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_731] == mem[_731 + 12 len 20]
                        if mem[_731 + 12 len 20] != address(_679):
                            _788 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_788] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _788 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _782 = mem[_590 + 96]
                            _786 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_786] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _782
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _786 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _782, address(this.address), 128, 0
                    else:
                        _671 = mem[_590 + 96]
                        _683 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _732 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_732] == mem[_732 + 12 len 20]
                        if mem[_732 + 12 len 20] != address(_683):
                            _792 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_792] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _792 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _671, 0, address(this.address), 128, 0
                        else:
                            _783 = mem[_590 + 96]
                            _790 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_790] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = _783
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _790 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _671, _783, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _592 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _611 = mem[(32 * idx) + 128]
                    _626 = mem[mem[(32 * idx) + 128]]
                    _627 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_644] == mem[_644 + 12 len 20]
                    if mem[_644 + 12 len 20] == address(_627):
                        _703 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _749 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_749] == mem[_749 + 12 len 20]
                        if mem[_749 + 12 len 20] != address(_703):
                            _812 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_812] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _812 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_592), 128, 0
                        else:
                            _794 = mem[_611 + 96]
                            _810 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_810] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _794
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _810 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _794, address(_592), 128, 0
                    else:
                        _687 = mem[_611 + 96]
                        _707 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _750 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_750] == mem[_750 + 12 len 20]
                        if mem[_750 + 12 len 20] != address(_707):
                            _816 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_816] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _816 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _687, 0, address(_592), 128, 0
                        else:
                            _795 = mem[_611 + 96]
                            _814 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_814] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = _795
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _814 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _687, _795, address(_592), 128, 0
            else:
                require 1 < mem[96]
                _579 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _613 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _613
                require ext_code.size(address(_579))
                call address(_579).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _613
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _647 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_647] == bool(mem[_647])
                if not mem[_647]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _711 = mem[(32 * idx) + 128]
                    _733 = mem[mem[(32 * idx) + 128]]
                    _734 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_767] == mem[_767 + 12 len 20]
                    if mem[_767 + 12 len 20] == address(_734):
                        _836 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_886] == mem[_886 + 12 len 20]
                        if mem[_886 + 12 len 20] != address(_836):
                            _944 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_944] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _944 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _938 = mem[_711 + 96]
                            _942 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_942] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _938
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _942 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _938, address(this.address), 128, 0
                    else:
                        _818 = mem[_711 + 96]
                        _840 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _887 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_887] == mem[_887 + 12 len 20]
                        if mem[_887 + 12 len 20] != address(_840):
                            _948 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_948] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _948 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _818, 0, address(this.address), 128, 0
                        else:
                            _939 = mem[_711 + 96]
                            _946 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_946] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = _939
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _946 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _818, _939, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _713 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _738 = mem[(32 * idx) + 128]
                    _751 = mem[mem[(32 * idx) + 128]]
                    _752 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_774] == mem[_774 + 12 len 20]
                    if mem[_774 + 12 len 20] == address(_752):
                        _862 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _898 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_898] == mem[_898 + 12 len 20]
                        if mem[_898 + 12 len 20] != address(_862):
                            _968 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_968] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _968 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_713), 128, 0
                        else:
                            _950 = mem[_738 + 96]
                            _966 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_966] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _950
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _966 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _950, address(_713), 128, 0
                    else:
                        _844 = mem[_738 + 96]
                        _866 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _899 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_899] == mem[_899 + 12 len 20]
                        if mem[_899 + 12 len 20] != address(_866):
                            _972 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_972] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _972 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _844, 0, address(_713), 128, 0
                        else:
                            _951 = mem[_738 + 96]
                            _970 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_970] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = _951
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _970 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _844, _951, address(_713), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _566 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _636 = mem[_604]
            require mem[_604] == mem[_604 + 12 len 20]
            require 0 < mem[96]
            _657 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _657
            require ext_code.size(address(_636))
            call address(_636).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _657
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _702 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_702] == bool(mem[_702])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _605 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _637 = mem[_605]
            require mem[_605] == mem[_605 + 12 len 20]
            require 0 < mem[96]
            _665 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _665
            require ext_code.size(address(_637))
            call address(_637).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _665
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _730 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_730] == bool(mem[_730])
    else:
        require not arg3
        _567 = mem[96]
        idx = 1
        while idx < _567:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _597 = mem[(32 * idx) + 128]
                    _617 = mem[mem[(32 * idx) + 128]]
                    _618 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_642] == mem[_642 + 12 len 20]
                    if mem[_642 + 12 len 20] == address(_618):
                        _691 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _740 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_740] == mem[_740 + 12 len 20]
                        if mem[_740 + 12 len 20] != address(_691):
                            _798 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_798] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _798 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _784 = mem[_597 + 96]
                            _796 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_796] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _784
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _796 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _784, address(this.address), 128, 0
                    else:
                        _675 = mem[_597 + 96]
                        _695 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _741 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_741] == mem[_741 + 12 len 20]
                        if mem[_741 + 12 len 20] != address(_695):
                            _802 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_802] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _802 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _675, 0, address(this.address), 128, 0
                        else:
                            _785 = mem[_597 + 96]
                            _800 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_800] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = _785
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _800 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _675, _785, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _599 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _622 = mem[(32 * idx) + 128]
                    _631 = mem[mem[(32 * idx) + 128]]
                    _632 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_645] == mem[_645 + 12 len 20]
                    if mem[_645 + 12 len 20] == address(_632):
                        _717 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _757 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_757] == mem[_757 + 12 len 20]
                        if mem[_757 + 12 len 20] != address(_717):
                            _825 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_825] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _825 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_599), 128, 0
                        else:
                            _804 = mem[_622 + 96]
                            _823 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_823] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _804
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _823 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _804, address(_599), 128, 0
                    else:
                        _699 = mem[_622 + 96]
                        _721 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _758 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_758] == mem[_758 + 12 len 20]
                        if mem[_758 + 12 len 20] != address(_721):
                            _829 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_829] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _829 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _699, 0, address(_599), 128, 0
                        else:
                            _805 = mem[_622 + 96]
                            _827 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_827] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = _805
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _827 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _699, _805, address(_599), 128, 0
            else:
                require 1 < mem[96]
                _588 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _624 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _624
                require ext_code.size(address(_588))
                call address(_588).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _624
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _649 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_649] == bool(mem[_649])
                if not mem[_649]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _725 = mem[(32 * idx) + 128]
                    _742 = mem[mem[(32 * idx) + 128]]
                    _743 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _771 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_771] == mem[_771 + 12 len 20]
                    if mem[_771 + 12 len 20] == address(_743):
                        _849 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _892 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_892] == mem[_892 + 12 len 20]
                        if mem[_892 + 12 len 20] != address(_849):
                            _954 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_954] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _954 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _940 = mem[_725 + 96]
                            _952 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_952] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _940
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _952 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _940, address(this.address), 128, 0
                    else:
                        _831 = mem[_725 + 96]
                        _853 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _893 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_893] == mem[_893 + 12 len 20]
                        if mem[_893 + 12 len 20] != address(_853):
                            _958 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_958] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _958 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _831, 0, address(this.address), 128, 0
                        else:
                            _941 = mem[_725 + 96]
                            _956 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_956] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = _941
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _956 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _831, _941, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _727 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _747 = mem[(32 * idx) + 128]
                    _759 = mem[mem[(32 * idx) + 128]]
                    _760 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _777 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_777] == mem[_777 + 12 len 20]
                    if mem[_777 + 12 len 20] == address(_760):
                        _874 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_904] == mem[_904 + 12 len 20]
                        if mem[_904 + 12 len 20] != address(_874):
                            _980 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_980] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _980 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_727), 128, 0
                        else:
                            _960 = mem[_747 + 96]
                            _978 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_978] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _960
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _978 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _960, address(_727), 128, 0
                    else:
                        _857 = mem[_747 + 96]
                        _878 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _905 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_905] == mem[_905 + 12 len 20]
                        if mem[_905 + 12 len 20] != address(_878):
                            _984 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_984] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _984 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _857, 0, address(_727), 128, 0
                        else:
                            _961 = mem[_747 + 96]
                            _982 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_982] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = _961
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _982 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _857, _961, address(_727), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _567 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _615 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _640 = mem[_615]
            require mem[_615] == mem[_615 + 12 len 20]
            require 0 < mem[96]
            _661 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _661
            require ext_code.size(address(_640))
            call address(_640).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _661
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _716 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_716] == bool(mem[_716])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _641 = mem[_616]
            require mem[_616] == mem[_616 + 12 len 20]
            require 0 < mem[96]
            _668 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _668
            require ext_code.size(address(_641))
            call address(_641).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _668
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _739 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_739] == bool(mem[_739])
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 36)] + 67
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 >= 96 and (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 <= test266151307()
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + (128 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        require arg4 + arg4.length + -s + 36 >= 128
        _287 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_287] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_287 + 32] = cd[(s + 32)]
        mem[_287 + 64] = cd[(s + 64)]
        mem[_287 + 96] = cd[(s + 96)]
        mem[t] = _287
        s = s + 128
        t = t + 32
        idx = idx + 1
        continue 
    require 0 < mem[96]
    if mem[mem[128] + 12 len 20] != msg.sender:
        revert with 0, 'Unauthorized'
    if not arg2:
        _566 = mem[96]
        idx = 1
        while idx < _566:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _590 = mem[(32 * idx) + 128]
                    _606 = mem[mem[(32 * idx) + 128]]
                    _607 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_638] == mem[_638 + 12 len 20]
                    if mem[_638 + 12 len 20] == address(_607):
                        _679 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _731 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_731] == mem[_731 + 12 len 20]
                        if mem[_731 + 12 len 20] != address(_679):
                            _788 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_788] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _788 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _782 = mem[_590 + 96]
                            _786 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_786] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _782
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _786 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _782, address(this.address), 128, 0
                    else:
                        _671 = mem[_590 + 96]
                        _683 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _732 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_732] == mem[_732 + 12 len 20]
                        if mem[_732 + 12 len 20] != address(_683):
                            _792 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_792] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _792 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _671, 0, address(this.address), 128, 0
                        else:
                            _783 = mem[_590 + 96]
                            _790 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_790] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = _783
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _790 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _671, _783, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _592 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _611 = mem[(32 * idx) + 128]
                    _626 = mem[mem[(32 * idx) + 128]]
                    _627 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_644] == mem[_644 + 12 len 20]
                    if mem[_644 + 12 len 20] == address(_627):
                        _703 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _749 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_749] == mem[_749 + 12 len 20]
                        if mem[_749 + 12 len 20] != address(_703):
                            _812 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_812] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _812 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_592), 128, 0
                        else:
                            _794 = mem[_611 + 96]
                            _810 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_810] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _794
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _810 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _794, address(_592), 128, 0
                    else:
                        _687 = mem[_611 + 96]
                        _707 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _750 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_750] == mem[_750 + 12 len 20]
                        if mem[_750 + 12 len 20] != address(_707):
                            _816 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_816] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _816 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _687, 0, address(_592), 128, 0
                        else:
                            _795 = mem[_611 + 96]
                            _814 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_814] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = _795
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _814 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _687, _795, address(_592), 128, 0
            else:
                require 1 < mem[96]
                _579 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _613 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _613
                require ext_code.size(address(_579))
                call address(_579).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _613
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _647 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_647] == bool(mem[_647])
                if not mem[_647]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _711 = mem[(32 * idx) + 128]
                    _733 = mem[mem[(32 * idx) + 128]]
                    _734 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_767] == mem[_767 + 12 len 20]
                    if mem[_767 + 12 len 20] == address(_734):
                        _836 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_886] == mem[_886 + 12 len 20]
                        if mem[_886 + 12 len 20] != address(_836):
                            _944 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_944] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _944 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _938 = mem[_711 + 96]
                            _942 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_942] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _938
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _942 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _938, address(this.address), 128, 0
                    else:
                        _818 = mem[_711 + 96]
                        _840 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _887 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_887] == mem[_887 + 12 len 20]
                        if mem[_887 + 12 len 20] != address(_840):
                            _948 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_948] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _948 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _818, 0, address(this.address), 128, 0
                        else:
                            _939 = mem[_711 + 96]
                            _946 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_946] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = _939
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _946 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _818, _939, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _713 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _738 = mem[(32 * idx) + 128]
                    _751 = mem[mem[(32 * idx) + 128]]
                    _752 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_774] == mem[_774 + 12 len 20]
                    if mem[_774 + 12 len 20] == address(_752):
                        _862 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _898 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_898] == mem[_898 + 12 len 20]
                        if mem[_898 + 12 len 20] != address(_862):
                            _968 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_968] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _968 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_713), 128, 0
                        else:
                            _950 = mem[_738 + 96]
                            _966 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_966] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _950
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _966 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _950, address(_713), 128, 0
                    else:
                        _844 = mem[_738 + 96]
                        _866 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _899 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_899] == mem[_899 + 12 len 20]
                        if mem[_899 + 12 len 20] != address(_866):
                            _972 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_972] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _972 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _844, 0, address(_713), 128, 0
                        else:
                            _951 = mem[_738 + 96]
                            _970 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_970] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = _951
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _970 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _844, _951, address(_713), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _566 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _636 = mem[_604]
            require mem[_604] == mem[_604 + 12 len 20]
            require 0 < mem[96]
            _657 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _657
            require ext_code.size(address(_636))
            call address(_636).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _657
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _702 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_702] == bool(mem[_702])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _605 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _637 = mem[_605]
            require mem[_605] == mem[_605 + 12 len 20]
            require 0 < mem[96]
            _665 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _665
            require ext_code.size(address(_637))
            call address(_637).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _665
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _730 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_730] == bool(mem[_730])
    else:
        require not arg3
        _567 = mem[96]
        idx = 1
        while idx < _567:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _597 = mem[(32 * idx) + 128]
                    _617 = mem[mem[(32 * idx) + 128]]
                    _618 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_642] == mem[_642 + 12 len 20]
                    if mem[_642 + 12 len 20] == address(_618):
                        _691 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _740 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_740] == mem[_740 + 12 len 20]
                        if mem[_740 + 12 len 20] != address(_691):
                            _798 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_798] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _798 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _784 = mem[_597 + 96]
                            _796 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_796] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _784
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _796 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _784, address(this.address), 128, 0
                    else:
                        _675 = mem[_597 + 96]
                        _695 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _741 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_741] == mem[_741 + 12 len 20]
                        if mem[_741 + 12 len 20] != address(_695):
                            _802 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_802] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _802 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _675, 0, address(this.address), 128, 0
                        else:
                            _785 = mem[_597 + 96]
                            _800 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_800] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = _785
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _800 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _675, _785, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _599 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _622 = mem[(32 * idx) + 128]
                    _631 = mem[mem[(32 * idx) + 128]]
                    _632 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_645] == mem[_645 + 12 len 20]
                    if mem[_645 + 12 len 20] == address(_632):
                        _717 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _757 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_757] == mem[_757 + 12 len 20]
                        if mem[_757 + 12 len 20] != address(_717):
                            _825 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_825] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _825 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_599), 128, 0
                        else:
                            _804 = mem[_622 + 96]
                            _823 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_823] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _804
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _823 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _804, address(_599), 128, 0
                    else:
                        _699 = mem[_622 + 96]
                        _721 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _758 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_758] == mem[_758 + 12 len 20]
                        if mem[_758 + 12 len 20] != address(_721):
                            _829 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_829] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _829 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _699, 0, address(_599), 128, 0
                        else:
                            _805 = mem[_622 + 96]
                            _827 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_827] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = _805
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _827 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _699, _805, address(_599), 128, 0
            else:
                require 1 < mem[96]
                _588 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _624 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _624
                require ext_code.size(address(_588))
                call address(_588).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _624
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _649 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_649] == bool(mem[_649])
                if not mem[_649]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _725 = mem[(32 * idx) + 128]
                    _742 = mem[mem[(32 * idx) + 128]]
                    _743 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _771 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_771] == mem[_771 + 12 len 20]
                    if mem[_771 + 12 len 20] == address(_743):
                        _849 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _892 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_892] == mem[_892 + 12 len 20]
                        if mem[_892 + 12 len 20] != address(_849):
                            _954 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_954] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _954 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _940 = mem[_725 + 96]
                            _952 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_952] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _940
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _952 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _940, address(this.address), 128, 0
                    else:
                        _831 = mem[_725 + 96]
                        _853 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _893 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_893] == mem[_893 + 12 len 20]
                        if mem[_893 + 12 len 20] != address(_853):
                            _958 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_958] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _958 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _831, 0, address(this.address), 128, 0
                        else:
                            _941 = mem[_725 + 96]
                            _956 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_956] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = _941
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _956 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _831, _941, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _727 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _747 = mem[(32 * idx) + 128]
                    _759 = mem[mem[(32 * idx) + 128]]
                    _760 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _777 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_777] == mem[_777 + 12 len 20]
                    if mem[_777 + 12 len 20] == address(_760):
                        _874 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_904] == mem[_904 + 12 len 20]
                        if mem[_904 + 12 len 20] != address(_874):
                            _980 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_980] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _980 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_727), 128, 0
                        else:
                            _960 = mem[_747 + 96]
                            _978 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_978] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _960
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _978 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _960, address(_727), 128, 0
                    else:
                        _857 = mem[_747 + 96]
                        _878 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _905 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_905] == mem[_905 + 12 len 20]
                        if mem[_905 + 12 len 20] != address(_878):
                            _984 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_984] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _984 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _857, 0, address(_727), 128, 0
                        else:
                            _961 = mem[_747 + 96]
                            _982 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_982] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = _961
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _982 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _857, _961, address(_727), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _567 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _615 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _640 = mem[_615]
            require mem[_615] == mem[_615 + 12 len 20]
            require 0 < mem[96]
            _661 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _661
            require ext_code.size(address(_640))
            call address(_640).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _661
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _716 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_716] == bool(mem[_716])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _641 = mem[_616]
            require mem[_616] == mem[_616 + 12 len 20]
            require 0 < mem[96]
            _668 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _668
            require ext_code.size(address(_641))
            call address(_641).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _668
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _739 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_739] == bool(mem[_739])
}

function complusV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 36)] + 67
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 >= 96 and (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 <= test266151307()
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + (128 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        require arg4 + arg4.length + -s + 36 >= 128
        _287 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_287] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_287 + 32] = cd[(s + 32)]
        mem[_287 + 64] = cd[(s + 64)]
        mem[_287 + 96] = cd[(s + 96)]
        mem[t] = _287
        s = s + 128
        t = t + 32
        idx = idx + 1
        continue 
    require 0 < mem[96]
    if mem[mem[128] + 12 len 20] != msg.sender:
        revert with 0, 'Unauthorized'
    if not arg2:
        _566 = mem[96]
        idx = 1
        while idx < _566:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _590 = mem[(32 * idx) + 128]
                    _606 = mem[mem[(32 * idx) + 128]]
                    _607 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_638] == mem[_638 + 12 len 20]
                    if mem[_638 + 12 len 20] == address(_607):
                        _679 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _731 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_731] == mem[_731 + 12 len 20]
                        if mem[_731 + 12 len 20] != address(_679):
                            _788 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_788] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _788 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _782 = mem[_590 + 96]
                            _786 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_786] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _782
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _786 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _782, address(this.address), 128, 0
                    else:
                        _671 = mem[_590 + 96]
                        _683 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _732 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_732] == mem[_732 + 12 len 20]
                        if mem[_732 + 12 len 20] != address(_683):
                            _792 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_792] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _792 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _671, 0, address(this.address), 128, 0
                        else:
                            _783 = mem[_590 + 96]
                            _790 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_790] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = _783
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _790 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _671, _783, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _592 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _611 = mem[(32 * idx) + 128]
                    _626 = mem[mem[(32 * idx) + 128]]
                    _627 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_644] == mem[_644 + 12 len 20]
                    if mem[_644 + 12 len 20] == address(_627):
                        _703 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _749 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_749] == mem[_749 + 12 len 20]
                        if mem[_749 + 12 len 20] != address(_703):
                            _812 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_812] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _812 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_592), 128, 0
                        else:
                            _794 = mem[_611 + 96]
                            _810 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_810] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _794
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _810 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _794, address(_592), 128, 0
                    else:
                        _687 = mem[_611 + 96]
                        _707 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _750 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_750] == mem[_750 + 12 len 20]
                        if mem[_750 + 12 len 20] != address(_707):
                            _816 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_816] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _816 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _687, 0, address(_592), 128, 0
                        else:
                            _795 = mem[_611 + 96]
                            _814 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_814] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = _795
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _814 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _687, _795, address(_592), 128, 0
            else:
                require 1 < mem[96]
                _579 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _613 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _613
                require ext_code.size(address(_579))
                call address(_579).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _613
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _647 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_647] == bool(mem[_647])
                if not mem[_647]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _711 = mem[(32 * idx) + 128]
                    _733 = mem[mem[(32 * idx) + 128]]
                    _734 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_767] == mem[_767 + 12 len 20]
                    if mem[_767 + 12 len 20] == address(_734):
                        _836 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_886] == mem[_886 + 12 len 20]
                        if mem[_886 + 12 len 20] != address(_836):
                            _944 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_944] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _944 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _938 = mem[_711 + 96]
                            _942 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_942] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _938
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _942 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _938, address(this.address), 128, 0
                    else:
                        _818 = mem[_711 + 96]
                        _840 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _887 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_887] == mem[_887 + 12 len 20]
                        if mem[_887 + 12 len 20] != address(_840):
                            _948 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_948] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _948 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _818, 0, address(this.address), 128, 0
                        else:
                            _939 = mem[_711 + 96]
                            _946 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_946] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = _939
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _946 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _818, _939, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _713 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _738 = mem[(32 * idx) + 128]
                    _751 = mem[mem[(32 * idx) + 128]]
                    _752 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_774] == mem[_774 + 12 len 20]
                    if mem[_774 + 12 len 20] == address(_752):
                        _862 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _898 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_898] == mem[_898 + 12 len 20]
                        if mem[_898 + 12 len 20] != address(_862):
                            _968 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_968] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _968 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_713), 128, 0
                        else:
                            _950 = mem[_738 + 96]
                            _966 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_966] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _950
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _966 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _950, address(_713), 128, 0
                    else:
                        _844 = mem[_738 + 96]
                        _866 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _899 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_899] == mem[_899 + 12 len 20]
                        if mem[_899 + 12 len 20] != address(_866):
                            _972 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_972] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _972 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _844, 0, address(_713), 128, 0
                        else:
                            _951 = mem[_738 + 96]
                            _970 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_970] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = _951
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _970 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _844, _951, address(_713), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _566 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _636 = mem[_604]
            require mem[_604] == mem[_604 + 12 len 20]
            require 0 < mem[96]
            _657 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _657
            require ext_code.size(address(_636))
            call address(_636).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _657
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _702 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_702] == bool(mem[_702])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _605 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _637 = mem[_605]
            require mem[_605] == mem[_605 + 12 len 20]
            require 0 < mem[96]
            _665 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _665
            require ext_code.size(address(_637))
            call address(_637).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _665
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _730 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_730] == bool(mem[_730])
    else:
        require not arg3
        _567 = mem[96]
        idx = 1
        while idx < _567:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _597 = mem[(32 * idx) + 128]
                    _617 = mem[mem[(32 * idx) + 128]]
                    _618 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_642] == mem[_642 + 12 len 20]
                    if mem[_642 + 12 len 20] == address(_618):
                        _691 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _740 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_740] == mem[_740 + 12 len 20]
                        if mem[_740 + 12 len 20] != address(_691):
                            _798 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_798] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _798 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _784 = mem[_597 + 96]
                            _796 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_796] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _784
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _796 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _784, address(this.address), 128, 0
                    else:
                        _675 = mem[_597 + 96]
                        _695 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _741 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_741] == mem[_741 + 12 len 20]
                        if mem[_741 + 12 len 20] != address(_695):
                            _802 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_802] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _802 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _675, 0, address(this.address), 128, 0
                        else:
                            _785 = mem[_597 + 96]
                            _800 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_800] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = _785
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _800 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _675, _785, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _599 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _622 = mem[(32 * idx) + 128]
                    _631 = mem[mem[(32 * idx) + 128]]
                    _632 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_645] == mem[_645 + 12 len 20]
                    if mem[_645 + 12 len 20] == address(_632):
                        _717 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _757 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_757] == mem[_757 + 12 len 20]
                        if mem[_757 + 12 len 20] != address(_717):
                            _825 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_825] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _825 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_599), 128, 0
                        else:
                            _804 = mem[_622 + 96]
                            _823 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_823] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _804
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _823 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _804, address(_599), 128, 0
                    else:
                        _699 = mem[_622 + 96]
                        _721 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _758 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_758] == mem[_758 + 12 len 20]
                        if mem[_758 + 12 len 20] != address(_721):
                            _829 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_829] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _829 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _699, 0, address(_599), 128, 0
                        else:
                            _805 = mem[_622 + 96]
                            _827 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_827] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = _805
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _827 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _699, _805, address(_599), 128, 0
            else:
                require 1 < mem[96]
                _588 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _624 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _624
                require ext_code.size(address(_588))
                call address(_588).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _624
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _649 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_649] == bool(mem[_649])
                if not mem[_649]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _725 = mem[(32 * idx) + 128]
                    _742 = mem[mem[(32 * idx) + 128]]
                    _743 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _771 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_771] == mem[_771 + 12 len 20]
                    if mem[_771 + 12 len 20] == address(_743):
                        _849 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _892 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_892] == mem[_892 + 12 len 20]
                        if mem[_892 + 12 len 20] != address(_849):
                            _954 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_954] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _954 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _940 = mem[_725 + 96]
                            _952 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_952] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _940
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _952 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _940, address(this.address), 128, 0
                    else:
                        _831 = mem[_725 + 96]
                        _853 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _893 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_893] == mem[_893 + 12 len 20]
                        if mem[_893 + 12 len 20] != address(_853):
                            _958 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_958] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _958 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _831, 0, address(this.address), 128, 0
                        else:
                            _941 = mem[_725 + 96]
                            _956 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_956] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = _941
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _956 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _831, _941, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _727 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _747 = mem[(32 * idx) + 128]
                    _759 = mem[mem[(32 * idx) + 128]]
                    _760 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _777 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_777] == mem[_777 + 12 len 20]
                    if mem[_777 + 12 len 20] == address(_760):
                        _874 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_904] == mem[_904 + 12 len 20]
                        if mem[_904 + 12 len 20] != address(_874):
                            _980 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_980] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _980 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_727), 128, 0
                        else:
                            _960 = mem[_747 + 96]
                            _978 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_978] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _960
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _978 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _960, address(_727), 128, 0
                    else:
                        _857 = mem[_747 + 96]
                        _878 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _905 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_905] == mem[_905 + 12 len 20]
                        if mem[_905 + 12 len 20] != address(_878):
                            _984 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_984] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _984 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _857, 0, address(_727), 128, 0
                        else:
                            _961 = mem[_747 + 96]
                            _982 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_982] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = _961
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _982 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _857, _961, address(_727), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _567 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _615 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _640 = mem[_615]
            require mem[_615] == mem[_615 + 12 len 20]
            require 0 < mem[96]
            _661 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _661
            require ext_code.size(address(_640))
            call address(_640).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _661
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _716 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_716] == bool(mem[_716])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _641 = mem[_616]
            require mem[_616] == mem[_616 + 12 len 20]
            require 0 < mem[96]
            _668 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _668
            require ext_code.size(address(_641))
            call address(_641).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _668
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _739 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_739] == bool(mem[_739])
}

function computeAmount(address arg1, address arg2, uint256[] arg3) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require calldata.size >= arg1 + (96 * arg1.length) + 36
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size - s >= 96
        _746 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        require cd[s] == address(cd[s])
        mem[_746] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_746 + 32] = cd[(s + 32)]
        mem[_746 + 64] = cd[(s + 64)]
        mem[t] = _746
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    _747 = mem[96]
    require mem[96] <= test266151307()
    _748 = mem[64]
    mem[mem[64]] = mem[96]
    if not _747:
        _749 = mem[64] + (32 * _747) + 32
        mem[64] = mem[64] + (32 * _747) + 160
        mem[_749] = 0
        mem[_749 + 32] = 0
        mem[_749 + 64] = 0
        mem[_749 + 96] = 0
        require mem[96] <= test266151307()
        mem[_748 + (32 * _747) + 160] = mem[96]
        mem[64] = _748 + (32 * _747) + (32 * mem[96]) + 192
        if not mem[96]:
            _1490 = mem[96]
            idx = 0
            s = _749
            while idx < _1490 - 1:
                if idx:
                    require idx + 1 < mem[96]
                    require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1516 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1527 = mem[_1516]
                    require mem[_1516] == mem[_1516 + 18 len 14]
                    _1550 = mem[_1516 + 32]
                    require mem[_1516 + 32] == mem[_1516 + 50 len 14]
                    require mem[_1516 + 64] == mem[_1516 + 92 len 4]
                    require idx + 1 < mem[96]
                    require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1644] == mem[_1644 + 12 len 20]
                    require idx + 1 < mem[96]
                    require idx + 1 < mem[_748 + (32 * _747) + 160]
                    if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_1644 + 12 len 20]:
                        mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192]] = Mask(112, 0, _1527)
                        require idx + 1 < mem[_748 + (32 * _747) + 160]
                        mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192] + 32] = Mask(112, 0, _1550)
                        _1775 = mem[s]
                        _1776 = mem[s + 32]
                        _1777 = mem[s + 96]
                        require idx + 1 < mem[96]
                        _1795 = mem[mem[(32 * idx + 1) + 128] + 64]
                        _1824 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1824 + 64] = 0
                        mem[_1824 + 96] = _1777
                        require (_1795 * _1776) + (10000 * Mask(112, 0, _1527))
                        mem[_1824] = 10000 * _1775 * Mask(112, 0, _1527) / (_1795 * _1776) + (10000 * Mask(112, 0, _1527))
                        mem[_1824 + 32] = _1795 * _1776 * Mask(112, 0, _1550) / (_1795 * _1776) + (10000 * Mask(112, 0, _1527))
                        s = (10000 * _1777 * _1795 * _1776 * Mask(112, 0, _1550) / (_1795 * _1776) + (10000 * Mask(112, 0, _1527)) * 10000 * _1775 * Mask(112, 0, _1527) / (_1795 * _1776) + (10000 * Mask(112, 0, _1527))) + 1 / 2
                        t = 10000 * _1777 * _1795 * _1776 * Mask(112, 0, _1550) / (_1795 * _1776) + (10000 * Mask(112, 0, _1527)) * 10000 * _1775 * Mask(112, 0, _1527) / (_1795 * _1776) + (10000 * Mask(112, 0, _1527))
                        while s < t:
                            require s
                            _1490 = mem[96]
                            s = (10000 * _1777 * _1795 * _1776 * Mask(112, 0, _1550) / (_1795 * _1776) + (10000 * Mask(112, 0, _1527)) * 10000 * _1775 * Mask(112, 0, _1527) / (_1795 * _1776) + (10000 * Mask(112, 0, _1527)) / s) + s / 2
                            t = s
                            continue 
                        require _1777
                        mem[_1824 + 64] = t - (10000 * 10000 * _1775 * Mask(112, 0, _1527) / (_1795 * _1776) + (10000 * Mask(112, 0, _1527))) / _1777
                        _1490 = mem[96]
                        idx = idx + 1
                        s = _1824
                        continue 
                    mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192]] = Mask(112, 0, _1550)
                    require idx + 1 < mem[_748 + (32 * _747) + 160]
                    mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192] + 32] = Mask(112, 0, _1527)
                    _1780 = mem[s]
                    _1781 = mem[s + 32]
                    _1782 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _1797 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _1825 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1825 + 64] = 0
                    mem[_1825 + 96] = _1782
                    require (_1797 * _1781) + (10000 * Mask(112, 0, _1550))
                    mem[_1825] = 10000 * _1780 * Mask(112, 0, _1550) / (_1797 * _1781) + (10000 * Mask(112, 0, _1550))
                    mem[_1825 + 32] = _1797 * _1781 * Mask(112, 0, _1527) / (_1797 * _1781) + (10000 * Mask(112, 0, _1550))
                    s = (10000 * _1782 * _1797 * _1781 * Mask(112, 0, _1527) / (_1797 * _1781) + (10000 * Mask(112, 0, _1550)) * 10000 * _1780 * Mask(112, 0, _1550) / (_1797 * _1781) + (10000 * Mask(112, 0, _1550))) + 1 / 2
                    t = 10000 * _1782 * _1797 * _1781 * Mask(112, 0, _1527) / (_1797 * _1781) + (10000 * Mask(112, 0, _1550)) * 10000 * _1780 * Mask(112, 0, _1550) / (_1797 * _1781) + (10000 * Mask(112, 0, _1550))
                    while s < t:
                        require s
                        _1490 = mem[96]
                        s = (10000 * _1782 * _1797 * _1781 * Mask(112, 0, _1527) / (_1797 * _1781) + (10000 * Mask(112, 0, _1550)) * 10000 * _1780 * Mask(112, 0, _1550) / (_1797 * _1781) + (10000 * Mask(112, 0, _1550)) / s) + s / 2
                        t = s
                        continue 
                    require _1782
                    mem[_1825 + 64] = t - (10000 * 10000 * _1780 * Mask(112, 0, _1550) / (_1797 * _1781) + (10000 * Mask(112, 0, _1550))) / _1782
                    _1490 = mem[96]
                    idx = idx + 1
                    s = _1825
                    continue 
                require idx < mem[96]
                require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1517 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1528 = mem[_1517]
                require mem[_1517] == mem[_1517 + 18 len 14]
                _1551 = mem[_1517 + 32]
                require mem[_1517 + 32] == mem[_1517 + 50 len 14]
                require mem[_1517 + 64] == mem[_1517 + 92 len 4]
                require idx < mem[96]
                require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1645 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1645] == mem[_1645 + 12 len 20]
                require idx < mem[96]
                require idx < mem[_748 + (32 * _747) + 160]
                if mem[mem[(32 * idx) + 128] + 44 len 20] == mem[_1645 + 12 len 20]:
                    _1764 = mem[(32 * idx) + _748 + (32 * _747) + 192]
                    require idx < mem[_748 + (32 * _747) + 160]
                    mem[mem[(32 * idx) + _748 + (32 * _747) + 192] + 32] = Mask(112, 0, _1551)
                    mem[_1764] = Mask(112, 0, _1528)
                    require idx < mem[_748 + (32 * _747) + 160]
                    mem[s] = mem[mem[(32 * idx) + _748 + (32 * _747) + 192]]
                    require idx < mem[_748 + (32 * _747) + 160]
                    mem[s + 32] = Mask(112, 0, _1551)
                    require 0 < mem[96]
                    mem[s + 96] = mem[mem[128] + 64]
                    mem[s + 64] = 0
                    require idx + 1 < mem[96]
                    require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1868 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1886 = mem[_1868]
                    require mem[_1868] == mem[_1868 + 18 len 14]
                    _1915 = mem[_1868 + 32]
                    require mem[_1868 + 32] == mem[_1868 + 50 len 14]
                    require mem[_1868 + 64] == mem[_1868 + 92 len 4]
                    require idx + 1 < mem[96]
                    require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1987 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1987] == mem[_1987 + 12 len 20]
                    require idx + 1 < mem[96]
                    require idx + 1 < mem[_748 + (32 * _747) + 160]
                    if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_1987 + 12 len 20]:
                        mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192]] = Mask(112, 0, _1886)
                        require idx + 1 < mem[_748 + (32 * _747) + 160]
                        mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192] + 32] = Mask(112, 0, _1915)
                        _2058 = mem[s]
                        _2060 = mem[s + 96]
                        require idx + 1 < mem[96]
                        _2080 = mem[mem[(32 * idx + 1) + 128] + 64]
                        _2103 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2103 + 64] = 0
                        mem[_2103 + 96] = _2060
                        require (_2080 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1886))
                        mem[_2103] = 10000 * _2058 * Mask(112, 0, _1886) / (_2080 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1886))
                        mem[_2103 + 32] = _2080 * Mask(112, 0, _1551) * Mask(112, 0, _1915) / (_2080 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1886))
                        s = (10000 * _2060 * _2080 * Mask(112, 0, _1551) * Mask(112, 0, _1915) / (_2080 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1886)) * 10000 * _2058 * Mask(112, 0, _1886) / (_2080 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1886))) + 1 / 2
                        t = 10000 * _2060 * _2080 * Mask(112, 0, _1551) * Mask(112, 0, _1915) / (_2080 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1886)) * 10000 * _2058 * Mask(112, 0, _1886) / (_2080 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1886))
                        while s < t:
                            require s
                            _1490 = mem[96]
                            s = (10000 * _2060 * _2080 * Mask(112, 0, _1551) * Mask(112, 0, _1915) / (_2080 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1886)) * 10000 * _2058 * Mask(112, 0, _1886) / (_2080 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1886)) / s) + s / 2
                            t = s
                            continue 
                        require _2060
                        mem[_2103 + 64] = t - (10000 * 10000 * _2058 * Mask(112, 0, _1886) / (_2080 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1886))) / _2060
                        _1490 = mem[96]
                        s = s + 1
                        s = _2103
                        continue 
                    mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192]] = Mask(112, 0, _1915)
                    require idx + 1 < mem[_748 + (32 * _747) + 160]
                    mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192] + 32] = Mask(112, 0, _1886)
                    _2063 = mem[s]
                    _2065 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _2082 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _2104 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2104 + 64] = 0
                    mem[_2104 + 96] = _2065
                    require (_2082 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1915))
                    mem[_2104] = 10000 * _2063 * Mask(112, 0, _1915) / (_2082 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1915))
                    mem[_2104 + 32] = _2082 * Mask(112, 0, _1551) * Mask(112, 0, _1886) / (_2082 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1915))
                    s = (10000 * _2065 * _2082 * Mask(112, 0, _1551) * Mask(112, 0, _1886) / (_2082 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1915)) * 10000 * _2063 * Mask(112, 0, _1915) / (_2082 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1915))) + 1 / 2
                    t = 10000 * _2065 * _2082 * Mask(112, 0, _1551) * Mask(112, 0, _1886) / (_2082 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1915)) * 10000 * _2063 * Mask(112, 0, _1915) / (_2082 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1915))
                    while s < t:
                        require s
                        _1490 = mem[96]
                        s = (10000 * _2065 * _2082 * Mask(112, 0, _1551) * Mask(112, 0, _1886) / (_2082 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1915)) * 10000 * _2063 * Mask(112, 0, _1915) / (_2082 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1915)) / s) + s / 2
                        t = s
                        continue 
                    require _2065
                    mem[_2104 + 64] = t - (10000 * 10000 * _2063 * Mask(112, 0, _1915) / (_2082 * Mask(112, 0, _1551)) + (10000 * Mask(112, 0, _1915))) / _2065
                    _1490 = mem[96]
                    s = s + 1
                    s = _2104
                    continue 
                _1766 = mem[(32 * idx) + _748 + (32 * _747) + 192]
                require idx < mem[_748 + (32 * _747) + 160]
                mem[mem[(32 * idx) + _748 + (32 * _747) + 192] + 32] = Mask(112, 0, _1528)
                mem[_1766] = Mask(112, 0, _1551)
                require idx < mem[_748 + (32 * _747) + 160]
                mem[s] = mem[mem[(32 * idx) + _748 + (32 * _747) + 192]]
                require idx < mem[_748 + (32 * _747) + 160]
                mem[s + 32] = Mask(112, 0, _1528)
                require 0 < mem[96]
                mem[s + 96] = mem[mem[128] + 64]
                mem[s + 64] = 0
                require idx + 1 < mem[96]
                require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1869 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1887 = mem[_1869]
                require mem[_1869] == mem[_1869 + 18 len 14]
                _1916 = mem[_1869 + 32]
                require mem[_1869 + 32] == mem[_1869 + 50 len 14]
                require mem[_1869 + 64] == mem[_1869 + 92 len 4]
                require idx + 1 < mem[96]
                require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1988 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1988] == mem[_1988 + 12 len 20]
                require idx + 1 < mem[96]
                require idx + 1 < mem[_748 + (32 * _747) + 160]
                if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_1988 + 12 len 20]:
                    mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192]] = Mask(112, 0, _1887)
                    require idx + 1 < mem[_748 + (32 * _747) + 160]
                    mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192] + 32] = Mask(112, 0, _1916)
                    _2068 = mem[s]
                    _2070 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _2084 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _2105 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2105 + 64] = 0
                    mem[_2105 + 96] = _2070
                    require (_2084 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1887))
                    mem[_2105] = 10000 * _2068 * Mask(112, 0, _1887) / (_2084 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1887))
                    mem[_2105 + 32] = _2084 * Mask(112, 0, _1528) * Mask(112, 0, _1916) / (_2084 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1887))
                    s = (10000 * _2070 * _2084 * Mask(112, 0, _1528) * Mask(112, 0, _1916) / (_2084 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1887)) * 10000 * _2068 * Mask(112, 0, _1887) / (_2084 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1887))) + 1 / 2
                    t = 10000 * _2070 * _2084 * Mask(112, 0, _1528) * Mask(112, 0, _1916) / (_2084 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1887)) * 10000 * _2068 * Mask(112, 0, _1887) / (_2084 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1887))
                    while s < t:
                        require s
                        _1490 = mem[96]
                        s = (10000 * _2070 * _2084 * Mask(112, 0, _1528) * Mask(112, 0, _1916) / (_2084 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1887)) * 10000 * _2068 * Mask(112, 0, _1887) / (_2084 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1887)) / s) + s / 2
                        t = s
                        continue 
                    require _2070
                    mem[_2105 + 64] = t - (10000 * 10000 * _2068 * Mask(112, 0, _1887) / (_2084 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1887))) / _2070
                    _1490 = mem[96]
                    s = s + 1
                    s = _2105
                    continue 
                mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192]] = Mask(112, 0, _1916)
                require idx + 1 < mem[_748 + (32 * _747) + 160]
                mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192] + 32] = Mask(112, 0, _1887)
                _2073 = mem[s]
                _2075 = mem[s + 96]
                require idx + 1 < mem[96]
                _2086 = mem[mem[(32 * idx + 1) + 128] + 64]
                _2106 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2106 + 64] = 0
                mem[_2106 + 96] = _2075
                require (_2086 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1916))
                mem[_2106] = 10000 * _2073 * Mask(112, 0, _1916) / (_2086 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1916))
                mem[_2106 + 32] = _2086 * Mask(112, 0, _1528) * Mask(112, 0, _1887) / (_2086 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1916))
                s = (10000 * _2075 * _2086 * Mask(112, 0, _1528) * Mask(112, 0, _1887) / (_2086 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1916)) * 10000 * _2073 * Mask(112, 0, _1916) / (_2086 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1916))) + 1 / 2
                t = 10000 * _2075 * _2086 * Mask(112, 0, _1528) * Mask(112, 0, _1887) / (_2086 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1916)) * 10000 * _2073 * Mask(112, 0, _1916) / (_2086 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1916))
                while s < t:
                    require s
                    _1490 = mem[96]
                    s = (10000 * _2075 * _2086 * Mask(112, 0, _1528) * Mask(112, 0, _1887) / (_2086 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1916)) * 10000 * _2073 * Mask(112, 0, _1916) / (_2086 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1916)) / s) + s / 2
                    t = s
                    continue 
                require _2075
                mem[_2106 + 64] = t - (10000 * 10000 * _2073 * Mask(112, 0, _1916) / (_2086 * Mask(112, 0, _1528)) + (10000 * Mask(112, 0, _1916))) / _2075
                _1490 = mem[96]
                s = s + 1
                s = _2106
                continue 
            require 0 < mem[_748]
            mem[mem[_748 + 32] + 64] = mem[s + 64]
            _2271 = mem[96]
            idx = 0
            while idx < _2271:
                require idx < mem[_748 + (32 * _747) + 160]
                require idx < mem[_748]
                if mem[mem[(32 * idx) + _748 + 32] + 64] > mem[mem[(32 * idx) + _748 + (32 * _747) + 192]]:
                    return 0
                require idx < mem[96]
                require idx < mem[_748]
                mem[mem[(32 * idx) + _748 + 32]] = mem[mem[(32 * idx) + 128] + 12 len 20]
                require idx < mem[96]
                require idx < mem[_748]
                mem[mem[(32 * idx) + _748 + 32] + 32] = mem[mem[(32 * idx) + 128] + 44 len 20]
                require idx < mem[_748]
                require idx < mem[_748 + (32 * _747) + 160]
                require idx < mem[_748 + (32 * _747) + 160]
                require idx < mem[96]
                require (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _748 + 32] + 64]) + (10000 * mem[mem[(32 * idx) + _748 + (32 * _747) + 192]])
                require idx < mem[_748]
                mem[mem[(32 * idx) + _748 + 32] + 96] = mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _748 + 32] + 64] * mem[mem[(32 * idx) + _748 + (32 * _747) + 192] + 32] / (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _748 + 32] + 64]) + (10000 * mem[mem[(32 * idx) + _748 + (32 * _747) + 192]])
                if idx != mem[96] - 1:
                    require idx < mem[_748]
                    require idx + 1 < mem[_748]
                    mem[mem[(32 * idx + 1) + _748 + 32] + 64] = mem[mem[(32 * idx) + _748 + 32] + 96]
                _2271 = mem[96]
                idx = idx + 1
                continue 
            require 0 < mem[_748]
            require mem[96] - 1 < mem[_748]
            _2284 = mem[mem[(32 * mem[96] - 1) + _748 + 32] + 96]
            mem[mem[64]] = mem[mem[_748 + 32] + 64]
            return mem[mem[64]], _2284
        _2272 = _748 + (32 * _747) + (32 * mem[96]) + 192
        mem[64] = _748 + (32 * _747) + (32 * mem[96]) + 256
        mem[_748 + (32 * _747) + (32 * mem[96]) + 192] = 0
        mem[_748 + (32 * _747) + (32 * mem[96]) + 224] = 0
        mem[var31001] = _748 + (32 * _747) + (32 * mem[96]) + 192
        s = var31001
        idx = var31002
        while idx - 1:
            _2272 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2272] = 0
            mem[_2272 + 32] = 0
            mem[s + 32] = _2272
            s = s + 32
            idx = idx - 1
            continue 
        _2874 = mem[96]
        idx = 0
        s = _749
        while idx < _2874 - 1:
            if idx:
                require idx + 1 < mem[96]
                require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2916 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2939 = mem[_2916]
                require mem[_2916] == mem[_2916 + 18 len 14]
                _2969 = mem[_2916 + 32]
                require mem[_2916 + 32] == mem[_2916 + 50 len 14]
                require mem[_2916 + 64] == mem[_2916 + 92 len 4]
                require idx + 1 < mem[96]
                require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3064 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3064] == mem[_3064 + 12 len 20]
                require idx + 1 < mem[96]
                require idx + 1 < mem[_748 + (32 * _747) + 160]
                if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_3064 + 12 len 20]:
                    mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192]] = Mask(112, 0, _2939)
                    require idx + 1 < mem[_748 + (32 * _747) + 160]
                    mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192] + 32] = Mask(112, 0, _2969)
                    _3148 = mem[s]
                    _3149 = mem[s + 32]
                    _3150 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _3177 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _3210 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3210 + 64] = 0
                    mem[_3210 + 96] = _3150
                    require (_3177 * _3149) + (10000 * Mask(112, 0, _2939))
                    mem[_3210] = 10000 * _3148 * Mask(112, 0, _2939) / (_3177 * _3149) + (10000 * Mask(112, 0, _2939))
                    mem[_3210 + 32] = _3177 * _3149 * Mask(112, 0, _2969) / (_3177 * _3149) + (10000 * Mask(112, 0, _2939))
                    s = (10000 * _3150 * _3177 * _3149 * Mask(112, 0, _2969) / (_3177 * _3149) + (10000 * Mask(112, 0, _2939)) * 10000 * _3148 * Mask(112, 0, _2939) / (_3177 * _3149) + (10000 * Mask(112, 0, _2939))) + 1 / 2
                    t = 10000 * _3150 * _3177 * _3149 * Mask(112, 0, _2969) / (_3177 * _3149) + (10000 * Mask(112, 0, _2939)) * 10000 * _3148 * Mask(112, 0, _2939) / (_3177 * _3149) + (10000 * Mask(112, 0, _2939))
                    while s < t:
                        require s
                        _2874 = mem[96]
                        s = (10000 * _3150 * _3177 * _3149 * Mask(112, 0, _2969) / (_3177 * _3149) + (10000 * Mask(112, 0, _2939)) * 10000 * _3148 * Mask(112, 0, _2939) / (_3177 * _3149) + (10000 * Mask(112, 0, _2939)) / s) + s / 2
                        t = s
                        continue 
                    require _3150
                    mem[_3210 + 64] = t - (10000 * 10000 * _3148 * Mask(112, 0, _2939) / (_3177 * _3149) + (10000 * Mask(112, 0, _2939))) / _3150
                    _2874 = mem[96]
                    idx = idx + 1
                    s = _3210
                    continue 
                mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192]] = Mask(112, 0, _2969)
                require idx + 1 < mem[_748 + (32 * _747) + 160]
                mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192] + 32] = Mask(112, 0, _2939)
                _3153 = mem[s]
                _3154 = mem[s + 32]
                _3155 = mem[s + 96]
                require idx + 1 < mem[96]
                _3179 = mem[mem[(32 * idx + 1) + 128] + 64]
                _3211 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3211 + 64] = 0
                mem[_3211 + 96] = _3155
                require (_3179 * _3154) + (10000 * Mask(112, 0, _2969))
                mem[_3211] = 10000 * _3153 * Mask(112, 0, _2969) / (_3179 * _3154) + (10000 * Mask(112, 0, _2969))
                mem[_3211 + 32] = _3179 * _3154 * Mask(112, 0, _2939) / (_3179 * _3154) + (10000 * Mask(112, 0, _2969))
                s = (10000 * _3155 * _3179 * _3154 * Mask(112, 0, _2939) / (_3179 * _3154) + (10000 * Mask(112, 0, _2969)) * 10000 * _3153 * Mask(112, 0, _2969) / (_3179 * _3154) + (10000 * Mask(112, 0, _2969))) + 1 / 2
                t = 10000 * _3155 * _3179 * _3154 * Mask(112, 0, _2939) / (_3179 * _3154) + (10000 * Mask(112, 0, _2969)) * 10000 * _3153 * Mask(112, 0, _2969) / (_3179 * _3154) + (10000 * Mask(112, 0, _2969))
                while s < t:
                    require s
                    _2874 = mem[96]
                    s = (10000 * _3155 * _3179 * _3154 * Mask(112, 0, _2939) / (_3179 * _3154) + (10000 * Mask(112, 0, _2969)) * 10000 * _3153 * Mask(112, 0, _2969) / (_3179 * _3154) + (10000 * Mask(112, 0, _2969)) / s) + s / 2
                    t = s
                    continue 
                require _3155
                mem[_3211 + 64] = t - (10000 * 10000 * _3153 * Mask(112, 0, _2969) / (_3179 * _3154) + (10000 * Mask(112, 0, _2969))) / _3155
                _2874 = mem[96]
                idx = idx + 1
                s = _3211
                continue 
            require idx < mem[96]
            require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
            staticcall mem[mem[(32 * idx) + 128] + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2917 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2940 = mem[_2917]
            require mem[_2917] == mem[_2917 + 18 len 14]
            _2970 = mem[_2917 + 32]
            require mem[_2917 + 32] == mem[_2917 + 50 len 14]
            require mem[_2917 + 64] == mem[_2917 + 92 len 4]
            require idx < mem[96]
            require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
            staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3065 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3065] == mem[_3065 + 12 len 20]
            require idx < mem[96]
            require idx < mem[_748 + (32 * _747) + 160]
            if mem[mem[(32 * idx) + 128] + 44 len 20] == mem[_3065 + 12 len 20]:
                _3135 = mem[(32 * idx) + _748 + (32 * _747) + 192]
                require idx < mem[_748 + (32 * _747) + 160]
                mem[mem[(32 * idx) + _748 + (32 * _747) + 192] + 32] = Mask(112, 0, _2970)
                mem[_3135] = Mask(112, 0, _2940)
                require idx < mem[_748 + (32 * _747) + 160]
                mem[s] = mem[mem[(32 * idx) + _748 + (32 * _747) + 192]]
                require idx < mem[_748 + (32 * _747) + 160]
                mem[s + 32] = Mask(112, 0, _2970)
                require 0 < mem[96]
                mem[s + 96] = mem[mem[128] + 64]
                mem[s + 64] = 0
                require idx + 1 < mem[96]
                require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3262 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3276 = mem[_3262]
                require mem[_3262] == mem[_3262 + 18 len 14]
                _3290 = mem[_3262 + 32]
                require mem[_3262 + 32] == mem[_3262 + 50 len 14]
                require mem[_3262 + 64] == mem[_3262 + 92 len 4]
                require idx + 1 < mem[96]
                require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3324 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3324] == mem[_3324 + 12 len 20]
                require idx + 1 < mem[96]
                require idx + 1 < mem[_748 + (32 * _747) + 160]
                if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_3324 + 12 len 20]:
                    mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192]] = Mask(112, 0, _3276)
                    require idx + 1 < mem[_748 + (32 * _747) + 160]
                    mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192] + 32] = Mask(112, 0, _3290)
                    _3385 = mem[s]
                    _3387 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _3427 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _3446 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3446 + 64] = 0
                    mem[_3446 + 96] = _3387
                    require (_3427 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3276))
                    mem[_3446] = 10000 * _3385 * Mask(112, 0, _3276) / (_3427 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3276))
                    mem[_3446 + 32] = _3427 * Mask(112, 0, _2970) * Mask(112, 0, _3290) / (_3427 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3276))
                    s = (10000 * _3387 * _3427 * Mask(112, 0, _2970) * Mask(112, 0, _3290) / (_3427 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3276)) * 10000 * _3385 * Mask(112, 0, _3276) / (_3427 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3276))) + 1 / 2
                    t = 10000 * _3387 * _3427 * Mask(112, 0, _2970) * Mask(112, 0, _3290) / (_3427 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3276)) * 10000 * _3385 * Mask(112, 0, _3276) / (_3427 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3276))
                    while s < t:
                        require s
                        _2874 = mem[96]
                        s = (10000 * _3387 * _3427 * Mask(112, 0, _2970) * Mask(112, 0, _3290) / (_3427 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3276)) * 10000 * _3385 * Mask(112, 0, _3276) / (_3427 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3276)) / s) + s / 2
                        t = s
                        continue 
                    require _3387
                    mem[_3446 + 64] = t - (10000 * 10000 * _3385 * Mask(112, 0, _3276) / (_3427 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3276))) / _3387
                    _2874 = mem[96]
                    s = s + 1
                    s = _3446
                    continue 
                mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192]] = Mask(112, 0, _3290)
                require idx + 1 < mem[_748 + (32 * _747) + 160]
                mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192] + 32] = Mask(112, 0, _3276)
                _3390 = mem[s]
                _3392 = mem[s + 96]
                require idx + 1 < mem[96]
                _3429 = mem[mem[(32 * idx + 1) + 128] + 64]
                _3447 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3447 + 64] = 0
                mem[_3447 + 96] = _3392
                require (_3429 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3290))
                mem[_3447] = 10000 * _3390 * Mask(112, 0, _3290) / (_3429 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3290))
                mem[_3447 + 32] = _3429 * Mask(112, 0, _2970) * Mask(112, 0, _3276) / (_3429 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3290))
                s = (10000 * _3392 * _3429 * Mask(112, 0, _2970) * Mask(112, 0, _3276) / (_3429 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3290)) * 10000 * _3390 * Mask(112, 0, _3290) / (_3429 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3290))) + 1 / 2
                t = 10000 * _3392 * _3429 * Mask(112, 0, _2970) * Mask(112, 0, _3276) / (_3429 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3290)) * 10000 * _3390 * Mask(112, 0, _3290) / (_3429 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3290))
                while s < t:
                    require s
                    _2874 = mem[96]
                    s = (10000 * _3392 * _3429 * Mask(112, 0, _2970) * Mask(112, 0, _3276) / (_3429 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3290)) * 10000 * _3390 * Mask(112, 0, _3290) / (_3429 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3290)) / s) + s / 2
                    t = s
                    continue 
                require _3392
                mem[_3447 + 64] = t - (10000 * 10000 * _3390 * Mask(112, 0, _3290) / (_3429 * Mask(112, 0, _2970)) + (10000 * Mask(112, 0, _3290))) / _3392
                _2874 = mem[96]
                s = s + 1
                s = _3447
                continue 
            _3137 = mem[(32 * idx) + _748 + (32 * _747) + 192]
            require idx < mem[_748 + (32 * _747) + 160]
            mem[mem[(32 * idx) + _748 + (32 * _747) + 192] + 32] = Mask(112, 0, _2940)
            mem[_3137] = Mask(112, 0, _2970)
            require idx < mem[_748 + (32 * _747) + 160]
            mem[s] = mem[mem[(32 * idx) + _748 + (32 * _747) + 192]]
            require idx < mem[_748 + (32 * _747) + 160]
            mem[s + 32] = Mask(112, 0, _2940)
            require 0 < mem[96]
            mem[s + 96] = mem[mem[128] + 64]
            mem[s + 64] = 0
            require idx + 1 < mem[96]
            require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
            staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3263 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _3277 = mem[_3263]
            require mem[_3263] == mem[_3263 + 18 len 14]
            _3291 = mem[_3263 + 32]
            require mem[_3263 + 32] == mem[_3263 + 50 len 14]
            require mem[_3263 + 64] == mem[_3263 + 92 len 4]
            require idx + 1 < mem[96]
            require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
            staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3325 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3325] == mem[_3325 + 12 len 20]
            require idx + 1 < mem[96]
            require idx + 1 < mem[_748 + (32 * _747) + 160]
            if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_3325 + 12 len 20]:
                mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192]] = Mask(112, 0, _3277)
                require idx + 1 < mem[_748 + (32 * _747) + 160]
                mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192] + 32] = Mask(112, 0, _3291)
                _3395 = mem[s]
                _3397 = mem[s + 96]
                require idx + 1 < mem[96]
                _3431 = mem[mem[(32 * idx + 1) + 128] + 64]
                _3448 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3448 + 64] = 0
                mem[_3448 + 96] = _3397
                require (_3431 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3277))
                mem[_3448] = 10000 * _3395 * Mask(112, 0, _3277) / (_3431 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3277))
                mem[_3448 + 32] = _3431 * Mask(112, 0, _2940) * Mask(112, 0, _3291) / (_3431 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3277))
                s = (10000 * _3397 * _3431 * Mask(112, 0, _2940) * Mask(112, 0, _3291) / (_3431 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3277)) * 10000 * _3395 * Mask(112, 0, _3277) / (_3431 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3277))) + 1 / 2
                t = 10000 * _3397 * _3431 * Mask(112, 0, _2940) * Mask(112, 0, _3291) / (_3431 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3277)) * 10000 * _3395 * Mask(112, 0, _3277) / (_3431 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3277))
                while s < t:
                    require s
                    _2874 = mem[96]
                    s = (10000 * _3397 * _3431 * Mask(112, 0, _2940) * Mask(112, 0, _3291) / (_3431 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3277)) * 10000 * _3395 * Mask(112, 0, _3277) / (_3431 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3277)) / s) + s / 2
                    t = s
                    continue 
                require _3397
                mem[_3448 + 64] = t - (10000 * 10000 * _3395 * Mask(112, 0, _3277) / (_3431 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3277))) / _3397
                _2874 = mem[96]
                s = s + 1
                s = _3448
                continue 
            mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192]] = Mask(112, 0, _3291)
            require idx + 1 < mem[_748 + (32 * _747) + 160]
            mem[mem[(32 * idx + 1) + _748 + (32 * _747) + 192] + 32] = Mask(112, 0, _3277)
            _3400 = mem[s]
            _3402 = mem[s + 96]
            require idx + 1 < mem[96]
            _3433 = mem[mem[(32 * idx + 1) + 128] + 64]
            _3449 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3449 + 64] = 0
            mem[_3449 + 96] = _3402
            require (_3433 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3291))
            mem[_3449] = 10000 * _3400 * Mask(112, 0, _3291) / (_3433 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3291))
            mem[_3449 + 32] = _3433 * Mask(112, 0, _2940) * Mask(112, 0, _3277) / (_3433 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3291))
            s = (10000 * _3402 * _3433 * Mask(112, 0, _2940) * Mask(112, 0, _3277) / (_3433 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3291)) * 10000 * _3400 * Mask(112, 0, _3291) / (_3433 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3291))) + 1 / 2
            t = 10000 * _3402 * _3433 * Mask(112, 0, _2940) * Mask(112, 0, _3277) / (_3433 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3291)) * 10000 * _3400 * Mask(112, 0, _3291) / (_3433 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3291))
            while s < t:
                require s
                _2874 = mem[96]
                s = (10000 * _3402 * _3433 * Mask(112, 0, _2940) * Mask(112, 0, _3277) / (_3433 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3291)) * 10000 * _3400 * Mask(112, 0, _3291) / (_3433 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3291)) / s) + s / 2
                t = s
                continue 
            require _3402
            mem[_3449 + 64] = t - (10000 * 10000 * _3400 * Mask(112, 0, _3291) / (_3433 * Mask(112, 0, _2940)) + (10000 * Mask(112, 0, _3291))) / _3402
            _2874 = mem[96]
            s = s + 1
            s = _3449
            continue 
        require 0 < mem[_748]
        mem[mem[_748 + 32] + 64] = mem[s + 64]
        _3510 = mem[96]
        idx = 0
        while idx < _3510:
            require idx < mem[_748 + (32 * _747) + 160]
            require idx < mem[_748]
            if mem[mem[(32 * idx) + _748 + 32] + 64] > mem[mem[(32 * idx) + _748 + (32 * _747) + 192]]:
                return 0
            require idx < mem[96]
            require idx < mem[_748]
            mem[mem[(32 * idx) + _748 + 32]] = mem[mem[(32 * idx) + 128] + 12 len 20]
            require idx < mem[96]
            require idx < mem[_748]
            mem[mem[(32 * idx) + _748 + 32] + 32] = mem[mem[(32 * idx) + 128] + 44 len 20]
            require idx < mem[_748]
            require idx < mem[_748 + (32 * _747) + 160]
            require idx < mem[_748 + (32 * _747) + 160]
            require idx < mem[96]
            require (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _748 + 32] + 64]) + (10000 * mem[mem[(32 * idx) + _748 + (32 * _747) + 192]])
            require idx < mem[_748]
            mem[mem[(32 * idx) + _748 + 32] + 96] = mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _748 + 32] + 64] * mem[mem[(32 * idx) + _748 + (32 * _747) + 192] + 32] / (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _748 + 32] + 64]) + (10000 * mem[mem[(32 * idx) + _748 + (32 * _747) + 192]])
            if idx != mem[96] - 1:
                require idx < mem[_748]
                require idx + 1 < mem[_748]
                mem[mem[(32 * idx + 1) + _748 + 32] + 64] = mem[mem[(32 * idx) + _748 + 32] + 96]
            _3510 = mem[96]
            idx = idx + 1
            continue 
        require 0 < mem[_748]
        require mem[96] - 1 < mem[_748]
        _3532 = mem[mem[(32 * mem[96] - 1) + _748 + 32] + 96]
        mem[mem[64]] = mem[mem[_748 + 32] + 64]
        return mem[mem[64]], _3532
    _2273 = mem[64] + (32 * _747) + 32
    mem[64] = mem[64] + (32 * _747) + 160
    mem[_2273] = 0
    mem[_2273 + 32] = 0
    mem[_2273 + 64] = 0
    mem[_2273 + 96] = 0
    mem[var26001] = _2273
    s = var26001
    idx = var26002
    while idx - 1:
        _2273 = mem[64]
        mem[64] = mem[64] + 128
        mem[_2273] = 0
        mem[_2273 + 32] = 0
        mem[_2273 + 64] = 0
        mem[_2273 + 96] = 0
        mem[s + 32] = _2273
        s = s + 32
        idx = idx - 1
        continue 
    _2294 = mem[64]
    mem[64] = mem[64] + 128
    mem[_2294] = 0
    mem[_2294 + 32] = 0
    mem[_2294 + 64] = 0
    mem[_2294 + 96] = 0
    _2300 = mem[96]
    require mem[96] <= test266151307()
    _2310 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _2300) + 32
    if not _2300:
        _2875 = mem[96]
        idx = 0
        s = _2294
        while idx < _2875 - 1:
            if idx:
                require idx + 1 < mem[96]
                require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2925 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2942 = mem[_2925]
                require mem[_2925] == mem[_2925 + 18 len 14]
                _2975 = mem[_2925 + 32]
                require mem[_2925 + 32] == mem[_2925 + 50 len 14]
                require mem[_2925 + 64] == mem[_2925 + 92 len 4]
                require idx + 1 < mem[96]
                require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3067 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3067] == mem[_3067 + 12 len 20]
                require idx + 1 < mem[96]
                require idx + 1 < mem[_2310]
                if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_3067 + 12 len 20]:
                    mem[mem[(32 * idx + 1) + _2310 + 32]] = Mask(112, 0, _2942)
                    require idx + 1 < mem[_2310]
                    mem[mem[(32 * idx + 1) + _2310 + 32] + 32] = Mask(112, 0, _2975)
                    _3162 = mem[s]
                    _3163 = mem[s + 32]
                    _3164 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _3187 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _3216 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3216 + 64] = 0
                    mem[_3216 + 96] = _3164
                    require (_3187 * _3163) + (10000 * Mask(112, 0, _2942))
                    mem[_3216] = 10000 * _3162 * Mask(112, 0, _2942) / (_3187 * _3163) + (10000 * Mask(112, 0, _2942))
                    mem[_3216 + 32] = _3187 * _3163 * Mask(112, 0, _2975) / (_3187 * _3163) + (10000 * Mask(112, 0, _2942))
                    s = (10000 * _3164 * _3187 * _3163 * Mask(112, 0, _2975) / (_3187 * _3163) + (10000 * Mask(112, 0, _2942)) * 10000 * _3162 * Mask(112, 0, _2942) / (_3187 * _3163) + (10000 * Mask(112, 0, _2942))) + 1 / 2
                    t = 10000 * _3164 * _3187 * _3163 * Mask(112, 0, _2975) / (_3187 * _3163) + (10000 * Mask(112, 0, _2942)) * 10000 * _3162 * Mask(112, 0, _2942) / (_3187 * _3163) + (10000 * Mask(112, 0, _2942))
                    while s < t:
                        require s
                        _2875 = mem[96]
                        s = (10000 * _3164 * _3187 * _3163 * Mask(112, 0, _2975) / (_3187 * _3163) + (10000 * Mask(112, 0, _2942)) * 10000 * _3162 * Mask(112, 0, _2942) / (_3187 * _3163) + (10000 * Mask(112, 0, _2942)) / s) + s / 2
                        t = s
                        continue 
                    require _3164
                    mem[_3216 + 64] = t - (10000 * 10000 * _3162 * Mask(112, 0, _2942) / (_3187 * _3163) + (10000 * Mask(112, 0, _2942))) / _3164
                    _2875 = mem[96]
                    idx = idx + 1
                    s = _3216
                    continue 
                mem[mem[(32 * idx + 1) + _2310 + 32]] = Mask(112, 0, _2975)
                require idx + 1 < mem[_2310]
                mem[mem[(32 * idx + 1) + _2310 + 32] + 32] = Mask(112, 0, _2942)
                _3167 = mem[s]
                _3168 = mem[s + 32]
                _3169 = mem[s + 96]
                require idx + 1 < mem[96]
                _3189 = mem[mem[(32 * idx + 1) + 128] + 64]
                _3217 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3217 + 64] = 0
                mem[_3217 + 96] = _3169
                require (_3189 * _3168) + (10000 * Mask(112, 0, _2975))
                mem[_3217] = 10000 * _3167 * Mask(112, 0, _2975) / (_3189 * _3168) + (10000 * Mask(112, 0, _2975))
                mem[_3217 + 32] = _3189 * _3168 * Mask(112, 0, _2942) / (_3189 * _3168) + (10000 * Mask(112, 0, _2975))
                s = (10000 * _3169 * _3189 * _3168 * Mask(112, 0, _2942) / (_3189 * _3168) + (10000 * Mask(112, 0, _2975)) * 10000 * _3167 * Mask(112, 0, _2975) / (_3189 * _3168) + (10000 * Mask(112, 0, _2975))) + 1 / 2
                t = 10000 * _3169 * _3189 * _3168 * Mask(112, 0, _2942) / (_3189 * _3168) + (10000 * Mask(112, 0, _2975)) * 10000 * _3167 * Mask(112, 0, _2975) / (_3189 * _3168) + (10000 * Mask(112, 0, _2975))
                while s < t:
                    require s
                    _2875 = mem[96]
                    s = (10000 * _3169 * _3189 * _3168 * Mask(112, 0, _2942) / (_3189 * _3168) + (10000 * Mask(112, 0, _2975)) * 10000 * _3167 * Mask(112, 0, _2975) / (_3189 * _3168) + (10000 * Mask(112, 0, _2975)) / s) + s / 2
                    t = s
                    continue 
                require _3169
                mem[_3217 + 64] = t - (10000 * 10000 * _3167 * Mask(112, 0, _2975) / (_3189 * _3168) + (10000 * Mask(112, 0, _2975))) / _3169
                _2875 = mem[96]
                idx = idx + 1
                s = _3217
                continue 
            require idx < mem[96]
            require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
            staticcall mem[mem[(32 * idx) + 128] + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2926 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2943 = mem[_2926]
            require mem[_2926] == mem[_2926 + 18 len 14]
            _2976 = mem[_2926 + 32]
            require mem[_2926 + 32] == mem[_2926 + 50 len 14]
            require mem[_2926 + 64] == mem[_2926 + 92 len 4]
            require idx < mem[96]
            require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
            staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3068 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3068] == mem[_3068 + 12 len 20]
            require idx < mem[96]
            require idx < mem[_2310]
            if mem[mem[(32 * idx) + 128] + 44 len 20] == mem[_3068 + 12 len 20]:
                _3143 = mem[(32 * idx) + _2310 + 32]
                require idx < mem[_2310]
                mem[mem[(32 * idx) + _2310 + 32] + 32] = Mask(112, 0, _2976)
                mem[_3143] = Mask(112, 0, _2943)
                require idx < mem[_2310]
                mem[s] = mem[mem[(32 * idx) + _2310 + 32]]
                require idx < mem[_2310]
                mem[s + 32] = Mask(112, 0, _2976)
                require 0 < mem[96]
                mem[s + 96] = mem[mem[128] + 64]
                mem[s + 64] = 0
                require idx + 1 < mem[96]
                require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3264 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3278 = mem[_3264]
                require mem[_3264] == mem[_3264 + 18 len 14]
                _3292 = mem[_3264 + 32]
                require mem[_3264 + 32] == mem[_3264 + 50 len 14]
                require mem[_3264 + 64] == mem[_3264 + 92 len 4]
                require idx + 1 < mem[96]
                require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3326 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3326] == mem[_3326 + 12 len 20]
                require idx + 1 < mem[96]
                require idx + 1 < mem[_2310]
                if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_3326 + 12 len 20]:
                    mem[mem[(32 * idx + 1) + _2310 + 32]] = Mask(112, 0, _3278)
                    require idx + 1 < mem[_2310]
                    mem[mem[(32 * idx + 1) + _2310 + 32] + 32] = Mask(112, 0, _3292)
                    _3405 = mem[s]
                    _3407 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _3435 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _3450 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3450 + 64] = 0
                    mem[_3450 + 96] = _3407
                    require (_3435 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3278))
                    mem[_3450] = 10000 * _3405 * Mask(112, 0, _3278) / (_3435 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3278))
                    mem[_3450 + 32] = _3435 * Mask(112, 0, _2976) * Mask(112, 0, _3292) / (_3435 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3278))
                    s = (10000 * _3407 * _3435 * Mask(112, 0, _2976) * Mask(112, 0, _3292) / (_3435 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3278)) * 10000 * _3405 * Mask(112, 0, _3278) / (_3435 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3278))) + 1 / 2
                    t = 10000 * _3407 * _3435 * Mask(112, 0, _2976) * Mask(112, 0, _3292) / (_3435 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3278)) * 10000 * _3405 * Mask(112, 0, _3278) / (_3435 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3278))
                    while s < t:
                        require s
                        _2875 = mem[96]
                        s = (10000 * _3407 * _3435 * Mask(112, 0, _2976) * Mask(112, 0, _3292) / (_3435 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3278)) * 10000 * _3405 * Mask(112, 0, _3278) / (_3435 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3278)) / s) + s / 2
                        t = s
                        continue 
                    require _3407
                    mem[_3450 + 64] = t - (10000 * 10000 * _3405 * Mask(112, 0, _3278) / (_3435 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3278))) / _3407
                    _2875 = mem[96]
                    s = s + 1
                    s = _3450
                    continue 
                mem[mem[(32 * idx + 1) + _2310 + 32]] = Mask(112, 0, _3292)
                require idx + 1 < mem[_2310]
                mem[mem[(32 * idx + 1) + _2310 + 32] + 32] = Mask(112, 0, _3278)
                _3410 = mem[s]
                _3412 = mem[s + 96]
                require idx + 1 < mem[96]
                _3437 = mem[mem[(32 * idx + 1) + 128] + 64]
                _3451 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3451 + 64] = 0
                mem[_3451 + 96] = _3412
                require (_3437 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3292))
                mem[_3451] = 10000 * _3410 * Mask(112, 0, _3292) / (_3437 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3292))
                mem[_3451 + 32] = _3437 * Mask(112, 0, _2976) * Mask(112, 0, _3278) / (_3437 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3292))
                s = (10000 * _3412 * _3437 * Mask(112, 0, _2976) * Mask(112, 0, _3278) / (_3437 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3292)) * 10000 * _3410 * Mask(112, 0, _3292) / (_3437 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3292))) + 1 / 2
                t = 10000 * _3412 * _3437 * Mask(112, 0, _2976) * Mask(112, 0, _3278) / (_3437 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3292)) * 10000 * _3410 * Mask(112, 0, _3292) / (_3437 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3292))
                while s < t:
                    require s
                    _2875 = mem[96]
                    s = (10000 * _3412 * _3437 * Mask(112, 0, _2976) * Mask(112, 0, _3278) / (_3437 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3292)) * 10000 * _3410 * Mask(112, 0, _3292) / (_3437 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3292)) / s) + s / 2
                    t = s
                    continue 
                require _3412
                mem[_3451 + 64] = t - (10000 * 10000 * _3410 * Mask(112, 0, _3292) / (_3437 * Mask(112, 0, _2976)) + (10000 * Mask(112, 0, _3292))) / _3412
                _2875 = mem[96]
                s = s + 1
                s = _3451
                continue 
            _3145 = mem[(32 * idx) + _2310 + 32]
            require idx < mem[_2310]
            mem[mem[(32 * idx) + _2310 + 32] + 32] = Mask(112, 0, _2943)
            mem[_3145] = Mask(112, 0, _2976)
            require idx < mem[_2310]
            mem[s] = mem[mem[(32 * idx) + _2310 + 32]]
            require idx < mem[_2310]
            mem[s + 32] = Mask(112, 0, _2943)
            require 0 < mem[96]
            mem[s + 96] = mem[mem[128] + 64]
            mem[s + 64] = 0
            require idx + 1 < mem[96]
            require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
            staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3265 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _3279 = mem[_3265]
            require mem[_3265] == mem[_3265 + 18 len 14]
            _3293 = mem[_3265 + 32]
            require mem[_3265 + 32] == mem[_3265 + 50 len 14]
            require mem[_3265 + 64] == mem[_3265 + 92 len 4]
            require idx + 1 < mem[96]
            require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
            staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3327 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3327] == mem[_3327 + 12 len 20]
            require idx + 1 < mem[96]
            require idx + 1 < mem[_2310]
            if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_3327 + 12 len 20]:
                mem[mem[(32 * idx + 1) + _2310 + 32]] = Mask(112, 0, _3279)
                require idx + 1 < mem[_2310]
                mem[mem[(32 * idx + 1) + _2310 + 32] + 32] = Mask(112, 0, _3293)
                _3415 = mem[s]
                _3417 = mem[s + 96]
                require idx + 1 < mem[96]
                _3439 = mem[mem[(32 * idx + 1) + 128] + 64]
                _3452 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3452 + 64] = 0
                mem[_3452 + 96] = _3417
                require (_3439 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3279))
                mem[_3452] = 10000 * _3415 * Mask(112, 0, _3279) / (_3439 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3279))
                mem[_3452 + 32] = _3439 * Mask(112, 0, _2943) * Mask(112, 0, _3293) / (_3439 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3279))
                s = (10000 * _3417 * _3439 * Mask(112, 0, _2943) * Mask(112, 0, _3293) / (_3439 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3279)) * 10000 * _3415 * Mask(112, 0, _3279) / (_3439 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3279))) + 1 / 2
                t = 10000 * _3417 * _3439 * Mask(112, 0, _2943) * Mask(112, 0, _3293) / (_3439 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3279)) * 10000 * _3415 * Mask(112, 0, _3279) / (_3439 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3279))
                while s < t:
                    require s
                    _2875 = mem[96]
                    s = (10000 * _3417 * _3439 * Mask(112, 0, _2943) * Mask(112, 0, _3293) / (_3439 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3279)) * 10000 * _3415 * Mask(112, 0, _3279) / (_3439 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3279)) / s) + s / 2
                    t = s
                    continue 
                require _3417
                mem[_3452 + 64] = t - (10000 * 10000 * _3415 * Mask(112, 0, _3279) / (_3439 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3279))) / _3417
                _2875 = mem[96]
                s = s + 1
                s = _3452
                continue 
            mem[mem[(32 * idx + 1) + _2310 + 32]] = Mask(112, 0, _3293)
            require idx + 1 < mem[_2310]
            mem[mem[(32 * idx + 1) + _2310 + 32] + 32] = Mask(112, 0, _3279)
            _3420 = mem[s]
            _3422 = mem[s + 96]
            require idx + 1 < mem[96]
            _3441 = mem[mem[(32 * idx + 1) + 128] + 64]
            _3453 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3453 + 64] = 0
            mem[_3453 + 96] = _3422
            require (_3441 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3293))
            mem[_3453] = 10000 * _3420 * Mask(112, 0, _3293) / (_3441 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3293))
            mem[_3453 + 32] = _3441 * Mask(112, 0, _2943) * Mask(112, 0, _3279) / (_3441 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3293))
            s = (10000 * _3422 * _3441 * Mask(112, 0, _2943) * Mask(112, 0, _3279) / (_3441 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3293)) * 10000 * _3420 * Mask(112, 0, _3293) / (_3441 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3293))) + 1 / 2
            t = 10000 * _3422 * _3441 * Mask(112, 0, _2943) * Mask(112, 0, _3279) / (_3441 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3293)) * 10000 * _3420 * Mask(112, 0, _3293) / (_3441 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3293))
            while s < t:
                require s
                _2875 = mem[96]
                s = (10000 * _3422 * _3441 * Mask(112, 0, _2943) * Mask(112, 0, _3279) / (_3441 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3293)) * 10000 * _3420 * Mask(112, 0, _3293) / (_3441 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3293)) / s) + s / 2
                t = s
                continue 
            require _3422
            mem[_3453 + 64] = t - (10000 * 10000 * _3420 * Mask(112, 0, _3293) / (_3441 * Mask(112, 0, _2943)) + (10000 * Mask(112, 0, _3293))) / _3422
            _2875 = mem[96]
            s = s + 1
            s = _3453
            continue 
        require 0 < mem[_748]
        mem[mem[_748 + 32] + 64] = mem[s + 64]
        _3511 = mem[96]
        idx = 0
        while idx < _3511:
            require idx < mem[_2310]
            require idx < mem[_748]
            if mem[mem[(32 * idx) + _748 + 32] + 64] > mem[mem[(32 * idx) + _2310 + 32]]:
                return 0
            require idx < mem[96]
            require idx < mem[_748]
            mem[mem[(32 * idx) + _748 + 32]] = mem[mem[(32 * idx) + 128] + 12 len 20]
            require idx < mem[96]
            require idx < mem[_748]
            mem[mem[(32 * idx) + _748 + 32] + 32] = mem[mem[(32 * idx) + 128] + 44 len 20]
            require idx < mem[_748]
            require idx < mem[_2310]
            require idx < mem[_2310]
            require idx < mem[96]
            require (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _748 + 32] + 64]) + (10000 * mem[mem[(32 * idx) + _2310 + 32]])
            require idx < mem[_748]
            mem[mem[(32 * idx) + _748 + 32] + 96] = mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _748 + 32] + 64] * mem[mem[(32 * idx) + _2310 + 32] + 32] / (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _748 + 32] + 64]) + (10000 * mem[mem[(32 * idx) + _2310 + 32]])
            if idx != mem[96] - 1:
                require idx < mem[_748]
                require idx + 1 < mem[_748]
                mem[mem[(32 * idx + 1) + _748 + 32] + 64] = mem[mem[(32 * idx) + _748 + 32] + 96]
            _3511 = mem[96]
            idx = idx + 1
            continue 
        require 0 < mem[_748]
        require mem[96] - 1 < mem[_748]
        _3536 = mem[mem[(32 * mem[96] - 1) + _748 + 32] + 96]
        mem[mem[64]] = mem[mem[_748 + 32] + 64]
        return mem[mem[64]], _3536
    mem[64] = _2310 + (32 * _2300) + 96
    mem[_2310 + (32 * _2300) + 32] = 0
    mem[_2310 + (32 * _2300) + 64] = 0
    mem[var38001] = _2310 + (32 * _2300) + 32
    s = var38001
    idx = var38002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[_2310 + (32 * _2300) + 32] = 0
        mem[_2310 + (32 * _2300) + 64] = 0
        mem[s + 32] = _2310 + (32 * _2300) + 32
        s = s + 32
        idx = idx - 1
        continue 
    _3790 = mem[96]
    idx = 0
    s = _2294
    while idx < _3790 - 1:
        if idx:
            require idx + 1 < mem[96]
            require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
            staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3814 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _3821 = mem[_3814]
            require mem[_3814] == mem[_3814 + 18 len 14]
            _3833 = mem[_3814 + 32]
            require mem[_3814 + 32] == mem[_3814 + 50 len 14]
            require mem[_3814 + 64] == mem[_3814 + 92 len 4]
            require idx + 1 < mem[96]
            require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
            staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3863 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3863] == mem[_3863 + 12 len 20]
            require idx + 1 < mem[96]
            require idx + 1 < mem[_2310]
            if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_3863 + 12 len 20]:
                mem[mem[(32 * idx + 1) + _2310 + 32]] = Mask(112, 0, _3821)
                require idx + 1 < mem[_2310]
                mem[mem[(32 * idx + 1) + _2310 + 32] + 32] = Mask(112, 0, _3833)
                _3893 = mem[s]
                _3894 = mem[s + 32]
                _3895 = mem[s + 96]
                require idx + 1 < mem[96]
                _3907 = mem[mem[(32 * idx + 1) + 128] + 64]
                _3922 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3922 + 64] = 0
                mem[_3922 + 96] = _3895
                require (_3907 * _3894) + (10000 * Mask(112, 0, _3821))
                mem[_3922] = 10000 * _3893 * Mask(112, 0, _3821) / (_3907 * _3894) + (10000 * Mask(112, 0, _3821))
                mem[_3922 + 32] = _3907 * _3894 * Mask(112, 0, _3833) / (_3907 * _3894) + (10000 * Mask(112, 0, _3821))
                s = (10000 * _3895 * _3907 * _3894 * Mask(112, 0, _3833) / (_3907 * _3894) + (10000 * Mask(112, 0, _3821)) * 10000 * _3893 * Mask(112, 0, _3821) / (_3907 * _3894) + (10000 * Mask(112, 0, _3821))) + 1 / 2
                t = 10000 * _3895 * _3907 * _3894 * Mask(112, 0, _3833) / (_3907 * _3894) + (10000 * Mask(112, 0, _3821)) * 10000 * _3893 * Mask(112, 0, _3821) / (_3907 * _3894) + (10000 * Mask(112, 0, _3821))
                while s < t:
                    require s
                    _3790 = mem[96]
                    s = (10000 * _3895 * _3907 * _3894 * Mask(112, 0, _3833) / (_3907 * _3894) + (10000 * Mask(112, 0, _3821)) * 10000 * _3893 * Mask(112, 0, _3821) / (_3907 * _3894) + (10000 * Mask(112, 0, _3821)) / s) + s / 2
                    t = s
                    continue 
                require _3895
                mem[_3922 + 64] = t - (10000 * 10000 * _3893 * Mask(112, 0, _3821) / (_3907 * _3894) + (10000 * Mask(112, 0, _3821))) / _3895
                _3790 = mem[96]
                idx = idx + 1
                s = _3922
                continue 
            mem[mem[(32 * idx + 1) + _2310 + 32]] = Mask(112, 0, _3833)
            require idx + 1 < mem[_2310]
            mem[mem[(32 * idx + 1) + _2310 + 32] + 32] = Mask(112, 0, _3821)
            _3898 = mem[s]
            _3899 = mem[s + 32]
            _3900 = mem[s + 96]
            require idx + 1 < mem[96]
            _3909 = mem[mem[(32 * idx + 1) + 128] + 64]
            _3923 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3923 + 64] = 0
            mem[_3923 + 96] = _3900
            require (_3909 * _3899) + (10000 * Mask(112, 0, _3833))
            mem[_3923] = 10000 * _3898 * Mask(112, 0, _3833) / (_3909 * _3899) + (10000 * Mask(112, 0, _3833))
            mem[_3923 + 32] = _3909 * _3899 * Mask(112, 0, _3821) / (_3909 * _3899) + (10000 * Mask(112, 0, _3833))
            s = (10000 * _3900 * _3909 * _3899 * Mask(112, 0, _3821) / (_3909 * _3899) + (10000 * Mask(112, 0, _3833)) * 10000 * _3898 * Mask(112, 0, _3833) / (_3909 * _3899) + (10000 * Mask(112, 0, _3833))) + 1 / 2
            t = 10000 * _3900 * _3909 * _3899 * Mask(112, 0, _3821) / (_3909 * _3899) + (10000 * Mask(112, 0, _3833)) * 10000 * _3898 * Mask(112, 0, _3833) / (_3909 * _3899) + (10000 * Mask(112, 0, _3833))
            while s < t:
                require s
                _3790 = mem[96]
                s = (10000 * _3900 * _3909 * _3899 * Mask(112, 0, _3821) / (_3909 * _3899) + (10000 * Mask(112, 0, _3833)) * 10000 * _3898 * Mask(112, 0, _3833) / (_3909 * _3899) + (10000 * Mask(112, 0, _3833)) / s) + s / 2
                t = s
                continue 
            require _3900
            mem[_3923 + 64] = t - (10000 * 10000 * _3898 * Mask(112, 0, _3833) / (_3909 * _3899) + (10000 * Mask(112, 0, _3833))) / _3900
            _3790 = mem[96]
            idx = idx + 1
            s = _3923
            continue 
        require idx < mem[96]
        require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
        staticcall mem[mem[(32 * idx) + 128] + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3815 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _3822 = mem[_3815]
        require mem[_3815] == mem[_3815 + 18 len 14]
        _3834 = mem[_3815 + 32]
        require mem[_3815 + 32] == mem[_3815 + 50 len 14]
        require mem[_3815 + 64] == mem[_3815 + 92 len 4]
        require idx < mem[96]
        require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
        staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3864 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3864] == mem[_3864 + 12 len 20]
        require idx < mem[96]
        require idx < mem[_2310]
        if mem[mem[(32 * idx) + 128] + 44 len 20] == mem[_3864 + 12 len 20]:
            _3888 = mem[(32 * idx) + _2310 + 32]
            require idx < mem[_2310]
            mem[mem[(32 * idx) + _2310 + 32] + 32] = Mask(112, 0, _3834)
            mem[_3888] = Mask(112, 0, _3822)
            require idx < mem[_2310]
            mem[s] = mem[mem[(32 * idx) + _2310 + 32]]
            require idx < mem[_2310]
            mem[s + 32] = Mask(112, 0, _3834)
            require 0 < mem[96]
            mem[s + 96] = mem[mem[128] + 64]
            mem[s + 64] = 0
            require idx + 1 < mem[96]
            require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
            staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3940 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _3942 = mem[_3940]
            require mem[_3940] == mem[_3940 + 18 len 14]
            _3944 = mem[_3940 + 32]
            require mem[_3940 + 32] == mem[_3940 + 50 len 14]
            require mem[_3940 + 64] == mem[_3940 + 92 len 4]
            require idx + 1 < mem[96]
            require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
            staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3958 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3958] == mem[_3958 + 12 len 20]
            require idx + 1 < mem[96]
            require idx + 1 < mem[_2310]
            if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_3958 + 12 len 20]:
                mem[mem[(32 * idx + 1) + _2310 + 32]] = Mask(112, 0, _3942)
                require idx + 1 < mem[_2310]
                mem[mem[(32 * idx + 1) + _2310 + 32] + 32] = Mask(112, 0, _3944)
                _3981 = mem[s]
                _3983 = mem[s + 96]
                require idx + 1 < mem[96]
                _4001 = mem[mem[(32 * idx + 1) + 128] + 64]
                _4008 = mem[64]
                mem[64] = mem[64] + 128
                mem[_4008 + 64] = 0
                mem[_4008 + 96] = _3983
                require (_4001 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3942))
                mem[_4008] = 10000 * _3981 * Mask(112, 0, _3942) / (_4001 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3942))
                mem[_4008 + 32] = _4001 * Mask(112, 0, _3834) * Mask(112, 0, _3944) / (_4001 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3942))
                s = (10000 * _3983 * _4001 * Mask(112, 0, _3834) * Mask(112, 0, _3944) / (_4001 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3942)) * 10000 * _3981 * Mask(112, 0, _3942) / (_4001 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3942))) + 1 / 2
                t = 10000 * _3983 * _4001 * Mask(112, 0, _3834) * Mask(112, 0, _3944) / (_4001 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3942)) * 10000 * _3981 * Mask(112, 0, _3942) / (_4001 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3942))
                while s < t:
                    require s
                    _3790 = mem[96]
                    s = (10000 * _3983 * _4001 * Mask(112, 0, _3834) * Mask(112, 0, _3944) / (_4001 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3942)) * 10000 * _3981 * Mask(112, 0, _3942) / (_4001 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3942)) / s) + s / 2
                    t = s
                    continue 
                require _3983
                mem[_4008 + 64] = t - (10000 * 10000 * _3981 * Mask(112, 0, _3942) / (_4001 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3942))) / _3983
                _3790 = mem[96]
                s = s + 1
                s = _4008
                continue 
            mem[mem[(32 * idx + 1) + _2310 + 32]] = Mask(112, 0, _3944)
            require idx + 1 < mem[_2310]
            mem[mem[(32 * idx + 1) + _2310 + 32] + 32] = Mask(112, 0, _3942)
            _3986 = mem[s]
            _3988 = mem[s + 96]
            require idx + 1 < mem[96]
            _4003 = mem[mem[(32 * idx + 1) + 128] + 64]
            _4009 = mem[64]
            mem[64] = mem[64] + 128
            mem[_4009 + 64] = 0
            mem[_4009 + 96] = _3988
            require (_4003 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3944))
            mem[_4009] = 10000 * _3986 * Mask(112, 0, _3944) / (_4003 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3944))
            mem[_4009 + 32] = _4003 * Mask(112, 0, _3834) * Mask(112, 0, _3942) / (_4003 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3944))
            s = (10000 * _3988 * _4003 * Mask(112, 0, _3834) * Mask(112, 0, _3942) / (_4003 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3944)) * 10000 * _3986 * Mask(112, 0, _3944) / (_4003 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3944))) + 1 / 2
            t = 10000 * _3988 * _4003 * Mask(112, 0, _3834) * Mask(112, 0, _3942) / (_4003 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3944)) * 10000 * _3986 * Mask(112, 0, _3944) / (_4003 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3944))
            while s < t:
                require s
                _3790 = mem[96]
                s = (10000 * _3988 * _4003 * Mask(112, 0, _3834) * Mask(112, 0, _3942) / (_4003 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3944)) * 10000 * _3986 * Mask(112, 0, _3944) / (_4003 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3944)) / s) + s / 2
                t = s
                continue 
            require _3988
            mem[_4009 + 64] = t - (10000 * 10000 * _3986 * Mask(112, 0, _3944) / (_4003 * Mask(112, 0, _3834)) + (10000 * Mask(112, 0, _3944))) / _3988
            _3790 = mem[96]
            s = s + 1
            s = _4009
            continue 
        _3890 = mem[(32 * idx) + _2310 + 32]
        require idx < mem[_2310]
        mem[mem[(32 * idx) + _2310 + 32] + 32] = Mask(112, 0, _3822)
        mem[_3890] = Mask(112, 0, _3834)
        require idx < mem[_2310]
        mem[s] = mem[mem[(32 * idx) + _2310 + 32]]
        require idx < mem[_2310]
        mem[s + 32] = Mask(112, 0, _3822)
        require 0 < mem[96]
        mem[s + 96] = mem[mem[128] + 64]
        mem[s + 64] = 0
        require idx + 1 < mem[96]
        require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
        staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3941 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _3943 = mem[_3941]
        require mem[_3941] == mem[_3941 + 18 len 14]
        _3945 = mem[_3941 + 32]
        require mem[_3941 + 32] == mem[_3941 + 50 len 14]
        require mem[_3941 + 64] == mem[_3941 + 92 len 4]
        require idx + 1 < mem[96]
        require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
        staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3959 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3959] == mem[_3959 + 12 len 20]
        require idx + 1 < mem[96]
        require idx + 1 < mem[_2310]
        if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_3959 + 12 len 20]:
            mem[mem[(32 * idx + 1) + _2310 + 32]] = Mask(112, 0, _3943)
            require idx + 1 < mem[_2310]
            mem[mem[(32 * idx + 1) + _2310 + 32] + 32] = Mask(112, 0, _3945)
            _3991 = mem[s]
            _3993 = mem[s + 96]
            require idx + 1 < mem[96]
            _4005 = mem[mem[(32 * idx + 1) + 128] + 64]
            _4010 = mem[64]
            mem[64] = mem[64] + 128
            mem[_4010 + 64] = 0
            mem[_4010 + 96] = _3993
            require (_4005 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3943))
            mem[_4010] = 10000 * _3991 * Mask(112, 0, _3943) / (_4005 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3943))
            mem[_4010 + 32] = _4005 * Mask(112, 0, _3822) * Mask(112, 0, _3945) / (_4005 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3943))
            s = (10000 * _3993 * _4005 * Mask(112, 0, _3822) * Mask(112, 0, _3945) / (_4005 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3943)) * 10000 * _3991 * Mask(112, 0, _3943) / (_4005 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3943))) + 1 / 2
            t = 10000 * _3993 * _4005 * Mask(112, 0, _3822) * Mask(112, 0, _3945) / (_4005 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3943)) * 10000 * _3991 * Mask(112, 0, _3943) / (_4005 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3943))
            while s < t:
                require s
                _3790 = mem[96]
                s = (10000 * _3993 * _4005 * Mask(112, 0, _3822) * Mask(112, 0, _3945) / (_4005 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3943)) * 10000 * _3991 * Mask(112, 0, _3943) / (_4005 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3943)) / s) + s / 2
                t = s
                continue 
            require _3993
            mem[_4010 + 64] = t - (10000 * 10000 * _3991 * Mask(112, 0, _3943) / (_4005 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3943))) / _3993
            _3790 = mem[96]
            s = s + 1
            s = _4010
            continue 
        mem[mem[(32 * idx + 1) + _2310 + 32]] = Mask(112, 0, _3945)
        require idx + 1 < mem[_2310]
        mem[mem[(32 * idx + 1) + _2310 + 32] + 32] = Mask(112, 0, _3943)
        _3996 = mem[s]
        _3998 = mem[s + 96]
        require idx + 1 < mem[96]
        _4007 = mem[mem[(32 * idx + 1) + 128] + 64]
        _4011 = mem[64]
        mem[64] = mem[64] + 128
        mem[_4011 + 64] = 0
        mem[_4011 + 96] = _3998
        require (_4007 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3945))
        mem[_4011] = 10000 * _3996 * Mask(112, 0, _3945) / (_4007 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3945))
        mem[_4011 + 32] = _4007 * Mask(112, 0, _3822) * Mask(112, 0, _3943) / (_4007 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3945))
        s = (10000 * _3998 * _4007 * Mask(112, 0, _3822) * Mask(112, 0, _3943) / (_4007 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3945)) * 10000 * _3996 * Mask(112, 0, _3945) / (_4007 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3945))) + 1 / 2
        t = 10000 * _3998 * _4007 * Mask(112, 0, _3822) * Mask(112, 0, _3943) / (_4007 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3945)) * 10000 * _3996 * Mask(112, 0, _3945) / (_4007 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3945))
        while s < t:
            require s
            _3790 = mem[96]
            s = (10000 * _3998 * _4007 * Mask(112, 0, _3822) * Mask(112, 0, _3943) / (_4007 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3945)) * 10000 * _3996 * Mask(112, 0, _3945) / (_4007 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3945)) / s) + s / 2
            t = s
            continue 
        require _3998
        mem[_4011 + 64] = t - (10000 * 10000 * _3996 * Mask(112, 0, _3945) / (_4007 * Mask(112, 0, _3822)) + (10000 * Mask(112, 0, _3945))) / _3998
        _3790 = mem[96]
        s = s + 1
        s = _4011
        continue 
    require 0 < mem[_748]
    mem[mem[_748 + 32] + 64] = mem[s + 64]
    _4016 = mem[96]
    idx = 0
    while idx < _4016:
        require idx < mem[_2310]
        require idx < mem[_748]
        if mem[mem[(32 * idx) + _748 + 32] + 64] > mem[mem[(32 * idx) + _2310 + 32]]:
            return 0
        require idx < mem[96]
        require idx < mem[_748]
        mem[mem[(32 * idx) + _748 + 32]] = mem[mem[(32 * idx) + 128] + 12 len 20]
        require idx < mem[96]
        require idx < mem[_748]
        mem[mem[(32 * idx) + _748 + 32] + 32] = mem[mem[(32 * idx) + 128] + 44 len 20]
        require idx < mem[_748]
        require idx < mem[_2310]
        require idx < mem[_2310]
        require idx < mem[96]
        require (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _748 + 32] + 64]) + (10000 * mem[mem[(32 * idx) + _2310 + 32]])
        require idx < mem[_748]
        mem[mem[(32 * idx) + _748 + 32] + 96] = mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _748 + 32] + 64] * mem[mem[(32 * idx) + _2310 + 32] + 32] / (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _748 + 32] + 64]) + (10000 * mem[mem[(32 * idx) + _2310 + 32]])
        if idx != mem[96] - 1:
            require idx < mem[_748]
            require idx + 1 < mem[_748]
            mem[mem[(32 * idx + 1) + _748 + 32] + 64] = mem[mem[(32 * idx) + _748 + 32] + 96]
        _4016 = mem[96]
        idx = idx + 1
        continue 
    require 0 < mem[_748]
    require mem[96] - 1 < mem[_748]
    _4027 = mem[mem[(32 * mem[96] - 1) + _748 + 32] + 96]
    mem[mem[64]] = mem[mem[_748 + 32] + 64]
    return mem[mem[64]], _4027
}



}
