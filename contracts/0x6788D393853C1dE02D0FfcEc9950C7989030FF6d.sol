contract main {




// =====================  Runtime code  =====================


#
#  - yetiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;

function _fallback() payable {
    revert
}

function sqrt(uint256 arg1) payable {
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

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function calculAmount(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
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

function zeroCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
                call address(_579).0xa9059cbb with:
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
            call address(_636).0xa9059cbb with:
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
            call address(_637).0xa9059cbb with:
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
                call address(_588).0xa9059cbb with:
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
            call address(_640).0xa9059cbb with:
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
            call address(_641).0xa9059cbb with:
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

function oliveCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
                call address(_579).0xa9059cbb with:
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
            call address(_636).0xa9059cbb with:
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
            call address(_637).0xa9059cbb with:
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
                call address(_588).0xa9059cbb with:
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
            call address(_640).0xa9059cbb with:
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
            call address(_641).0xa9059cbb with:
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

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
                call address(_579).0xa9059cbb with:
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
            call address(_636).0xa9059cbb with:
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
            call address(_637).0xa9059cbb with:
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
                call address(_588).0xa9059cbb with:
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
            call address(_640).0xa9059cbb with:
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
            call address(_641).0xa9059cbb with:
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

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
                call address(_579).0xa9059cbb with:
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
            call address(_636).0xa9059cbb with:
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
            call address(_637).0xa9059cbb with:
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
                call address(_588).0xa9059cbb with:
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
            call address(_640).0xa9059cbb with:
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
            call address(_641).0xa9059cbb with:
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

function computeAmount(address arg1, address arg2, uint256[] arg3) payable {
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
        mem[var30001] = _748 + (32 * _747) + (32 * mem[96]) + 192
        s = var30001
        idx = var30002
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
    mem[var25001] = _2273
    s = var25001
    idx = var25002
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
    mem[var37001] = _2310 + (32 * _2300) + 32
    s = var37001
    idx = var37002
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

function startArb(address arg1, address arg2, uint256[] arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 64
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
        _1362 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        require cd[s] == address(cd[s])
        mem[_1362] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_1362 + 32] = cd[(s + 32)]
        mem[_1362 + 64] = cd[(s + 64)]
        mem[t] = _1362
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    require msg.sender == stor0
    _1363 = mem[96]
    require mem[96] <= test266151307()
    _1364 = mem[64]
    mem[mem[64]] = mem[96]
    if not _1363:
        _1365 = mem[64] + (32 * _1363) + 32
        mem[64] = mem[64] + (32 * _1363) + 160
        mem[_1365] = 0
        mem[_1365 + 32] = 0
        mem[_1365 + 64] = 0
        mem[_1365 + 96] = 0
        require mem[96] <= test266151307()
        mem[_1364 + (32 * _1363) + 160] = mem[96]
        mem[64] = _1364 + (32 * _1363) + (32 * mem[96]) + 192
        if not mem[96]:
            _2722 = mem[96]
            idx = 0
            s = _1365
            while idx < _2722 - 1:
                if idx:
                    require idx + 1 < mem[96]
                    require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2748 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2759 = mem[_2748]
                    require mem[_2748] == mem[_2748 + 18 len 14]
                    _2792 = mem[_2748 + 32]
                    require mem[_2748 + 32] == mem[_2748 + 50 len 14]
                    require mem[_2748 + 64] == mem[_2748 + 92 len 4]
                    require idx + 1 < mem[96]
                    require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2939 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2939] == mem[_2939 + 12 len 20]
                    require idx + 1 < mem[96]
                    require idx + 1 < mem[_1364 + (32 * _1363) + 160]
                    if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_2939 + 12 len 20]:
                        mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192]] = Mask(112, 0, _2759)
                        require idx + 1 < mem[_1364 + (32 * _1363) + 160]
                        mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192] + 32] = Mask(112, 0, _2792)
                        _3196 = mem[s]
                        _3197 = mem[s + 32]
                        _3198 = mem[s + 96]
                        require idx + 1 < mem[96]
                        _3237 = mem[mem[(32 * idx + 1) + 128] + 64]
                        _3296 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3296 + 64] = 0
                        mem[_3296 + 96] = _3198
                        require (_3237 * _3197) + (10000 * Mask(112, 0, _2759))
                        mem[_3296] = 10000 * _3196 * Mask(112, 0, _2759) / (_3237 * _3197) + (10000 * Mask(112, 0, _2759))
                        mem[_3296 + 32] = _3237 * _3197 * Mask(112, 0, _2792) / (_3237 * _3197) + (10000 * Mask(112, 0, _2759))
                        s = (10000 * _3198 * _3237 * _3197 * Mask(112, 0, _2792) / (_3237 * _3197) + (10000 * Mask(112, 0, _2759)) * 10000 * _3196 * Mask(112, 0, _2759) / (_3237 * _3197) + (10000 * Mask(112, 0, _2759))) + 1 / 2
                        t = 10000 * _3198 * _3237 * _3197 * Mask(112, 0, _2792) / (_3237 * _3197) + (10000 * Mask(112, 0, _2759)) * 10000 * _3196 * Mask(112, 0, _2759) / (_3237 * _3197) + (10000 * Mask(112, 0, _2759))
                        while s < t:
                            require s
                            _2722 = mem[96]
                            s = (10000 * _3198 * _3237 * _3197 * Mask(112, 0, _2792) / (_3237 * _3197) + (10000 * Mask(112, 0, _2759)) * 10000 * _3196 * Mask(112, 0, _2759) / (_3237 * _3197) + (10000 * Mask(112, 0, _2759)) / s) + s / 2
                            t = s
                            continue 
                        require _3198
                        mem[_3296 + 64] = t - (10000 * 10000 * _3196 * Mask(112, 0, _2759) / (_3237 * _3197) + (10000 * Mask(112, 0, _2759))) / _3198
                        _2722 = mem[96]
                        idx = idx + 1
                        s = _3296
                        continue 
                    mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192]] = Mask(112, 0, _2792)
                    require idx + 1 < mem[_1364 + (32 * _1363) + 160]
                    mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192] + 32] = Mask(112, 0, _2759)
                    _3201 = mem[s]
                    _3202 = mem[s + 32]
                    _3203 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _3239 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _3297 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3297 + 64] = 0
                    mem[_3297 + 96] = _3203
                    require (_3239 * _3202) + (10000 * Mask(112, 0, _2792))
                    mem[_3297] = 10000 * _3201 * Mask(112, 0, _2792) / (_3239 * _3202) + (10000 * Mask(112, 0, _2792))
                    mem[_3297 + 32] = _3239 * _3202 * Mask(112, 0, _2759) / (_3239 * _3202) + (10000 * Mask(112, 0, _2792))
                    s = (10000 * _3203 * _3239 * _3202 * Mask(112, 0, _2759) / (_3239 * _3202) + (10000 * Mask(112, 0, _2792)) * 10000 * _3201 * Mask(112, 0, _2792) / (_3239 * _3202) + (10000 * Mask(112, 0, _2792))) + 1 / 2
                    t = 10000 * _3203 * _3239 * _3202 * Mask(112, 0, _2759) / (_3239 * _3202) + (10000 * Mask(112, 0, _2792)) * 10000 * _3201 * Mask(112, 0, _2792) / (_3239 * _3202) + (10000 * Mask(112, 0, _2792))
                    while s < t:
                        require s
                        _2722 = mem[96]
                        s = (10000 * _3203 * _3239 * _3202 * Mask(112, 0, _2759) / (_3239 * _3202) + (10000 * Mask(112, 0, _2792)) * 10000 * _3201 * Mask(112, 0, _2792) / (_3239 * _3202) + (10000 * Mask(112, 0, _2792)) / s) + s / 2
                        t = s
                        continue 
                    require _3203
                    mem[_3297 + 64] = t - (10000 * 10000 * _3201 * Mask(112, 0, _2792) / (_3239 * _3202) + (10000 * Mask(112, 0, _2792))) / _3203
                    _2722 = mem[96]
                    idx = idx + 1
                    s = _3297
                    continue 
                require idx < mem[96]
                require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2749 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2760 = mem[_2749]
                require mem[_2749] == mem[_2749 + 18 len 14]
                _2793 = mem[_2749 + 32]
                require mem[_2749 + 32] == mem[_2749 + 50 len 14]
                require mem[_2749 + 64] == mem[_2749 + 92 len 4]
                require idx < mem[96]
                require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2940 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2940] == mem[_2940 + 12 len 20]
                require idx < mem[96]
                require idx < mem[_1364 + (32 * _1363) + 160]
                if mem[mem[(32 * idx) + 128] + 44 len 20] == mem[_2940 + 12 len 20]:
                    _3168 = mem[(32 * idx) + _1364 + (32 * _1363) + 192]
                    require idx < mem[_1364 + (32 * _1363) + 160]
                    mem[mem[(32 * idx) + _1364 + (32 * _1363) + 192] + 32] = Mask(112, 0, _2793)
                    mem[_3168] = Mask(112, 0, _2760)
                    require idx < mem[_1364 + (32 * _1363) + 160]
                    mem[s] = mem[mem[(32 * idx) + _1364 + (32 * _1363) + 192]]
                    require idx < mem[_1364 + (32 * _1363) + 160]
                    mem[s + 32] = Mask(112, 0, _2793)
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
                    _3390 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3427 = mem[_3390]
                    require mem[_3390] == mem[_3390 + 18 len 14]
                    _3500 = mem[_3390 + 32]
                    require mem[_3390 + 32] == mem[_3390 + 50 len 14]
                    require mem[_3390 + 64] == mem[_3390 + 92 len 4]
                    require idx + 1 < mem[96]
                    require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3702 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3702] == mem[_3702 + 12 len 20]
                    require idx + 1 < mem[96]
                    require idx + 1 < mem[_1364 + (32 * _1363) + 160]
                    if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_3702 + 12 len 20]:
                        mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192]] = Mask(112, 0, _3427)
                        require idx + 1 < mem[_1364 + (32 * _1363) + 160]
                        mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192] + 32] = Mask(112, 0, _3500)
                        _3886 = mem[s]
                        _3888 = mem[s + 96]
                        require idx + 1 < mem[96]
                        _3912 = mem[mem[(32 * idx + 1) + 128] + 64]
                        _3946 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3946 + 64] = 0
                        mem[_3946 + 96] = _3888
                        require (_3912 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3427))
                        mem[_3946] = 10000 * _3886 * Mask(112, 0, _3427) / (_3912 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3427))
                        mem[_3946 + 32] = _3912 * Mask(112, 0, _2793) * Mask(112, 0, _3500) / (_3912 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3427))
                        s = (10000 * _3888 * _3912 * Mask(112, 0, _2793) * Mask(112, 0, _3500) / (_3912 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3427)) * 10000 * _3886 * Mask(112, 0, _3427) / (_3912 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3427))) + 1 / 2
                        t = 10000 * _3888 * _3912 * Mask(112, 0, _2793) * Mask(112, 0, _3500) / (_3912 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3427)) * 10000 * _3886 * Mask(112, 0, _3427) / (_3912 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3427))
                        while s < t:
                            require s
                            _2722 = mem[96]
                            s = (10000 * _3888 * _3912 * Mask(112, 0, _2793) * Mask(112, 0, _3500) / (_3912 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3427)) * 10000 * _3886 * Mask(112, 0, _3427) / (_3912 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3427)) / s) + s / 2
                            t = s
                            continue 
                        require _3888
                        mem[_3946 + 64] = t - (10000 * 10000 * _3886 * Mask(112, 0, _3427) / (_3912 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3427))) / _3888
                        _2722 = mem[96]
                        s = s + 1
                        s = _3946
                        continue 
                    mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192]] = Mask(112, 0, _3500)
                    require idx + 1 < mem[_1364 + (32 * _1363) + 160]
                    mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192] + 32] = Mask(112, 0, _3427)
                    _3891 = mem[s]
                    _3893 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _3914 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _3947 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3947 + 64] = 0
                    mem[_3947 + 96] = _3893
                    require (_3914 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3500))
                    mem[_3947] = 10000 * _3891 * Mask(112, 0, _3500) / (_3914 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3500))
                    mem[_3947 + 32] = _3914 * Mask(112, 0, _2793) * Mask(112, 0, _3427) / (_3914 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3500))
                    s = (10000 * _3893 * _3914 * Mask(112, 0, _2793) * Mask(112, 0, _3427) / (_3914 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3500)) * 10000 * _3891 * Mask(112, 0, _3500) / (_3914 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3500))) + 1 / 2
                    t = 10000 * _3893 * _3914 * Mask(112, 0, _2793) * Mask(112, 0, _3427) / (_3914 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3500)) * 10000 * _3891 * Mask(112, 0, _3500) / (_3914 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3500))
                    while s < t:
                        require s
                        _2722 = mem[96]
                        s = (10000 * _3893 * _3914 * Mask(112, 0, _2793) * Mask(112, 0, _3427) / (_3914 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3500)) * 10000 * _3891 * Mask(112, 0, _3500) / (_3914 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3500)) / s) + s / 2
                        t = s
                        continue 
                    require _3893
                    mem[_3947 + 64] = t - (10000 * 10000 * _3891 * Mask(112, 0, _3500) / (_3914 * Mask(112, 0, _2793)) + (10000 * Mask(112, 0, _3500))) / _3893
                    _2722 = mem[96]
                    s = s + 1
                    s = _3947
                    continue 
                _3170 = mem[(32 * idx) + _1364 + (32 * _1363) + 192]
                require idx < mem[_1364 + (32 * _1363) + 160]
                mem[mem[(32 * idx) + _1364 + (32 * _1363) + 192] + 32] = Mask(112, 0, _2760)
                mem[_3170] = Mask(112, 0, _2793)
                require idx < mem[_1364 + (32 * _1363) + 160]
                mem[s] = mem[mem[(32 * idx) + _1364 + (32 * _1363) + 192]]
                require idx < mem[_1364 + (32 * _1363) + 160]
                mem[s + 32] = Mask(112, 0, _2760)
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
                _3391 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3428 = mem[_3391]
                require mem[_3391] == mem[_3391 + 18 len 14]
                _3501 = mem[_3391 + 32]
                require mem[_3391 + 32] == mem[_3391 + 50 len 14]
                require mem[_3391 + 64] == mem[_3391 + 92 len 4]
                require idx + 1 < mem[96]
                require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3703 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3703] == mem[_3703 + 12 len 20]
                require idx + 1 < mem[96]
                require idx + 1 < mem[_1364 + (32 * _1363) + 160]
                if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_3703 + 12 len 20]:
                    mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192]] = Mask(112, 0, _3428)
                    require idx + 1 < mem[_1364 + (32 * _1363) + 160]
                    mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192] + 32] = Mask(112, 0, _3501)
                    _3896 = mem[s]
                    _3898 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _3916 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _3948 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3948 + 64] = 0
                    mem[_3948 + 96] = _3898
                    require (_3916 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3428))
                    mem[_3948] = 10000 * _3896 * Mask(112, 0, _3428) / (_3916 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3428))
                    mem[_3948 + 32] = _3916 * Mask(112, 0, _2760) * Mask(112, 0, _3501) / (_3916 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3428))
                    s = (10000 * _3898 * _3916 * Mask(112, 0, _2760) * Mask(112, 0, _3501) / (_3916 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3428)) * 10000 * _3896 * Mask(112, 0, _3428) / (_3916 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3428))) + 1 / 2
                    t = 10000 * _3898 * _3916 * Mask(112, 0, _2760) * Mask(112, 0, _3501) / (_3916 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3428)) * 10000 * _3896 * Mask(112, 0, _3428) / (_3916 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3428))
                    while s < t:
                        require s
                        _2722 = mem[96]
                        s = (10000 * _3898 * _3916 * Mask(112, 0, _2760) * Mask(112, 0, _3501) / (_3916 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3428)) * 10000 * _3896 * Mask(112, 0, _3428) / (_3916 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3428)) / s) + s / 2
                        t = s
                        continue 
                    require _3898
                    mem[_3948 + 64] = t - (10000 * 10000 * _3896 * Mask(112, 0, _3428) / (_3916 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3428))) / _3898
                    _2722 = mem[96]
                    s = s + 1
                    s = _3948
                    continue 
                mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192]] = Mask(112, 0, _3501)
                require idx + 1 < mem[_1364 + (32 * _1363) + 160]
                mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192] + 32] = Mask(112, 0, _3428)
                _3901 = mem[s]
                _3903 = mem[s + 96]
                require idx + 1 < mem[96]
                _3918 = mem[mem[(32 * idx + 1) + 128] + 64]
                _3949 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3949 + 64] = 0
                mem[_3949 + 96] = _3903
                require (_3918 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3501))
                mem[_3949] = 10000 * _3901 * Mask(112, 0, _3501) / (_3918 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3501))
                mem[_3949 + 32] = _3918 * Mask(112, 0, _2760) * Mask(112, 0, _3428) / (_3918 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3501))
                s = (10000 * _3903 * _3918 * Mask(112, 0, _2760) * Mask(112, 0, _3428) / (_3918 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3501)) * 10000 * _3901 * Mask(112, 0, _3501) / (_3918 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3501))) + 1 / 2
                t = 10000 * _3903 * _3918 * Mask(112, 0, _2760) * Mask(112, 0, _3428) / (_3918 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3501)) * 10000 * _3901 * Mask(112, 0, _3501) / (_3918 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3501))
                while s < t:
                    require s
                    _2722 = mem[96]
                    s = (10000 * _3903 * _3918 * Mask(112, 0, _2760) * Mask(112, 0, _3428) / (_3918 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3501)) * 10000 * _3901 * Mask(112, 0, _3501) / (_3918 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3501)) / s) + s / 2
                    t = s
                    continue 
                require _3903
                mem[_3949 + 64] = t - (10000 * 10000 * _3901 * Mask(112, 0, _3501) / (_3918 * Mask(112, 0, _2760)) + (10000 * Mask(112, 0, _3501))) / _3903
                _2722 = mem[96]
                s = s + 1
                s = _3949
                continue 
            require 0 < mem[_1364]
            mem[mem[_1364 + 32] + 64] = mem[s + 64]
            _4119 = mem[96]
            idx = 0
            while idx < _4119:
                require idx < mem[_1364 + (32 * _1363) + 160]
                require idx < mem[_1364]
                if mem[mem[(32 * idx) + _1364 + 32] + 64] <= mem[mem[(32 * idx) + _1364 + (32 * _1363) + 192]]:
                    require idx < mem[96]
                    require idx < mem[_1364]
                    mem[mem[(32 * idx) + _1364 + 32]] = mem[mem[(32 * idx) + 128] + 12 len 20]
                    require idx < mem[96]
                    require idx < mem[_1364]
                    mem[mem[(32 * idx) + _1364 + 32] + 32] = mem[mem[(32 * idx) + 128] + 44 len 20]
                    require idx < mem[_1364]
                    require idx < mem[_1364 + (32 * _1363) + 160]
                    require idx < mem[_1364 + (32 * _1363) + 160]
                    require idx < mem[96]
                    require (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _1364 + 32] + 64]) + (10000 * mem[mem[(32 * idx) + _1364 + (32 * _1363) + 192]])
                    require idx < mem[_1364]
                    mem[mem[(32 * idx) + _1364 + 32] + 96] = mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _1364 + 32] + 64] * mem[mem[(32 * idx) + _1364 + (32 * _1363) + 192] + 32] / (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _1364 + 32] + 64]) + (10000 * mem[mem[(32 * idx) + _1364 + (32 * _1363) + 192]])
                    if idx != mem[96] - 1:
                        require idx < mem[_1364]
                        require idx + 1 < mem[_1364]
                        mem[mem[(32 * idx + 1) + _1364 + 32] + 64] = mem[mem[(32 * idx) + _1364 + 32] + 96]
                    _4119 = mem[96]
                    idx = idx + 1
                    continue 
                require 0 < mem[_1364]
                require mem[96] - 1 < mem[_1364]
                if mem[mem[(32 * mem[96] - 1) + _1364 + 32] + 96] < mem[mem[_1364 + 32] + 64] + arg2:
                    revert with 0, 'nogo'
                _4181 = mem[64]
                mem[mem[64] + 32] = 32
                _4196 = mem[_1364]
                mem[mem[64] + 64] = mem[_1364]
                idx = 0
                s = _1364 + 32
                t = mem[64] + 96
                while idx < _4196:
                    _5345 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_5345 + 44 len 20]
                    mem[t + 64] = mem[_5345 + 64]
                    mem[t + 96] = mem[_5345 + 96]
                    _4119 = mem[96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                _5357 = mem[64]
                mem[mem[64]] = _4181 + (128 * _4196) + -mem[64] + 64
                mem[64] = _4181 + (128 * _4196) + 96
                require 0 < mem[_1364]
                _5369 = mem[mem[_1364 + 32]]
                require 0 < mem[96]
                _5393 = mem[mem[128] + 32]
                require 0 < mem[_1364]
                require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[_4181 + (128 * _4196) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _4181 + (128 * _4196) + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == address(_5393):
                    require 0 < mem[96]
                    _5625 = mem[mem[128] + 32]
                    require 0 < mem[_1364]
                    require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                    staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[_4181 + (128 * _4196) + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != address(_5625):
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 100] = 0
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 132] = 0
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 164] = this.address
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 196] = 128
                        _5864 = mem[_5357]
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 228] = mem[_5357]
                        idx = 0
                        while idx < _5864:
                            mem[idx + _4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 260] = mem[idx + _5357 + 32]
                            _4119 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_5864) > _5864:
                            mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + _5864 + 260] = 0
                        require ext_code.size(address(_5369))
                        call address(_5369).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 228 len ceil32(_5864) + 32]
                    else:
                        require 0 < mem[_1364]
                        _5843 = mem[mem[_1364 + 32] + 96]
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 100] = 0
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 132] = _5843
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 164] = this.address
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 196] = 128
                        _5896 = mem[_5357]
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 228] = mem[_5357]
                        idx = 0
                        while idx < _5896:
                            mem[idx + _4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 260] = mem[idx + _5357 + 32]
                            _4119 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_5896) > _5896:
                            mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + _5896 + 260] = 0
                        require ext_code.size(address(_5369))
                        call address(_5369).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _5843, address(this.address), 128, mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 228 len ceil32(_5896) + 32]
                else:
                    require 0 < mem[_1364]
                    _5587 = mem[mem[_1364 + 32] + 96]
                    require 0 < mem[96]
                    _5672 = mem[mem[128] + 32]
                    require 0 < mem[_1364]
                    require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                    staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[_4181 + (128 * _4196) + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != address(_5672):
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 100] = _5587
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 132] = 0
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 164] = this.address
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 196] = 128
                        _5898 = mem[_5357]
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 228] = mem[_5357]
                        idx = 0
                        while idx < _5898:
                            mem[idx + _4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 260] = mem[idx + _5357 + 32]
                            _4119 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_5898) > _5898:
                            mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + _5898 + 260] = 0
                        require ext_code.size(address(_5369))
                        call address(_5369).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _5587, 0, address(this.address), 128, mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 228 len ceil32(_5898) + 32]
                    else:
                        require 0 < mem[_1364]
                        _5866 = mem[mem[_1364 + 32] + 96]
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 100] = _5587
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 132] = _5866
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 164] = this.address
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 196] = 128
                        _5945 = mem[_5357]
                        mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 228] = mem[_5357]
                        idx = 0
                        while idx < _5945:
                            mem[idx + _4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 260] = mem[idx + _5357 + 32]
                            _4119 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_5945) > _5945:
                            mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + _5945 + 260] = 0
                        require ext_code.size(address(_5369))
                        call address(_5369).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _5587, _5866, address(this.address), 128, mem[_4181 + (128 * _4196) + (2 * ceil32(return_data.size)) + 228 len ceil32(_5945) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require 0 < mem[_1364]
            require mem[96] - 1 < mem[_1364]
            require 0 < mem[_1364]
            require mem[96] - 1 < mem[_1364]
            if mem[mem[(32 * mem[96] - 1) + _1364 + 32] + 96] < mem[mem[_1364 + 32] + 64] + arg2:
                revert with 0, 'nogo'
            _4169 = mem[64]
            mem[mem[64] + 32] = 32
            _4177 = mem[_1364]
            mem[mem[64] + 64] = mem[_1364]
            idx = 0
            s = _1364 + 32
            t = mem[64] + 96
            while idx < _4177:
                _5340 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_5340 + 44 len 20]
                mem[t + 64] = mem[_5340 + 64]
                mem[t + 96] = mem[_5340 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            _5355 = mem[64]
            mem[mem[64]] = _4169 + (128 * _4177) + -mem[64] + 64
            mem[64] = _4169 + (128 * _4177) + 96
            require 0 < mem[_1364]
            _5366 = mem[mem[_1364 + 32]]
            require 0 < mem[96]
            _5390 = mem[mem[128] + 32]
            require 0 < mem[_1364]
            require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
            staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[_4169 + (128 * _4177) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _4169 + (128 * _4177) + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == address(_5390):
                require 0 < mem[96]
                _5621 = mem[mem[128] + 32]
                require 0 < mem[_1364]
                require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[_4169 + (128 * _4177) + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != address(_5621):
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 100] = 0
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 132] = 0
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 164] = this.address
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 196] = 128
                    _5859 = mem[_5355]
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 228] = mem[_5355]
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 260 len ceil32(_5859)] = mem[_5355 + 32 len ceil32(_5859)]
                    if ceil32(_5859) > _5859:
                        mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + _5859 + 260] = 0
                    require ext_code.size(address(_5366))
                    call address(_5366).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 228 len ceil32(_5859) + 32]
                else:
                    require 0 < mem[_1364]
                    _5839 = mem[mem[_1364 + 32] + 96]
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 100] = 0
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 132] = _5839
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 164] = this.address
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 196] = 128
                    _5893 = mem[_5355]
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 228] = mem[_5355]
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 260 len ceil32(_5893)] = mem[_5355 + 32 len ceil32(_5893)]
                    var76001 = ceil32(_5893)
                    if ceil32(_5893) > _5893:
                        mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + _5893 + 260] = 0
                    require ext_code.size(address(_5366))
                    call address(_5366).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _5839, address(this.address), 128, mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 228 len ceil32(_5893) + 32]
            else:
                require 0 < mem[_1364]
                _5584 = mem[mem[_1364 + 32] + 96]
                require 0 < mem[96]
                _5665 = mem[mem[128] + 32]
                require 0 < mem[_1364]
                require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[_4169 + (128 * _4177) + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != address(_5665):
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 100] = _5584
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 132] = 0
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 164] = this.address
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 196] = 128
                    _5895 = mem[_5355]
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 228] = mem[_5355]
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 260 len ceil32(_5895)] = mem[_5355 + 32 len ceil32(_5895)]
                    var76001 = ceil32(_5895)
                    if ceil32(_5895) > _5895:
                        mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + _5895 + 260] = 0
                    require ext_code.size(address(_5366))
                    call address(_5366).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _5584, 0, address(this.address), 128, mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 228 len ceil32(_5895) + 32]
                else:
                    require 0 < mem[_1364]
                    _5861 = mem[mem[_1364 + 32] + 96]
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 100] = _5584
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 132] = _5861
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 164] = this.address
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 196] = 128
                    _5943 = mem[_5355]
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 228] = mem[_5355]
                    mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 260 len ceil32(_5943)] = mem[_5355 + 32 len ceil32(_5943)]
                    var77001 = ceil32(_5943)
                    if ceil32(_5943) > _5943:
                        mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + _5943 + 260] = 0
                    require ext_code.size(address(_5366))
                    call address(_5366).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _5584, _5861, address(this.address), 128, mem[_4169 + (128 * _4177) + (2 * ceil32(return_data.size)) + 228 len ceil32(_5943) + 32]
        else:
            _4120 = _1364 + (32 * _1363) + (32 * mem[96]) + 192
            mem[64] = _1364 + (32 * _1363) + (32 * mem[96]) + 256
            mem[_1364 + (32 * _1363) + (32 * mem[96]) + 192] = 0
            mem[_1364 + (32 * _1363) + (32 * mem[96]) + 224] = 0
            mem[var31001] = _1364 + (32 * _1363) + (32 * mem[96]) + 192
            s = var31001
            idx = var31002
            while idx - 1:
                _4120 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4120] = 0
                mem[_4120 + 32] = 0
                mem[s + 32] = _4120
                s = s + 32
                idx = idx - 1
                continue 
            _5338 = mem[96]
            idx = 0
            s = _1365
            while idx < _5338 - 1:
                if idx:
                    require idx + 1 < mem[96]
                    require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5414 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _5439 = mem[_5414]
                    require mem[_5414] == mem[_5414 + 18 len 14]
                    _5486 = mem[_5414 + 32]
                    require mem[_5414 + 32] == mem[_5414 + 50 len 14]
                    require mem[_5414 + 64] == mem[_5414 + 92 len 4]
                    require idx + 1 < mem[96]
                    require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5708 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5708] == mem[_5708 + 12 len 20]
                    require idx + 1 < mem[96]
                    require idx + 1 < mem[_1364 + (32 * _1363) + 160]
                    if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_5708 + 12 len 20]:
                        mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192]] = Mask(112, 0, _5439)
                        require idx + 1 < mem[_1364 + (32 * _1363) + 160]
                        mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192] + 32] = Mask(112, 0, _5486)
                        _5907 = mem[s]
                        _5908 = mem[s + 32]
                        _5909 = mem[s + 96]
                        require idx + 1 < mem[96]
                        _5958 = mem[mem[(32 * idx + 1) + 128] + 64]
                        _6037 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_6037 + 64] = 0
                        mem[_6037 + 96] = _5909
                        require (_5958 * _5908) + (10000 * Mask(112, 0, _5439))
                        mem[_6037] = 10000 * _5907 * Mask(112, 0, _5439) / (_5958 * _5908) + (10000 * Mask(112, 0, _5439))
                        mem[_6037 + 32] = _5958 * _5908 * Mask(112, 0, _5486) / (_5958 * _5908) + (10000 * Mask(112, 0, _5439))
                        s = (10000 * _5909 * _5958 * _5908 * Mask(112, 0, _5486) / (_5958 * _5908) + (10000 * Mask(112, 0, _5439)) * 10000 * _5907 * Mask(112, 0, _5439) / (_5958 * _5908) + (10000 * Mask(112, 0, _5439))) + 1 / 2
                        t = 10000 * _5909 * _5958 * _5908 * Mask(112, 0, _5486) / (_5958 * _5908) + (10000 * Mask(112, 0, _5439)) * 10000 * _5907 * Mask(112, 0, _5439) / (_5958 * _5908) + (10000 * Mask(112, 0, _5439))
                        while s < t:
                            require s
                            _5338 = mem[96]
                            s = (10000 * _5909 * _5958 * _5908 * Mask(112, 0, _5486) / (_5958 * _5908) + (10000 * Mask(112, 0, _5439)) * 10000 * _5907 * Mask(112, 0, _5439) / (_5958 * _5908) + (10000 * Mask(112, 0, _5439)) / s) + s / 2
                            t = s
                            continue 
                        require _5909
                        mem[_6037 + 64] = t - (10000 * 10000 * _5907 * Mask(112, 0, _5439) / (_5958 * _5908) + (10000 * Mask(112, 0, _5439))) / _5909
                        _5338 = mem[96]
                        idx = idx + 1
                        s = _6037
                        continue 
                    mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192]] = Mask(112, 0, _5486)
                    require idx + 1 < mem[_1364 + (32 * _1363) + 160]
                    mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192] + 32] = Mask(112, 0, _5439)
                    _5912 = mem[s]
                    _5913 = mem[s + 32]
                    _5914 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _5960 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _6038 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_6038 + 64] = 0
                    mem[_6038 + 96] = _5914
                    require (_5960 * _5913) + (10000 * Mask(112, 0, _5486))
                    mem[_6038] = 10000 * _5912 * Mask(112, 0, _5486) / (_5960 * _5913) + (10000 * Mask(112, 0, _5486))
                    mem[_6038 + 32] = _5960 * _5913 * Mask(112, 0, _5439) / (_5960 * _5913) + (10000 * Mask(112, 0, _5486))
                    s = (10000 * _5914 * _5960 * _5913 * Mask(112, 0, _5439) / (_5960 * _5913) + (10000 * Mask(112, 0, _5486)) * 10000 * _5912 * Mask(112, 0, _5486) / (_5960 * _5913) + (10000 * Mask(112, 0, _5486))) + 1 / 2
                    t = 10000 * _5914 * _5960 * _5913 * Mask(112, 0, _5439) / (_5960 * _5913) + (10000 * Mask(112, 0, _5486)) * 10000 * _5912 * Mask(112, 0, _5486) / (_5960 * _5913) + (10000 * Mask(112, 0, _5486))
                    while s < t:
                        require s
                        _5338 = mem[96]
                        s = (10000 * _5914 * _5960 * _5913 * Mask(112, 0, _5439) / (_5960 * _5913) + (10000 * Mask(112, 0, _5486)) * 10000 * _5912 * Mask(112, 0, _5486) / (_5960 * _5913) + (10000 * Mask(112, 0, _5486)) / s) + s / 2
                        t = s
                        continue 
                    require _5914
                    mem[_6038 + 64] = t - (10000 * 10000 * _5912 * Mask(112, 0, _5486) / (_5960 * _5913) + (10000 * Mask(112, 0, _5486))) / _5914
                    _5338 = mem[96]
                    idx = idx + 1
                    s = _6038
                    continue 
                require idx < mem[96]
                require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5415 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _5440 = mem[_5415]
                require mem[_5415] == mem[_5415 + 18 len 14]
                _5487 = mem[_5415 + 32]
                require mem[_5415 + 32] == mem[_5415 + 50 len 14]
                require mem[_5415 + 64] == mem[_5415 + 92 len 4]
                require idx < mem[96]
                require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5709 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5709] == mem[_5709 + 12 len 20]
                require idx < mem[96]
                require idx < mem[_1364 + (32 * _1363) + 160]
                if mem[mem[(32 * idx) + 128] + 44 len 20] == mem[_5709 + 12 len 20]:
                    _5876 = mem[(32 * idx) + _1364 + (32 * _1363) + 192]
                    require idx < mem[_1364 + (32 * _1363) + 160]
                    mem[mem[(32 * idx) + _1364 + (32 * _1363) + 192] + 32] = Mask(112, 0, _5487)
                    mem[_5876] = Mask(112, 0, _5440)
                    require idx < mem[_1364 + (32 * _1363) + 160]
                    mem[s] = mem[mem[(32 * idx) + _1364 + (32 * _1363) + 192]]
                    require idx < mem[_1364 + (32 * _1363) + 160]
                    mem[s + 32] = Mask(112, 0, _5487)
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
                    _6144 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _6175 = mem[_6144]
                    require mem[_6144] == mem[_6144 + 18 len 14]
                    _6216 = mem[_6144 + 32]
                    require mem[_6144 + 32] == mem[_6144 + 50 len 14]
                    require mem[_6144 + 64] == mem[_6144 + 92 len 4]
                    require idx + 1 < mem[96]
                    require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6361 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6361] == mem[_6361 + 12 len 20]
                    require idx + 1 < mem[96]
                    require idx + 1 < mem[_1364 + (32 * _1363) + 160]
                    if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_6361 + 12 len 20]:
                        mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192]] = Mask(112, 0, _6175)
                        require idx + 1 < mem[_1364 + (32 * _1363) + 160]
                        mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192] + 32] = Mask(112, 0, _6216)
                        _6447 = mem[s]
                        _6449 = mem[s + 96]
                        require idx + 1 < mem[96]
                        _6489 = mem[mem[(32 * idx + 1) + 128] + 64]
                        _6508 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_6508 + 64] = 0
                        mem[_6508 + 96] = _6449
                        require (_6489 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6175))
                        mem[_6508] = 10000 * _6447 * Mask(112, 0, _6175) / (_6489 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6175))
                        mem[_6508 + 32] = _6489 * Mask(112, 0, _5487) * Mask(112, 0, _6216) / (_6489 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6175))
                        s = (10000 * _6449 * _6489 * Mask(112, 0, _5487) * Mask(112, 0, _6216) / (_6489 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6175)) * 10000 * _6447 * Mask(112, 0, _6175) / (_6489 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6175))) + 1 / 2
                        t = 10000 * _6449 * _6489 * Mask(112, 0, _5487) * Mask(112, 0, _6216) / (_6489 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6175)) * 10000 * _6447 * Mask(112, 0, _6175) / (_6489 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6175))
                        while s < t:
                            require s
                            _5338 = mem[96]
                            s = (10000 * _6449 * _6489 * Mask(112, 0, _5487) * Mask(112, 0, _6216) / (_6489 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6175)) * 10000 * _6447 * Mask(112, 0, _6175) / (_6489 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6175)) / s) + s / 2
                            t = s
                            continue 
                        require _6449
                        mem[_6508 + 64] = t - (10000 * 10000 * _6447 * Mask(112, 0, _6175) / (_6489 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6175))) / _6449
                        _5338 = mem[96]
                        s = s + 1
                        s = _6508
                        continue 
                    mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192]] = Mask(112, 0, _6216)
                    require idx + 1 < mem[_1364 + (32 * _1363) + 160]
                    mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192] + 32] = Mask(112, 0, _6175)
                    _6452 = mem[s]
                    _6454 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _6491 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _6509 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_6509 + 64] = 0
                    mem[_6509 + 96] = _6454
                    require (_6491 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6216))
                    mem[_6509] = 10000 * _6452 * Mask(112, 0, _6216) / (_6491 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6216))
                    mem[_6509 + 32] = _6491 * Mask(112, 0, _5487) * Mask(112, 0, _6175) / (_6491 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6216))
                    s = (10000 * _6454 * _6491 * Mask(112, 0, _5487) * Mask(112, 0, _6175) / (_6491 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6216)) * 10000 * _6452 * Mask(112, 0, _6216) / (_6491 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6216))) + 1 / 2
                    t = 10000 * _6454 * _6491 * Mask(112, 0, _5487) * Mask(112, 0, _6175) / (_6491 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6216)) * 10000 * _6452 * Mask(112, 0, _6216) / (_6491 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6216))
                    while s < t:
                        require s
                        _5338 = mem[96]
                        s = (10000 * _6454 * _6491 * Mask(112, 0, _5487) * Mask(112, 0, _6175) / (_6491 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6216)) * 10000 * _6452 * Mask(112, 0, _6216) / (_6491 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6216)) / s) + s / 2
                        t = s
                        continue 
                    require _6454
                    mem[_6509 + 64] = t - (10000 * 10000 * _6452 * Mask(112, 0, _6216) / (_6491 * Mask(112, 0, _5487)) + (10000 * Mask(112, 0, _6216))) / _6454
                    _5338 = mem[96]
                    s = s + 1
                    s = _6509
                    continue 
                _5878 = mem[(32 * idx) + _1364 + (32 * _1363) + 192]
                require idx < mem[_1364 + (32 * _1363) + 160]
                mem[mem[(32 * idx) + _1364 + (32 * _1363) + 192] + 32] = Mask(112, 0, _5440)
                mem[_5878] = Mask(112, 0, _5487)
                require idx < mem[_1364 + (32 * _1363) + 160]
                mem[s] = mem[mem[(32 * idx) + _1364 + (32 * _1363) + 192]]
                require idx < mem[_1364 + (32 * _1363) + 160]
                mem[s + 32] = Mask(112, 0, _5440)
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
                _6145 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _6176 = mem[_6145]
                require mem[_6145] == mem[_6145 + 18 len 14]
                _6217 = mem[_6145 + 32]
                require mem[_6145 + 32] == mem[_6145 + 50 len 14]
                require mem[_6145 + 64] == mem[_6145 + 92 len 4]
                require idx + 1 < mem[96]
                require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6362 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6362] == mem[_6362 + 12 len 20]
                require idx + 1 < mem[96]
                require idx + 1 < mem[_1364 + (32 * _1363) + 160]
                if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_6362 + 12 len 20]:
                    mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192]] = Mask(112, 0, _6176)
                    require idx + 1 < mem[_1364 + (32 * _1363) + 160]
                    mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192] + 32] = Mask(112, 0, _6217)
                    _6457 = mem[s]
                    _6459 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _6493 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _6510 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_6510 + 64] = 0
                    mem[_6510 + 96] = _6459
                    require (_6493 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6176))
                    mem[_6510] = 10000 * _6457 * Mask(112, 0, _6176) / (_6493 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6176))
                    mem[_6510 + 32] = _6493 * Mask(112, 0, _5440) * Mask(112, 0, _6217) / (_6493 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6176))
                    s = (10000 * _6459 * _6493 * Mask(112, 0, _5440) * Mask(112, 0, _6217) / (_6493 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6176)) * 10000 * _6457 * Mask(112, 0, _6176) / (_6493 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6176))) + 1 / 2
                    t = 10000 * _6459 * _6493 * Mask(112, 0, _5440) * Mask(112, 0, _6217) / (_6493 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6176)) * 10000 * _6457 * Mask(112, 0, _6176) / (_6493 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6176))
                    while s < t:
                        require s
                        _5338 = mem[96]
                        s = (10000 * _6459 * _6493 * Mask(112, 0, _5440) * Mask(112, 0, _6217) / (_6493 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6176)) * 10000 * _6457 * Mask(112, 0, _6176) / (_6493 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6176)) / s) + s / 2
                        t = s
                        continue 
                    require _6459
                    mem[_6510 + 64] = t - (10000 * 10000 * _6457 * Mask(112, 0, _6176) / (_6493 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6176))) / _6459
                    _5338 = mem[96]
                    s = s + 1
                    s = _6510
                    continue 
                mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192]] = Mask(112, 0, _6217)
                require idx + 1 < mem[_1364 + (32 * _1363) + 160]
                mem[mem[(32 * idx + 1) + _1364 + (32 * _1363) + 192] + 32] = Mask(112, 0, _6176)
                _6462 = mem[s]
                _6464 = mem[s + 96]
                require idx + 1 < mem[96]
                _6495 = mem[mem[(32 * idx + 1) + 128] + 64]
                _6511 = mem[64]
                mem[64] = mem[64] + 128
                mem[_6511 + 64] = 0
                mem[_6511 + 96] = _6464
                require (_6495 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6217))
                mem[_6511] = 10000 * _6462 * Mask(112, 0, _6217) / (_6495 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6217))
                mem[_6511 + 32] = _6495 * Mask(112, 0, _5440) * Mask(112, 0, _6176) / (_6495 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6217))
                s = (10000 * _6464 * _6495 * Mask(112, 0, _5440) * Mask(112, 0, _6176) / (_6495 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6217)) * 10000 * _6462 * Mask(112, 0, _6217) / (_6495 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6217))) + 1 / 2
                t = 10000 * _6464 * _6495 * Mask(112, 0, _5440) * Mask(112, 0, _6176) / (_6495 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6217)) * 10000 * _6462 * Mask(112, 0, _6217) / (_6495 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6217))
                while s < t:
                    require s
                    _5338 = mem[96]
                    s = (10000 * _6464 * _6495 * Mask(112, 0, _5440) * Mask(112, 0, _6176) / (_6495 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6217)) * 10000 * _6462 * Mask(112, 0, _6217) / (_6495 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6217)) / s) + s / 2
                    t = s
                    continue 
                require _6464
                mem[_6511 + 64] = t - (10000 * 10000 * _6462 * Mask(112, 0, _6217) / (_6495 * Mask(112, 0, _5440)) + (10000 * Mask(112, 0, _6217))) / _6464
                _5338 = mem[96]
                s = s + 1
                s = _6511
                continue 
            require 0 < mem[_1364]
            mem[mem[_1364 + 32] + 64] = mem[s + 64]
            _6572 = mem[96]
            idx = 0
            while idx < _6572:
                require idx < mem[_1364 + (32 * _1363) + 160]
                require idx < mem[_1364]
                if mem[mem[(32 * idx) + _1364 + 32] + 64] <= mem[mem[(32 * idx) + _1364 + (32 * _1363) + 192]]:
                    require idx < mem[96]
                    require idx < mem[_1364]
                    mem[mem[(32 * idx) + _1364 + 32]] = mem[mem[(32 * idx) + 128] + 12 len 20]
                    require idx < mem[96]
                    require idx < mem[_1364]
                    mem[mem[(32 * idx) + _1364 + 32] + 32] = mem[mem[(32 * idx) + 128] + 44 len 20]
                    require idx < mem[_1364]
                    require idx < mem[_1364 + (32 * _1363) + 160]
                    require idx < mem[_1364 + (32 * _1363) + 160]
                    require idx < mem[96]
                    require (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _1364 + 32] + 64]) + (10000 * mem[mem[(32 * idx) + _1364 + (32 * _1363) + 192]])
                    require idx < mem[_1364]
                    mem[mem[(32 * idx) + _1364 + 32] + 96] = mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _1364 + 32] + 64] * mem[mem[(32 * idx) + _1364 + (32 * _1363) + 192] + 32] / (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _1364 + 32] + 64]) + (10000 * mem[mem[(32 * idx) + _1364 + (32 * _1363) + 192]])
                    if idx != mem[96] - 1:
                        require idx < mem[_1364]
                        require idx + 1 < mem[_1364]
                        mem[mem[(32 * idx + 1) + _1364 + 32] + 64] = mem[mem[(32 * idx) + _1364 + 32] + 96]
                    _6572 = mem[96]
                    idx = idx + 1
                    continue 
                require 0 < mem[_1364]
                require mem[96] - 1 < mem[_1364]
                if mem[mem[(32 * mem[96] - 1) + _1364 + 32] + 96] < mem[mem[_1364 + 32] + 64] + arg2:
                    revert with 0, 'nogo'
                _6695 = mem[64]
                mem[mem[64] + 32] = 32
                _6715 = mem[_1364]
                mem[mem[64] + 64] = mem[_1364]
                idx = 0
                s = _1364 + 32
                t = mem[64] + 96
                while idx < _6715:
                    _7344 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_7344 + 44 len 20]
                    mem[t + 64] = mem[_7344 + 64]
                    mem[t + 96] = mem[_7344 + 96]
                    _6572 = mem[96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                _7363 = mem[64]
                mem[mem[64]] = _6695 + (128 * _6715) + -mem[64] + 64
                mem[64] = _6695 + (128 * _6715) + 96
                require 0 < mem[_1364]
                _7376 = mem[mem[_1364 + 32]]
                require 0 < mem[96]
                _7397 = mem[mem[128] + 32]
                require 0 < mem[_1364]
                require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[_6695 + (128 * _6715) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _6695 + (128 * _6715) + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == address(_7397):
                    require 0 < mem[96]
                    _7529 = mem[mem[128] + 32]
                    require 0 < mem[_1364]
                    require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                    staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[_6695 + (128 * _6715) + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != address(_7529):
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 100] = 0
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 132] = 0
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 164] = this.address
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 196] = 128
                        _7683 = mem[_7363]
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 228] = mem[_7363]
                        idx = 0
                        while idx < _7683:
                            mem[idx + _6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 260] = mem[idx + _7363 + 32]
                            _6572 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_7683) > _7683:
                            mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + _7683 + 260] = 0
                        require ext_code.size(address(_7376))
                        call address(_7376).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 228 len ceil32(_7683) + 32]
                    else:
                        require 0 < mem[_1364]
                        _7661 = mem[mem[_1364 + 32] + 96]
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 100] = 0
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 132] = _7661
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 164] = this.address
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 196] = 128
                        _7712 = mem[_7363]
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 228] = mem[_7363]
                        idx = 0
                        while idx < _7712:
                            mem[idx + _6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 260] = mem[idx + _7363 + 32]
                            _6572 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_7712) > _7712:
                            mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + _7712 + 260] = 0
                        require ext_code.size(address(_7376))
                        call address(_7376).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _7661, address(this.address), 128, mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 228 len ceil32(_7712) + 32]
                else:
                    require 0 < mem[_1364]
                    _7506 = mem[mem[_1364 + 32] + 96]
                    require 0 < mem[96]
                    _7565 = mem[mem[128] + 32]
                    require 0 < mem[_1364]
                    require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                    staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[_6695 + (128 * _6715) + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != address(_7565):
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 100] = _7506
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 132] = 0
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 164] = this.address
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 196] = 128
                        _7714 = mem[_7363]
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 228] = mem[_7363]
                        idx = 0
                        while idx < _7714:
                            mem[idx + _6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 260] = mem[idx + _7363 + 32]
                            _6572 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_7714) > _7714:
                            mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + _7714 + 260] = 0
                        require ext_code.size(address(_7376))
                        call address(_7376).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _7506, 0, address(this.address), 128, mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 228 len ceil32(_7714) + 32]
                    else:
                        require 0 < mem[_1364]
                        _7685 = mem[mem[_1364 + 32] + 96]
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 100] = _7506
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 132] = _7685
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 164] = this.address
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 196] = 128
                        _7745 = mem[_7363]
                        mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 228] = mem[_7363]
                        idx = 0
                        while idx < _7745:
                            mem[idx + _6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 260] = mem[idx + _7363 + 32]
                            _6572 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_7745) > _7745:
                            mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + _7745 + 260] = 0
                        require ext_code.size(address(_7376))
                        call address(_7376).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _7506, _7685, address(this.address), 128, mem[_6695 + (128 * _6715) + (2 * ceil32(return_data.size)) + 228 len ceil32(_7745) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require 0 < mem[_1364]
            require mem[96] - 1 < mem[_1364]
            require 0 < mem[_1364]
            require mem[96] - 1 < mem[_1364]
            if mem[mem[(32 * mem[96] - 1) + _1364 + 32] + 96] < mem[mem[_1364 + 32] + 64] + arg2:
                revert with 0, 'nogo'
            _6677 = mem[64]
            mem[mem[64] + 32] = 32
            _6691 = mem[_1364]
            mem[mem[64] + 64] = mem[_1364]
            idx = 0
            s = _1364 + 32
            t = mem[64] + 96
            while idx < _6691:
                _7339 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_7339 + 44 len 20]
                mem[t + 64] = mem[_7339 + 64]
                mem[t + 96] = mem[_7339 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            _7361 = mem[64]
            mem[mem[64]] = _6677 + (128 * _6691) + -mem[64] + 64
            mem[64] = _6677 + (128 * _6691) + 96
            require 0 < mem[_1364]
            _7373 = mem[mem[_1364 + 32]]
            require 0 < mem[96]
            _7394 = mem[mem[128] + 32]
            require 0 < mem[_1364]
            require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
            staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[_6677 + (128 * _6691) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _6677 + (128 * _6691) + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == address(_7394):
                require 0 < mem[96]
                _7525 = mem[mem[128] + 32]
                require 0 < mem[_1364]
                require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[_6677 + (128 * _6691) + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != address(_7525):
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 100] = 0
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 132] = 0
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 164] = this.address
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 196] = 128
                    _7678 = mem[_7361]
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 228] = mem[_7361]
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 260 len ceil32(_7678)] = mem[_7361 + 32 len ceil32(_7678)]
                    if ceil32(_7678) > _7678:
                        mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + _7678 + 260] = 0
                    require ext_code.size(address(_7373))
                    call address(_7373).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 228 len ceil32(_7678) + 32]
                else:
                    require 0 < mem[_1364]
                    _7657 = mem[mem[_1364 + 32] + 96]
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 100] = 0
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 132] = _7657
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 164] = this.address
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 196] = 128
                    _7709 = mem[_7361]
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 228] = mem[_7361]
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 260 len ceil32(_7709)] = mem[_7361 + 32 len ceil32(_7709)]
                    var83001 = ceil32(_7709)
                    if ceil32(_7709) > _7709:
                        mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + _7709 + 260] = 0
                    require ext_code.size(address(_7373))
                    call address(_7373).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _7657, address(this.address), 128, mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 228 len ceil32(_7709) + 32]
            else:
                require 0 < mem[_1364]
                _7503 = mem[mem[_1364 + 32] + 96]
                require 0 < mem[96]
                _7558 = mem[mem[128] + 32]
                require 0 < mem[_1364]
                require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[_6677 + (128 * _6691) + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != address(_7558):
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 100] = _7503
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 132] = 0
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 164] = this.address
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 196] = 128
                    _7711 = mem[_7361]
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 228] = mem[_7361]
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 260 len ceil32(_7711)] = mem[_7361 + 32 len ceil32(_7711)]
                    var83001 = ceil32(_7711)
                    if ceil32(_7711) > _7711:
                        mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + _7711 + 260] = 0
                    require ext_code.size(address(_7373))
                    call address(_7373).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _7503, 0, address(this.address), 128, mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 228 len ceil32(_7711) + 32]
                else:
                    require 0 < mem[_1364]
                    _7680 = mem[mem[_1364 + 32] + 96]
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 100] = _7503
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 132] = _7680
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 164] = this.address
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 196] = 128
                    _7743 = mem[_7361]
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 228] = mem[_7361]
                    mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 260 len ceil32(_7743)] = mem[_7361 + 32 len ceil32(_7743)]
                    var84001 = ceil32(_7743)
                    if ceil32(_7743) > _7743:
                        mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + _7743 + 260] = 0
                    require ext_code.size(address(_7373))
                    call address(_7373).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _7503, _7680, address(this.address), 128, mem[_6677 + (128 * _6691) + (2 * ceil32(return_data.size)) + 228 len ceil32(_7743) + 32]
    else:
        _4121 = mem[64] + (32 * _1363) + 32
        mem[64] = mem[64] + (32 * _1363) + 160
        mem[_4121] = 0
        mem[_4121 + 32] = 0
        mem[_4121 + 64] = 0
        mem[_4121 + 96] = 0
        mem[arg1.length] = _4121
        s = arg1.length
        idx = var26002
        while idx - 1:
            _4121 = mem[64]
            mem[64] = mem[64] + 128
            mem[_4121] = 0
            mem[_4121 + 32] = 0
            mem[_4121 + 64] = 0
            mem[_4121 + 96] = 0
            mem[s + 32] = _4121
            s = s + 32
            idx = idx - 1
            continue 
        _4143 = mem[64]
        mem[64] = mem[64] + 128
        mem[_4143] = 0
        mem[_4143 + 32] = 0
        mem[_4143 + 64] = 0
        mem[_4143 + 96] = 0
        _4153 = mem[96]
        require mem[96] <= test266151307()
        _4168 = mem[64]
        mem[mem[64]] = mem[96]
        mem[64] = mem[64] + (32 * _4153) + 32
        if not _4153:
            _5339 = mem[96]
            idx = 0
            s = _4143
            while idx < _5339 - 1:
                if idx:
                    require idx + 1 < mem[96]
                    require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _5442 = mem[_5423]
                    require mem[_5423] == mem[_5423 + 18 len 14]
                    _5497 = mem[_5423 + 32]
                    require mem[_5423 + 32] == mem[_5423 + 50 len 14]
                    require mem[_5423 + 64] == mem[_5423 + 92 len 4]
                    require idx + 1 < mem[96]
                    require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5718 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5718] == mem[_5718 + 12 len 20]
                    require idx + 1 < mem[96]
                    require idx + 1 < mem[_4168]
                    if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_5718 + 12 len 20]:
                        mem[mem[(32 * idx + 1) + _4168 + 32]] = Mask(112, 0, _5442)
                        require idx + 1 < mem[_4168]
                        mem[mem[(32 * idx + 1) + _4168 + 32] + 32] = Mask(112, 0, _5497)
                        _5928 = mem[s]
                        _5929 = mem[s + 32]
                        _5930 = mem[s + 96]
                        require idx + 1 < mem[96]
                        _5979 = mem[mem[(32 * idx + 1) + 128] + 64]
                        _6048 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_6048 + 64] = 0
                        mem[_6048 + 96] = _5930
                        require (_5979 * _5929) + (10000 * Mask(112, 0, _5442))
                        mem[_6048] = 10000 * _5928 * Mask(112, 0, _5442) / (_5979 * _5929) + (10000 * Mask(112, 0, _5442))
                        mem[_6048 + 32] = _5979 * _5929 * Mask(112, 0, _5497) / (_5979 * _5929) + (10000 * Mask(112, 0, _5442))
                        s = (10000 * _5930 * _5979 * _5929 * Mask(112, 0, _5497) / (_5979 * _5929) + (10000 * Mask(112, 0, _5442)) * 10000 * _5928 * Mask(112, 0, _5442) / (_5979 * _5929) + (10000 * Mask(112, 0, _5442))) + 1 / 2
                        t = 10000 * _5930 * _5979 * _5929 * Mask(112, 0, _5497) / (_5979 * _5929) + (10000 * Mask(112, 0, _5442)) * 10000 * _5928 * Mask(112, 0, _5442) / (_5979 * _5929) + (10000 * Mask(112, 0, _5442))
                        while s < t:
                            require s
                            _5339 = mem[96]
                            s = (10000 * _5930 * _5979 * _5929 * Mask(112, 0, _5497) / (_5979 * _5929) + (10000 * Mask(112, 0, _5442)) * 10000 * _5928 * Mask(112, 0, _5442) / (_5979 * _5929) + (10000 * Mask(112, 0, _5442)) / s) + s / 2
                            t = s
                            continue 
                        require _5930
                        mem[_6048 + 64] = t - (10000 * 10000 * _5928 * Mask(112, 0, _5442) / (_5979 * _5929) + (10000 * Mask(112, 0, _5442))) / _5930
                        _5339 = mem[96]
                        idx = idx + 1
                        s = _6048
                        continue 
                    mem[mem[(32 * idx + 1) + _4168 + 32]] = Mask(112, 0, _5497)
                    require idx + 1 < mem[_4168]
                    mem[mem[(32 * idx + 1) + _4168 + 32] + 32] = Mask(112, 0, _5442)
                    _5933 = mem[s]
                    _5934 = mem[s + 32]
                    _5935 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _5981 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _6049 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_6049 + 64] = 0
                    mem[_6049 + 96] = _5935
                    require (_5981 * _5934) + (10000 * Mask(112, 0, _5497))
                    mem[_6049] = 10000 * _5933 * Mask(112, 0, _5497) / (_5981 * _5934) + (10000 * Mask(112, 0, _5497))
                    mem[_6049 + 32] = _5981 * _5934 * Mask(112, 0, _5442) / (_5981 * _5934) + (10000 * Mask(112, 0, _5497))
                    s = (10000 * _5935 * _5981 * _5934 * Mask(112, 0, _5442) / (_5981 * _5934) + (10000 * Mask(112, 0, _5497)) * 10000 * _5933 * Mask(112, 0, _5497) / (_5981 * _5934) + (10000 * Mask(112, 0, _5497))) + 1 / 2
                    t = 10000 * _5935 * _5981 * _5934 * Mask(112, 0, _5442) / (_5981 * _5934) + (10000 * Mask(112, 0, _5497)) * 10000 * _5933 * Mask(112, 0, _5497) / (_5981 * _5934) + (10000 * Mask(112, 0, _5497))
                    while s < t:
                        require s
                        _5339 = mem[96]
                        s = (10000 * _5935 * _5981 * _5934 * Mask(112, 0, _5442) / (_5981 * _5934) + (10000 * Mask(112, 0, _5497)) * 10000 * _5933 * Mask(112, 0, _5497) / (_5981 * _5934) + (10000 * Mask(112, 0, _5497)) / s) + s / 2
                        t = s
                        continue 
                    require _5935
                    mem[_6049 + 64] = t - (10000 * 10000 * _5933 * Mask(112, 0, _5497) / (_5981 * _5934) + (10000 * Mask(112, 0, _5497))) / _5935
                    _5339 = mem[96]
                    idx = idx + 1
                    s = _6049
                    continue 
                require idx < mem[96]
                require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5424 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _5443 = mem[_5424]
                require mem[_5424] == mem[_5424 + 18 len 14]
                _5498 = mem[_5424 + 32]
                require mem[_5424 + 32] == mem[_5424 + 50 len 14]
                require mem[_5424 + 64] == mem[_5424 + 92 len 4]
                require idx < mem[96]
                require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5719 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5719] == mem[_5719 + 12 len 20]
                require idx < mem[96]
                require idx < mem[_4168]
                if mem[mem[(32 * idx) + 128] + 44 len 20] == mem[_5719 + 12 len 20]:
                    _5888 = mem[(32 * idx) + _4168 + 32]
                    require idx < mem[_4168]
                    mem[mem[(32 * idx) + _4168 + 32] + 32] = Mask(112, 0, _5498)
                    mem[_5888] = Mask(112, 0, _5443)
                    require idx < mem[_4168]
                    mem[s] = mem[mem[(32 * idx) + _4168 + 32]]
                    require idx < mem[_4168]
                    mem[s + 32] = Mask(112, 0, _5498)
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
                    _6147 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _6177 = mem[_6147]
                    require mem[_6147] == mem[_6147 + 18 len 14]
                    _6227 = mem[_6147 + 32]
                    require mem[_6147 + 32] == mem[_6147 + 50 len 14]
                    require mem[_6147 + 64] == mem[_6147 + 92 len 4]
                    require idx + 1 < mem[96]
                    require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6364 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6364] == mem[_6364 + 12 len 20]
                    require idx + 1 < mem[96]
                    require idx + 1 < mem[_4168]
                    if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_6364 + 12 len 20]:
                        mem[mem[(32 * idx + 1) + _4168 + 32]] = Mask(112, 0, _6177)
                        require idx + 1 < mem[_4168]
                        mem[mem[(32 * idx + 1) + _4168 + 32] + 32] = Mask(112, 0, _6227)
                        _6467 = mem[s]
                        _6469 = mem[s + 96]
                        require idx + 1 < mem[96]
                        _6497 = mem[mem[(32 * idx + 1) + 128] + 64]
                        _6512 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_6512 + 64] = 0
                        mem[_6512 + 96] = _6469
                        require (_6497 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6177))
                        mem[_6512] = 10000 * _6467 * Mask(112, 0, _6177) / (_6497 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6177))
                        mem[_6512 + 32] = _6497 * Mask(112, 0, _5498) * Mask(112, 0, _6227) / (_6497 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6177))
                        s = (10000 * _6469 * _6497 * Mask(112, 0, _5498) * Mask(112, 0, _6227) / (_6497 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6177)) * 10000 * _6467 * Mask(112, 0, _6177) / (_6497 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6177))) + 1 / 2
                        t = 10000 * _6469 * _6497 * Mask(112, 0, _5498) * Mask(112, 0, _6227) / (_6497 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6177)) * 10000 * _6467 * Mask(112, 0, _6177) / (_6497 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6177))
                        while s < t:
                            require s
                            _5339 = mem[96]
                            s = (10000 * _6469 * _6497 * Mask(112, 0, _5498) * Mask(112, 0, _6227) / (_6497 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6177)) * 10000 * _6467 * Mask(112, 0, _6177) / (_6497 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6177)) / s) + s / 2
                            t = s
                            continue 
                        require _6469
                        mem[_6512 + 64] = t - (10000 * 10000 * _6467 * Mask(112, 0, _6177) / (_6497 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6177))) / _6469
                        _5339 = mem[96]
                        s = s + 1
                        s = _6512
                        continue 
                    mem[mem[(32 * idx + 1) + _4168 + 32]] = Mask(112, 0, _6227)
                    require idx + 1 < mem[_4168]
                    mem[mem[(32 * idx + 1) + _4168 + 32] + 32] = Mask(112, 0, _6177)
                    _6472 = mem[s]
                    _6474 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _6499 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _6513 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_6513 + 64] = 0
                    mem[_6513 + 96] = _6474
                    require (_6499 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6227))
                    mem[_6513] = 10000 * _6472 * Mask(112, 0, _6227) / (_6499 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6227))
                    mem[_6513 + 32] = _6499 * Mask(112, 0, _5498) * Mask(112, 0, _6177) / (_6499 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6227))
                    s = (10000 * _6474 * _6499 * Mask(112, 0, _5498) * Mask(112, 0, _6177) / (_6499 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6227)) * 10000 * _6472 * Mask(112, 0, _6227) / (_6499 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6227))) + 1 / 2
                    t = 10000 * _6474 * _6499 * Mask(112, 0, _5498) * Mask(112, 0, _6177) / (_6499 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6227)) * 10000 * _6472 * Mask(112, 0, _6227) / (_6499 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6227))
                    while s < t:
                        require s
                        _5339 = mem[96]
                        s = (10000 * _6474 * _6499 * Mask(112, 0, _5498) * Mask(112, 0, _6177) / (_6499 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6227)) * 10000 * _6472 * Mask(112, 0, _6227) / (_6499 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6227)) / s) + s / 2
                        t = s
                        continue 
                    require _6474
                    mem[_6513 + 64] = t - (10000 * 10000 * _6472 * Mask(112, 0, _6227) / (_6499 * Mask(112, 0, _5498)) + (10000 * Mask(112, 0, _6227))) / _6474
                    _5339 = mem[96]
                    s = s + 1
                    s = _6513
                    continue 
                _5890 = mem[(32 * idx) + _4168 + 32]
                require idx < mem[_4168]
                mem[mem[(32 * idx) + _4168 + 32] + 32] = Mask(112, 0, _5443)
                mem[_5890] = Mask(112, 0, _5498)
                require idx < mem[_4168]
                mem[s] = mem[mem[(32 * idx) + _4168 + 32]]
                require idx < mem[_4168]
                mem[s + 32] = Mask(112, 0, _5443)
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
                _6148 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _6178 = mem[_6148]
                require mem[_6148] == mem[_6148 + 18 len 14]
                _6228 = mem[_6148 + 32]
                require mem[_6148 + 32] == mem[_6148 + 50 len 14]
                require mem[_6148 + 64] == mem[_6148 + 92 len 4]
                require idx + 1 < mem[96]
                require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6365 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6365] == mem[_6365 + 12 len 20]
                require idx + 1 < mem[96]
                require idx + 1 < mem[_4168]
                if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_6365 + 12 len 20]:
                    mem[mem[(32 * idx + 1) + _4168 + 32]] = Mask(112, 0, _6178)
                    require idx + 1 < mem[_4168]
                    mem[mem[(32 * idx + 1) + _4168 + 32] + 32] = Mask(112, 0, _6228)
                    _6477 = mem[s]
                    _6479 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _6501 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _6514 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_6514 + 64] = 0
                    mem[_6514 + 96] = _6479
                    require (_6501 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6178))
                    mem[_6514] = 10000 * _6477 * Mask(112, 0, _6178) / (_6501 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6178))
                    mem[_6514 + 32] = _6501 * Mask(112, 0, _5443) * Mask(112, 0, _6228) / (_6501 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6178))
                    s = (10000 * _6479 * _6501 * Mask(112, 0, _5443) * Mask(112, 0, _6228) / (_6501 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6178)) * 10000 * _6477 * Mask(112, 0, _6178) / (_6501 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6178))) + 1 / 2
                    t = 10000 * _6479 * _6501 * Mask(112, 0, _5443) * Mask(112, 0, _6228) / (_6501 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6178)) * 10000 * _6477 * Mask(112, 0, _6178) / (_6501 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6178))
                    while s < t:
                        require s
                        _5339 = mem[96]
                        s = (10000 * _6479 * _6501 * Mask(112, 0, _5443) * Mask(112, 0, _6228) / (_6501 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6178)) * 10000 * _6477 * Mask(112, 0, _6178) / (_6501 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6178)) / s) + s / 2
                        t = s
                        continue 
                    require _6479
                    mem[_6514 + 64] = t - (10000 * 10000 * _6477 * Mask(112, 0, _6178) / (_6501 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6178))) / _6479
                    _5339 = mem[96]
                    s = s + 1
                    s = _6514
                    continue 
                mem[mem[(32 * idx + 1) + _4168 + 32]] = Mask(112, 0, _6228)
                require idx + 1 < mem[_4168]
                mem[mem[(32 * idx + 1) + _4168 + 32] + 32] = Mask(112, 0, _6178)
                _6482 = mem[s]
                _6484 = mem[s + 96]
                require idx + 1 < mem[96]
                _6503 = mem[mem[(32 * idx + 1) + 128] + 64]
                _6515 = mem[64]
                mem[64] = mem[64] + 128
                mem[_6515 + 64] = 0
                mem[_6515 + 96] = _6484
                require (_6503 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6228))
                mem[_6515] = 10000 * _6482 * Mask(112, 0, _6228) / (_6503 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6228))
                mem[_6515 + 32] = _6503 * Mask(112, 0, _5443) * Mask(112, 0, _6178) / (_6503 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6228))
                s = (10000 * _6484 * _6503 * Mask(112, 0, _5443) * Mask(112, 0, _6178) / (_6503 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6228)) * 10000 * _6482 * Mask(112, 0, _6228) / (_6503 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6228))) + 1 / 2
                t = 10000 * _6484 * _6503 * Mask(112, 0, _5443) * Mask(112, 0, _6178) / (_6503 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6228)) * 10000 * _6482 * Mask(112, 0, _6228) / (_6503 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6228))
                while s < t:
                    require s
                    _5339 = mem[96]
                    s = (10000 * _6484 * _6503 * Mask(112, 0, _5443) * Mask(112, 0, _6178) / (_6503 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6228)) * 10000 * _6482 * Mask(112, 0, _6228) / (_6503 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6228)) / s) + s / 2
                    t = s
                    continue 
                require _6484
                mem[_6515 + 64] = t - (10000 * 10000 * _6482 * Mask(112, 0, _6228) / (_6503 * Mask(112, 0, _5443)) + (10000 * Mask(112, 0, _6228))) / _6484
                _5339 = mem[96]
                s = s + 1
                s = _6515
                continue 
            require 0 < mem[_1364]
            mem[mem[_1364 + 32] + 64] = mem[s + 64]
            _6573 = mem[96]
            idx = 0
            while idx < _6573:
                require idx < mem[_4168]
                require idx < mem[_1364]
                if mem[mem[(32 * idx) + _1364 + 32] + 64] <= mem[mem[(32 * idx) + _4168 + 32]]:
                    require idx < mem[96]
                    require idx < mem[_1364]
                    mem[mem[(32 * idx) + _1364 + 32]] = mem[mem[(32 * idx) + 128] + 12 len 20]
                    require idx < mem[96]
                    require idx < mem[_1364]
                    mem[mem[(32 * idx) + _1364 + 32] + 32] = mem[mem[(32 * idx) + 128] + 44 len 20]
                    require idx < mem[_1364]
                    require idx < mem[_4168]
                    require idx < mem[_4168]
                    require idx < mem[96]
                    require (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _1364 + 32] + 64]) + (10000 * mem[mem[(32 * idx) + _4168 + 32]])
                    require idx < mem[_1364]
                    mem[mem[(32 * idx) + _1364 + 32] + 96] = mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _1364 + 32] + 64] * mem[mem[(32 * idx) + _4168 + 32] + 32] / (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _1364 + 32] + 64]) + (10000 * mem[mem[(32 * idx) + _4168 + 32]])
                    if idx != mem[96] - 1:
                        require idx < mem[_1364]
                        require idx + 1 < mem[_1364]
                        mem[mem[(32 * idx + 1) + _1364 + 32] + 64] = mem[mem[(32 * idx) + _1364 + 32] + 96]
                    _6573 = mem[96]
                    idx = idx + 1
                    continue 
                require 0 < mem[_1364]
                require mem[96] - 1 < mem[_1364]
                if mem[mem[(32 * mem[96] - 1) + _1364 + 32] + 96] < mem[mem[_1364 + 32] + 64] + arg2:
                    revert with 0, 'nogo'
                _6701 = mem[64]
                mem[mem[64] + 32] = 32
                _6720 = mem[_1364]
                mem[mem[64] + 64] = mem[_1364]
                idx = 0
                s = _1364 + 32
                t = mem[64] + 96
                while idx < _6720:
                    _7354 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_7354 + 44 len 20]
                    mem[t + 64] = mem[_7354 + 64]
                    mem[t + 96] = mem[_7354 + 96]
                    _6573 = mem[96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                _7367 = mem[64]
                mem[mem[64]] = _6701 + (128 * _6720) + -mem[64] + 64
                mem[64] = _6701 + (128 * _6720) + 96
                require 0 < mem[_1364]
                _7382 = mem[mem[_1364 + 32]]
                require 0 < mem[96]
                _7403 = mem[mem[128] + 32]
                require 0 < mem[_1364]
                require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[_6701 + (128 * _6720) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _6701 + (128 * _6720) + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == address(_7403):
                    require 0 < mem[96]
                    _7537 = mem[mem[128] + 32]
                    require 0 < mem[_1364]
                    require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                    staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[_6701 + (128 * _6720) + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != address(_7537):
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 100] = 0
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 132] = 0
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 164] = this.address
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 196] = 128
                        _7693 = mem[_7367]
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 228] = mem[_7367]
                        idx = 0
                        while idx < _7693:
                            mem[idx + _6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 260] = mem[idx + _7367 + 32]
                            _6573 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_7693) > _7693:
                            mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + _7693 + 260] = 0
                        require ext_code.size(address(_7382))
                        call address(_7382).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 228 len ceil32(_7693) + 32]
                    else:
                        require 0 < mem[_1364]
                        _7669 = mem[mem[_1364 + 32] + 96]
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 100] = 0
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 132] = _7669
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 164] = this.address
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 196] = 128
                        _7718 = mem[_7367]
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 228] = mem[_7367]
                        idx = 0
                        while idx < _7718:
                            mem[idx + _6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 260] = mem[idx + _7367 + 32]
                            _6573 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_7718) > _7718:
                            mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + _7718 + 260] = 0
                        require ext_code.size(address(_7382))
                        call address(_7382).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _7669, address(this.address), 128, mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 228 len ceil32(_7718) + 32]
                else:
                    require 0 < mem[_1364]
                    _7512 = mem[mem[_1364 + 32] + 96]
                    require 0 < mem[96]
                    _7579 = mem[mem[128] + 32]
                    require 0 < mem[_1364]
                    require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                    staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[_6701 + (128 * _6720) + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != address(_7579):
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 100] = _7512
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 132] = 0
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 164] = this.address
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 196] = 128
                        _7720 = mem[_7367]
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 228] = mem[_7367]
                        idx = 0
                        while idx < _7720:
                            mem[idx + _6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 260] = mem[idx + _7367 + 32]
                            _6573 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_7720) > _7720:
                            mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + _7720 + 260] = 0
                        require ext_code.size(address(_7382))
                        call address(_7382).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _7512, 0, address(this.address), 128, mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 228 len ceil32(_7720) + 32]
                    else:
                        require 0 < mem[_1364]
                        _7695 = mem[mem[_1364 + 32] + 96]
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 100] = _7512
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 132] = _7695
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 164] = this.address
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 196] = 128
                        _7749 = mem[_7367]
                        mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 228] = mem[_7367]
                        idx = 0
                        while idx < _7749:
                            mem[idx + _6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 260] = mem[idx + _7367 + 32]
                            _6573 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_7749) > _7749:
                            mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + _7749 + 260] = 0
                        require ext_code.size(address(_7382))
                        call address(_7382).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _7512, _7695, address(this.address), 128, mem[_6701 + (128 * _6720) + (2 * ceil32(return_data.size)) + 228 len ceil32(_7749) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require 0 < mem[_1364]
            require mem[96] - 1 < mem[_1364]
            require 0 < mem[_1364]
            require mem[96] - 1 < mem[_1364]
            if mem[mem[(32 * mem[96] - 1) + _1364 + 32] + 96] < mem[mem[_1364 + 32] + 64] + arg2:
                revert with 0, 'nogo'
            _6683 = mem[64]
            mem[mem[64] + 32] = 32
            _6697 = mem[_1364]
            mem[mem[64] + 64] = mem[_1364]
            idx = 0
            s = _1364 + 32
            t = mem[64] + 96
            while idx < _6697:
                _7349 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_7349 + 44 len 20]
                mem[t + 64] = mem[_7349 + 64]
                mem[t + 96] = mem[_7349 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            _7365 = mem[64]
            mem[mem[64]] = _6683 + (128 * _6697) + -mem[64] + 64
            mem[64] = _6683 + (128 * _6697) + 96
            require 0 < mem[_1364]
            _7379 = mem[mem[_1364 + 32]]
            require 0 < mem[96]
            _7400 = mem[mem[128] + 32]
            require 0 < mem[_1364]
            require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
            staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[_6683 + (128 * _6697) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _6683 + (128 * _6697) + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == address(_7400):
                require 0 < mem[96]
                _7533 = mem[mem[128] + 32]
                require 0 < mem[_1364]
                require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[_6683 + (128 * _6697) + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != address(_7533):
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 100] = 0
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 132] = 0
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 164] = this.address
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 196] = 128
                    _7688 = mem[_7365]
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 228] = mem[_7365]
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 260 len ceil32(_7688)] = mem[_7365 + 32 len ceil32(_7688)]
                    if ceil32(_7688) > _7688:
                        mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + _7688 + 260] = 0
                    require ext_code.size(address(_7379))
                    call address(_7379).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 228 len ceil32(_7688) + 32]
                else:
                    require 0 < mem[_1364]
                    _7665 = mem[mem[_1364 + 32] + 96]
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 100] = 0
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 132] = _7665
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 164] = this.address
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 196] = 128
                    _7715 = mem[_7365]
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 228] = mem[_7365]
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 260 len ceil32(_7715)] = mem[_7365 + 32 len ceil32(_7715)]
                    var83001 = ceil32(_7715)
                    if ceil32(_7715) > _7715:
                        mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + _7715 + 260] = 0
                    require ext_code.size(address(_7379))
                    call address(_7379).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _7665, address(this.address), 128, mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 228 len ceil32(_7715) + 32]
            else:
                require 0 < mem[_1364]
                _7509 = mem[mem[_1364 + 32] + 96]
                require 0 < mem[96]
                _7572 = mem[mem[128] + 32]
                require 0 < mem[_1364]
                require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[_6683 + (128 * _6697) + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != address(_7572):
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 100] = _7509
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 132] = 0
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 164] = this.address
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 196] = 128
                    _7717 = mem[_7365]
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 228] = mem[_7365]
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 260 len ceil32(_7717)] = mem[_7365 + 32 len ceil32(_7717)]
                    var83001 = ceil32(_7717)
                    if ceil32(_7717) > _7717:
                        mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + _7717 + 260] = 0
                    require ext_code.size(address(_7379))
                    call address(_7379).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _7509, 0, address(this.address), 128, mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 228 len ceil32(_7717) + 32]
                else:
                    require 0 < mem[_1364]
                    _7690 = mem[mem[_1364 + 32] + 96]
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 100] = _7509
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 132] = _7690
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 164] = this.address
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 196] = 128
                    _7747 = mem[_7365]
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 228] = mem[_7365]
                    mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 260 len ceil32(_7747)] = mem[_7365 + 32 len ceil32(_7747)]
                    var84001 = ceil32(_7747)
                    if ceil32(_7747) > _7747:
                        mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + _7747 + 260] = 0
                    require ext_code.size(address(_7379))
                    call address(_7379).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _7509, _7690, address(this.address), 128, mem[_6683 + (128 * _6697) + (2 * ceil32(return_data.size)) + 228 len ceil32(_7747) + 32]
        else:
            mem[64] = _4168 + (32 * _4153) + 96
            mem[_4168 + (32 * _4153) + 32] = 0
            mem[_4168 + (32 * _4153) + 64] = 0
            mem[var38001] = _4168 + (32 * _4153) + 32
            s = var38001
            idx = var38002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[_4168 + (32 * _4153) + 32] = 0
                mem[_4168 + (32 * _4153) + 64] = 0
                mem[s + 32] = _4168 + (32 * _4153) + 32
                s = s + 32
                idx = idx - 1
                continue 
            _7338 = mem[96]
            idx = 0
            s = _4143
            while idx < _7338 - 1:
                if idx:
                    require idx + 1 < mem[96]
                    require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _7441 = mem[_7430]
                    require mem[_7430] == mem[_7430 + 18 len 14]
                    _7467 = mem[_7430 + 32]
                    require mem[_7430 + 32] == mem[_7430 + 50 len 14]
                    require mem[_7430 + 64] == mem[_7430 + 92 len 4]
                    require idx + 1 < mem[96]
                    require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7611 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7611] == mem[_7611 + 12 len 20]
                    require idx + 1 < mem[96]
                    require idx + 1 < mem[_4168]
                    if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_7611 + 12 len 20]:
                        mem[mem[(32 * idx + 1) + _4168 + 32]] = Mask(112, 0, _7441)
                        require idx + 1 < mem[_4168]
                        mem[mem[(32 * idx + 1) + _4168 + 32] + 32] = Mask(112, 0, _7467)
                        _7729 = mem[s]
                        _7730 = mem[s + 32]
                        _7731 = mem[s + 96]
                        require idx + 1 < mem[96]
                        _7762 = mem[mem[(32 * idx + 1) + 128] + 64]
                        _7809 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_7809 + 64] = 0
                        mem[_7809 + 96] = _7731
                        require (_7762 * _7730) + (10000 * Mask(112, 0, _7441))
                        mem[_7809] = 10000 * _7729 * Mask(112, 0, _7441) / (_7762 * _7730) + (10000 * Mask(112, 0, _7441))
                        mem[_7809 + 32] = _7762 * _7730 * Mask(112, 0, _7467) / (_7762 * _7730) + (10000 * Mask(112, 0, _7441))
                        s = (10000 * _7731 * _7762 * _7730 * Mask(112, 0, _7467) / (_7762 * _7730) + (10000 * Mask(112, 0, _7441)) * 10000 * _7729 * Mask(112, 0, _7441) / (_7762 * _7730) + (10000 * Mask(112, 0, _7441))) + 1 / 2
                        t = 10000 * _7731 * _7762 * _7730 * Mask(112, 0, _7467) / (_7762 * _7730) + (10000 * Mask(112, 0, _7441)) * 10000 * _7729 * Mask(112, 0, _7441) / (_7762 * _7730) + (10000 * Mask(112, 0, _7441))
                        while s < t:
                            require s
                            _7338 = mem[96]
                            s = (10000 * _7731 * _7762 * _7730 * Mask(112, 0, _7467) / (_7762 * _7730) + (10000 * Mask(112, 0, _7441)) * 10000 * _7729 * Mask(112, 0, _7441) / (_7762 * _7730) + (10000 * Mask(112, 0, _7441)) / s) + s / 2
                            t = s
                            continue 
                        require _7731
                        mem[_7809 + 64] = t - (10000 * 10000 * _7729 * Mask(112, 0, _7441) / (_7762 * _7730) + (10000 * Mask(112, 0, _7441))) / _7731
                        _7338 = mem[96]
                        idx = idx + 1
                        s = _7809
                        continue 
                    mem[mem[(32 * idx + 1) + _4168 + 32]] = Mask(112, 0, _7467)
                    require idx + 1 < mem[_4168]
                    mem[mem[(32 * idx + 1) + _4168 + 32] + 32] = Mask(112, 0, _7441)
                    _7734 = mem[s]
                    _7735 = mem[s + 32]
                    _7736 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _7764 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _7810 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_7810 + 64] = 0
                    mem[_7810 + 96] = _7736
                    require (_7764 * _7735) + (10000 * Mask(112, 0, _7467))
                    mem[_7810] = 10000 * _7734 * Mask(112, 0, _7467) / (_7764 * _7735) + (10000 * Mask(112, 0, _7467))
                    mem[_7810 + 32] = _7764 * _7735 * Mask(112, 0, _7441) / (_7764 * _7735) + (10000 * Mask(112, 0, _7467))
                    s = (10000 * _7736 * _7764 * _7735 * Mask(112, 0, _7441) / (_7764 * _7735) + (10000 * Mask(112, 0, _7467)) * 10000 * _7734 * Mask(112, 0, _7467) / (_7764 * _7735) + (10000 * Mask(112, 0, _7467))) + 1 / 2
                    t = 10000 * _7736 * _7764 * _7735 * Mask(112, 0, _7441) / (_7764 * _7735) + (10000 * Mask(112, 0, _7467)) * 10000 * _7734 * Mask(112, 0, _7467) / (_7764 * _7735) + (10000 * Mask(112, 0, _7467))
                    while s < t:
                        require s
                        _7338 = mem[96]
                        s = (10000 * _7736 * _7764 * _7735 * Mask(112, 0, _7441) / (_7764 * _7735) + (10000 * Mask(112, 0, _7467)) * 10000 * _7734 * Mask(112, 0, _7467) / (_7764 * _7735) + (10000 * Mask(112, 0, _7467)) / s) + s / 2
                        t = s
                        continue 
                    require _7736
                    mem[_7810 + 64] = t - (10000 * 10000 * _7734 * Mask(112, 0, _7467) / (_7764 * _7735) + (10000 * Mask(112, 0, _7467))) / _7736
                    _7338 = mem[96]
                    idx = idx + 1
                    s = _7810
                    continue 
                require idx < mem[96]
                require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7431 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _7442 = mem[_7431]
                require mem[_7431] == mem[_7431 + 18 len 14]
                _7468 = mem[_7431 + 32]
                require mem[_7431 + 32] == mem[_7431 + 50 len 14]
                require mem[_7431 + 64] == mem[_7431 + 92 len 4]
                require idx < mem[96]
                require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7612 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7612] == mem[_7612 + 12 len 20]
                require idx < mem[96]
                require idx < mem[_4168]
                if mem[mem[(32 * idx) + 128] + 44 len 20] == mem[_7612 + 12 len 20]:
                    _7705 = mem[(32 * idx) + _4168 + 32]
                    require idx < mem[_4168]
                    mem[mem[(32 * idx) + _4168 + 32] + 32] = Mask(112, 0, _7468)
                    mem[_7705] = Mask(112, 0, _7442)
                    require idx < mem[_4168]
                    mem[s] = mem[mem[(32 * idx) + _4168 + 32]]
                    require idx < mem[_4168]
                    mem[s + 32] = Mask(112, 0, _7468)
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
                    _7862 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _7864 = mem[_7862]
                    require mem[_7862] == mem[_7862 + 18 len 14]
                    _7881 = mem[_7862 + 32]
                    require mem[_7862 + 32] == mem[_7862 + 50 len 14]
                    require mem[_7862 + 64] == mem[_7862 + 92 len 4]
                    require idx + 1 < mem[96]
                    require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7932 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7932] == mem[_7932 + 12 len 20]
                    require idx + 1 < mem[96]
                    require idx + 1 < mem[_4168]
                    if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_7932 + 12 len 20]:
                        mem[mem[(32 * idx + 1) + _4168 + 32]] = Mask(112, 0, _7864)
                        require idx + 1 < mem[_4168]
                        mem[mem[(32 * idx + 1) + _4168 + 32] + 32] = Mask(112, 0, _7881)
                        _7955 = mem[s]
                        _7957 = mem[s + 96]
                        require idx + 1 < mem[96]
                        _7975 = mem[mem[(32 * idx + 1) + 128] + 64]
                        _7982 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_7982 + 64] = 0
                        mem[_7982 + 96] = _7957
                        require (_7975 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7864))
                        mem[_7982] = 10000 * _7955 * Mask(112, 0, _7864) / (_7975 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7864))
                        mem[_7982 + 32] = _7975 * Mask(112, 0, _7468) * Mask(112, 0, _7881) / (_7975 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7864))
                        s = (10000 * _7957 * _7975 * Mask(112, 0, _7468) * Mask(112, 0, _7881) / (_7975 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7864)) * 10000 * _7955 * Mask(112, 0, _7864) / (_7975 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7864))) + 1 / 2
                        t = 10000 * _7957 * _7975 * Mask(112, 0, _7468) * Mask(112, 0, _7881) / (_7975 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7864)) * 10000 * _7955 * Mask(112, 0, _7864) / (_7975 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7864))
                        while s < t:
                            require s
                            _7338 = mem[96]
                            s = (10000 * _7957 * _7975 * Mask(112, 0, _7468) * Mask(112, 0, _7881) / (_7975 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7864)) * 10000 * _7955 * Mask(112, 0, _7864) / (_7975 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7864)) / s) + s / 2
                            t = s
                            continue 
                        require _7957
                        mem[_7982 + 64] = t - (10000 * 10000 * _7955 * Mask(112, 0, _7864) / (_7975 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7864))) / _7957
                        _7338 = mem[96]
                        s = s + 1
                        s = _7982
                        continue 
                    mem[mem[(32 * idx + 1) + _4168 + 32]] = Mask(112, 0, _7881)
                    require idx + 1 < mem[_4168]
                    mem[mem[(32 * idx + 1) + _4168 + 32] + 32] = Mask(112, 0, _7864)
                    _7960 = mem[s]
                    _7962 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _7977 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _7983 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_7983 + 64] = 0
                    mem[_7983 + 96] = _7962
                    require (_7977 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7881))
                    mem[_7983] = 10000 * _7960 * Mask(112, 0, _7881) / (_7977 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7881))
                    mem[_7983 + 32] = _7977 * Mask(112, 0, _7468) * Mask(112, 0, _7864) / (_7977 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7881))
                    s = (10000 * _7962 * _7977 * Mask(112, 0, _7468) * Mask(112, 0, _7864) / (_7977 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7881)) * 10000 * _7960 * Mask(112, 0, _7881) / (_7977 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7881))) + 1 / 2
                    t = 10000 * _7962 * _7977 * Mask(112, 0, _7468) * Mask(112, 0, _7864) / (_7977 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7881)) * 10000 * _7960 * Mask(112, 0, _7881) / (_7977 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7881))
                    while s < t:
                        require s
                        _7338 = mem[96]
                        s = (10000 * _7962 * _7977 * Mask(112, 0, _7468) * Mask(112, 0, _7864) / (_7977 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7881)) * 10000 * _7960 * Mask(112, 0, _7881) / (_7977 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7881)) / s) + s / 2
                        t = s
                        continue 
                    require _7962
                    mem[_7983 + 64] = t - (10000 * 10000 * _7960 * Mask(112, 0, _7881) / (_7977 * Mask(112, 0, _7468)) + (10000 * Mask(112, 0, _7881))) / _7962
                    _7338 = mem[96]
                    s = s + 1
                    s = _7983
                    continue 
                _7707 = mem[(32 * idx) + _4168 + 32]
                require idx < mem[_4168]
                mem[mem[(32 * idx) + _4168 + 32] + 32] = Mask(112, 0, _7442)
                mem[_7707] = Mask(112, 0, _7468)
                require idx < mem[_4168]
                mem[s] = mem[mem[(32 * idx) + _4168 + 32]]
                require idx < mem[_4168]
                mem[s + 32] = Mask(112, 0, _7442)
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
                _7863 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _7865 = mem[_7863]
                require mem[_7863] == mem[_7863 + 18 len 14]
                _7882 = mem[_7863 + 32]
                require mem[_7863 + 32] == mem[_7863 + 50 len 14]
                require mem[_7863 + 64] == mem[_7863 + 92 len 4]
                require idx + 1 < mem[96]
                require ext_code.size(mem[mem[(32 * idx + 1) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx + 1) + 128] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7933 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7933] == mem[_7933 + 12 len 20]
                require idx + 1 < mem[96]
                require idx + 1 < mem[_4168]
                if mem[mem[(32 * idx + 1) + 128] + 44 len 20] == mem[_7933 + 12 len 20]:
                    mem[mem[(32 * idx + 1) + _4168 + 32]] = Mask(112, 0, _7865)
                    require idx + 1 < mem[_4168]
                    mem[mem[(32 * idx + 1) + _4168 + 32] + 32] = Mask(112, 0, _7882)
                    _7965 = mem[s]
                    _7967 = mem[s + 96]
                    require idx + 1 < mem[96]
                    _7979 = mem[mem[(32 * idx + 1) + 128] + 64]
                    _7984 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_7984 + 64] = 0
                    mem[_7984 + 96] = _7967
                    require (_7979 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7865))
                    mem[_7984] = 10000 * _7965 * Mask(112, 0, _7865) / (_7979 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7865))
                    mem[_7984 + 32] = _7979 * Mask(112, 0, _7442) * Mask(112, 0, _7882) / (_7979 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7865))
                    s = (10000 * _7967 * _7979 * Mask(112, 0, _7442) * Mask(112, 0, _7882) / (_7979 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7865)) * 10000 * _7965 * Mask(112, 0, _7865) / (_7979 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7865))) + 1 / 2
                    t = 10000 * _7967 * _7979 * Mask(112, 0, _7442) * Mask(112, 0, _7882) / (_7979 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7865)) * 10000 * _7965 * Mask(112, 0, _7865) / (_7979 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7865))
                    while s < t:
                        require s
                        _7338 = mem[96]
                        s = (10000 * _7967 * _7979 * Mask(112, 0, _7442) * Mask(112, 0, _7882) / (_7979 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7865)) * 10000 * _7965 * Mask(112, 0, _7865) / (_7979 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7865)) / s) + s / 2
                        t = s
                        continue 
                    require _7967
                    mem[_7984 + 64] = t - (10000 * 10000 * _7965 * Mask(112, 0, _7865) / (_7979 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7865))) / _7967
                    _7338 = mem[96]
                    s = s + 1
                    s = _7984
                    continue 
                mem[mem[(32 * idx + 1) + _4168 + 32]] = Mask(112, 0, _7882)
                require idx + 1 < mem[_4168]
                mem[mem[(32 * idx + 1) + _4168 + 32] + 32] = Mask(112, 0, _7865)
                _7970 = mem[s]
                _7972 = mem[s + 96]
                require idx + 1 < mem[96]
                _7981 = mem[mem[(32 * idx + 1) + 128] + 64]
                _7985 = mem[64]
                mem[64] = mem[64] + 128
                mem[_7985 + 64] = 0
                mem[_7985 + 96] = _7972
                require (_7981 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7882))
                mem[_7985] = 10000 * _7970 * Mask(112, 0, _7882) / (_7981 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7882))
                mem[_7985 + 32] = _7981 * Mask(112, 0, _7442) * Mask(112, 0, _7865) / (_7981 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7882))
                s = (10000 * _7972 * _7981 * Mask(112, 0, _7442) * Mask(112, 0, _7865) / (_7981 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7882)) * 10000 * _7970 * Mask(112, 0, _7882) / (_7981 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7882))) + 1 / 2
                t = 10000 * _7972 * _7981 * Mask(112, 0, _7442) * Mask(112, 0, _7865) / (_7981 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7882)) * 10000 * _7970 * Mask(112, 0, _7882) / (_7981 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7882))
                while s < t:
                    require s
                    _7338 = mem[96]
                    s = (10000 * _7972 * _7981 * Mask(112, 0, _7442) * Mask(112, 0, _7865) / (_7981 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7882)) * 10000 * _7970 * Mask(112, 0, _7882) / (_7981 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7882)) / s) + s / 2
                    t = s
                    continue 
                require _7972
                mem[_7985 + 64] = t - (10000 * 10000 * _7970 * Mask(112, 0, _7882) / (_7981 * Mask(112, 0, _7442)) + (10000 * Mask(112, 0, _7882))) / _7972
                _7338 = mem[96]
                s = s + 1
                s = _7985
                continue 
            require 0 < mem[_1364]
            mem[mem[_1364 + 32] + 64] = mem[s + 64]
            _7990 = mem[96]
            idx = 0
            while idx < _7990:
                require idx < mem[_4168]
                require idx < mem[_1364]
                if mem[mem[(32 * idx) + _1364 + 32] + 64] <= mem[mem[(32 * idx) + _4168 + 32]]:
                    require idx < mem[96]
                    require idx < mem[_1364]
                    mem[mem[(32 * idx) + _1364 + 32]] = mem[mem[(32 * idx) + 128] + 12 len 20]
                    require idx < mem[96]
                    require idx < mem[_1364]
                    mem[mem[(32 * idx) + _1364 + 32] + 32] = mem[mem[(32 * idx) + 128] + 44 len 20]
                    require idx < mem[_1364]
                    require idx < mem[_4168]
                    require idx < mem[_4168]
                    require idx < mem[96]
                    require (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _1364 + 32] + 64]) + (10000 * mem[mem[(32 * idx) + _4168 + 32]])
                    require idx < mem[_1364]
                    mem[mem[(32 * idx) + _1364 + 32] + 96] = mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _1364 + 32] + 64] * mem[mem[(32 * idx) + _4168 + 32] + 32] / (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + _1364 + 32] + 64]) + (10000 * mem[mem[(32 * idx) + _4168 + 32]])
                    if idx != mem[96] - 1:
                        require idx < mem[_1364]
                        require idx + 1 < mem[_1364]
                        mem[mem[(32 * idx + 1) + _1364 + 32] + 64] = mem[mem[(32 * idx) + _1364 + 32] + 96]
                    _7990 = mem[96]
                    idx = idx + 1
                    continue 
                require 0 < mem[_1364]
                require mem[96] - 1 < mem[_1364]
                if mem[mem[(32 * mem[96] - 1) + _1364 + 32] + 96] < mem[mem[_1364 + 32] + 64] + arg2:
                    revert with 0, 'nogo'
                _8083 = mem[64]
                mem[mem[64] + 32] = 32
                _8089 = mem[_1364]
                mem[mem[64] + 64] = mem[_1364]
                idx = 0
                s = _1364 + 32
                t = mem[64] + 96
                while idx < _8089:
                    _8245 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_8245 + 44 len 20]
                    mem[t + 64] = mem[_8245 + 64]
                    mem[t + 96] = mem[_8245 + 96]
                    _7990 = mem[96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                _8252 = mem[64]
                mem[mem[64]] = _8083 + (128 * _8089) + -mem[64] + 64
                mem[64] = _8083 + (128 * _8089) + 96
                require 0 < mem[_1364]
                _8258 = mem[mem[_1364 + 32]]
                require 0 < mem[96]
                _8264 = mem[mem[128] + 32]
                require 0 < mem[_1364]
                require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[_8083 + (128 * _8089) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _8083 + (128 * _8089) + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == address(_8264):
                    require 0 < mem[96]
                    _8291 = mem[mem[128] + 32]
                    require 0 < mem[_1364]
                    require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                    staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[_8083 + (128 * _8089) + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != address(_8291):
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 100] = 0
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 132] = 0
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 164] = this.address
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 196] = 128
                        _8340 = mem[_8252]
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 228] = mem[_8252]
                        idx = 0
                        while idx < _8340:
                            mem[idx + _8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 260] = mem[idx + _8252 + 32]
                            _7990 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_8340) > _8340:
                            mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + _8340 + 260] = 0
                        require ext_code.size(address(_8258))
                        call address(_8258).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 228 len ceil32(_8340) + 32]
                    else:
                        require 0 < mem[_1364]
                        _8331 = mem[mem[_1364 + 32] + 96]
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 100] = 0
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 132] = _8331
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 164] = this.address
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 196] = 128
                        _8347 = mem[_8252]
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 228] = mem[_8252]
                        idx = 0
                        while idx < _8347:
                            mem[idx + _8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 260] = mem[idx + _8252 + 32]
                            _7990 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_8347) > _8347:
                            mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + _8347 + 260] = 0
                        require ext_code.size(address(_8258))
                        call address(_8258).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _8331, address(this.address), 128, mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 228 len ceil32(_8347) + 32]
                else:
                    require 0 < mem[_1364]
                    _8285 = mem[mem[_1364 + 32] + 96]
                    require 0 < mem[96]
                    _8306 = mem[mem[128] + 32]
                    require 0 < mem[_1364]
                    require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                    staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[_8083 + (128 * _8089) + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != address(_8306):
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 100] = _8285
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 132] = 0
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 164] = this.address
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 196] = 128
                        _8349 = mem[_8252]
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 228] = mem[_8252]
                        idx = 0
                        while idx < _8349:
                            mem[idx + _8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 260] = mem[idx + _8252 + 32]
                            _7990 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_8349) > _8349:
                            mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + _8349 + 260] = 0
                        require ext_code.size(address(_8258))
                        call address(_8258).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _8285, 0, address(this.address), 128, mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 228 len ceil32(_8349) + 32]
                    else:
                        require 0 < mem[_1364]
                        _8342 = mem[mem[_1364 + 32] + 96]
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 100] = _8285
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 132] = _8342
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 164] = this.address
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 196] = 128
                        _8353 = mem[_8252]
                        mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 228] = mem[_8252]
                        idx = 0
                        while idx < _8353:
                            mem[idx + _8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 260] = mem[idx + _8252 + 32]
                            _7990 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_8353) > _8353:
                            mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + _8353 + 260] = 0
                        require ext_code.size(address(_8258))
                        call address(_8258).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _8285, _8342, address(this.address), 128, mem[_8083 + (128 * _8089) + (2 * ceil32(return_data.size)) + 228 len ceil32(_8353) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require 0 < mem[_1364]
            require mem[96] - 1 < mem[_1364]
            require 0 < mem[_1364]
            require mem[96] - 1 < mem[_1364]
            if mem[mem[(32 * mem[96] - 1) + _1364 + 32] + 96] < mem[mem[_1364 + 32] + 64] + arg2:
                revert with 0, 'nogo'
            _8073 = mem[64]
            mem[mem[64] + 32] = 32
            _8079 = mem[_1364]
            mem[mem[64] + 64] = mem[_1364]
            idx = 0
            s = _1364 + 32
            t = mem[64] + 96
            while idx < _8079:
                _8240 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_8240 + 44 len 20]
                mem[t + 64] = mem[_8240 + 64]
                mem[t + 96] = mem[_8240 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            _8250 = mem[64]
            mem[mem[64]] = _8073 + (128 * _8079) + -mem[64] + 64
            mem[64] = _8073 + (128 * _8079) + 96
            require 0 < mem[_1364]
            _8255 = mem[mem[_1364 + 32]]
            require 0 < mem[96]
            _8261 = mem[mem[128] + 32]
            require 0 < mem[_1364]
            require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
            staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[_8073 + (128 * _8079) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _8073 + (128 * _8079) + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == address(_8261):
                require 0 < mem[96]
                _8287 = mem[mem[128] + 32]
                require 0 < mem[_1364]
                require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[_8073 + (128 * _8079) + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != address(_8287):
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 100] = 0
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 132] = 0
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 164] = this.address
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 196] = 128
                    _8335 = mem[_8250]
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 228] = mem[_8250]
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 260 len ceil32(_8335)] = mem[_8250 + 32 len ceil32(_8335)]
                    if ceil32(_8335) > _8335:
                        mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + _8335 + 260] = 0
                    require ext_code.size(address(_8255))
                    call address(_8255).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 228 len ceil32(_8335) + 32]
                else:
                    require 0 < mem[_1364]
                    _8327 = mem[mem[_1364 + 32] + 96]
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 100] = 0
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 132] = _8327
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 164] = this.address
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 196] = 128
                    _8344 = mem[_8250]
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 228] = mem[_8250]
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 260 len ceil32(_8344)] = mem[_8250 + 32 len ceil32(_8344)]
                    var90001 = ceil32(_8344)
                    if ceil32(_8344) > _8344:
                        mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + _8344 + 260] = 0
                    require ext_code.size(address(_8255))
                    call address(_8255).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _8327, address(this.address), 128, mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 228 len ceil32(_8344) + 32]
            else:
                require 0 < mem[_1364]
                _8282 = mem[mem[_1364 + 32] + 96]
                require 0 < mem[96]
                _8299 = mem[mem[128] + 32]
                require 0 < mem[_1364]
                require ext_code.size(mem[mem[_1364 + 32] + 12 len 20])
                staticcall mem[mem[_1364 + 32] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[_8073 + (128 * _8079) + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != address(_8299):
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 100] = _8282
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 132] = 0
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 164] = this.address
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 196] = 128
                    _8346 = mem[_8250]
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 228] = mem[_8250]
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 260 len ceil32(_8346)] = mem[_8250 + 32 len ceil32(_8346)]
                    var90001 = ceil32(_8346)
                    if ceil32(_8346) > _8346:
                        mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + _8346 + 260] = 0
                    require ext_code.size(address(_8255))
                    call address(_8255).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _8282, 0, address(this.address), 128, mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 228 len ceil32(_8346) + 32]
                else:
                    require 0 < mem[_1364]
                    _8337 = mem[mem[_1364 + 32] + 96]
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 100] = _8282
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 132] = _8337
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 164] = this.address
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 196] = 128
                    _8351 = mem[_8250]
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 228] = mem[_8250]
                    mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 260 len ceil32(_8351)] = mem[_8250 + 32 len ceil32(_8351)]
                    var91001 = ceil32(_8351)
                    if ceil32(_8351) > _8351:
                        mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + _8351 + 260] = 0
                    require ext_code.size(address(_8255))
                    call address(_8255).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _8282, _8337, address(this.address), 128, mem[_8073 + (128 * _8079) + (2 * ceil32(return_data.size)) + 228 len ceil32(_8351) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
