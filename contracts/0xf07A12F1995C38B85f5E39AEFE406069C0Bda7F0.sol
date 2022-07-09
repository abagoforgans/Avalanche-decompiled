contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address managerAddress;
uint256 stor0;

function manager() {
    return address(managerAddress)
}

function _fallback() payable {
  stop
}

function sub_a1efc0e8(?) {
    require msg.sender == address(managerAddress)
    call address(managerAddress) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4a6b4d53(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == address(managerAddress)
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
    call address(arg1).mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function sub_7bb7de53(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require ('cd', 4).length >= 32
    require ('cd', 4)[0] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 67 < cd[4] + ('cd', 4).length + 36
    require cd[(cd[4] + ('cd', 4)[0] + 36)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[0] + 36)]) + 128 <= test266151307() and (32 * cd[(cd[4] + ('cd', 4)[0] + 36)]) + 128 >= 96
    mem[64] = (32 * cd[(cd[4] + ('cd', 4)[0] + 36)]) + 128
    mem[96] = cd[(cd[4] + ('cd', 4)[0] + 36)]
    require ('cd', 4)[0] + (160 * cd[(cd[4] + ('cd', 4)[0] + 36)]) + 68 <= ('cd', 4).length + 36
    idx = 0
    s = cd[4] + ('cd', 4)[0] + 68
    t = 128
    while idx < cd[(cd[4] + ('cd', 4)[0] + 36)]:
        require cd[4] + ('cd', 4).length + -s + 36 >= 160
        _233 = mem[64]
        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
        mem[64] = mem[64] + 160
        require cd[s] == address(cd[s])
        mem[_233] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_233 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == cd[(s + 64)]
        mem[_233 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_233 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_233 + 128] = cd[(s + 128)]
        mem[t] = _233
        idx = idx + 1
        s = s + 160
        t = t + 32
        continue 
    _462 = mem[96]
    idx = 0
    while idx < _462:
        _463 = mem[64]
        mem[64] = mem[64] + 160
        mem[_463] = 0
        mem[_463 + 32] = 0
        mem[_463 + 64] = 0
        mem[_463 + 96] = 0
        mem[_463 + 128] = 0
        require idx < mem[96]
        _465 = mem[(32 * idx) + 128]
        if idx:
            if idx == mem[96] - 1:
                _470 = mem[mem[(32 * idx) + 128]]
                _471 = mem[mem[(32 * idx) + 128] + 96]
                _472 = mem[mem[(32 * idx) + 128] + 128]
                _475 = mem[64]
                mem[64] = mem[64] + 32
                mem[_475 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_475 + 36] = _471
                mem[_475 + 68] = _472
                mem[_475 + 100] = this.address
                mem[_475 + 132] = 128
                mem[_475 + 164] = mem[_475]
                s = 0
                while s < mem[_475]:
                    mem[_475 + s + 196] = mem[_475 + s + 32]
                    _462 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(mem[_475]) > mem[_475]:
                    mem[_475 + mem[_475] + 196] = 0
                require ext_code.size(address(_470))
                call address(_470).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _471, _472, address(this.address), Array(len=mem[_475], data=mem[_475 + 196 len ceil32(mem[_475])])
            else:
                _474 = mem[64]
                mem[64] = mem[64] + 160
                mem[_474] = 0
                mem[_474 + 32] = 0
                mem[_474 + 64] = 0
                mem[_474 + 96] = 0
                mem[_474 + 128] = 0
                require idx + 1 < mem[96]
                _479 = mem[_465]
                _480 = mem[_465 + 96]
                _481 = mem[_465 + 128]
                _482 = mem[mem[(32 * idx + 1) + 128]]
                _483 = mem[64]
                mem[64] = mem[64] + 32
                mem[_483 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_483 + 36] = _480
                mem[_483 + 68] = _481
                mem[_483 + 100] = address(_482)
                mem[_483 + 132] = 128
                mem[_483 + 164] = mem[_483]
                s = 0
                while s < mem[_483]:
                    mem[_483 + s + 196] = mem[_483 + s + 32]
                    _462 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(mem[_483]) > mem[_483]:
                    mem[_483 + mem[_483] + 196] = 0
                require ext_code.size(address(_479))
                call address(_479).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _480, _481, address(_482), Array(len=mem[_483], data=mem[_483 + 196 len ceil32(mem[_483])])
        else:
            _467 = mem[mem[(32 * idx) + 128] + 32]
            _469 = mem[mem[(32 * idx) + 128] + 64]
            _473 = mem[64]
            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
            mem[mem[64] + 68] = _469
            _485 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_485 + 32] = mem[_485 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            _488 = mem[_485]
            s = 0
            while s < _488:
                mem[_473 + s + 100] = mem[_485 + s + 32]
                _462 = mem[96]
                s = s + 32
                continue 
            if ceil32(_488) <= _488:
                call address(_467).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _473 + _488 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not mem[96]:
                        if idx == mem[96] - 1:
                            _743 = mem[_465]
                            _744 = mem[_465 + 96]
                            _745 = mem[_465 + 128]
                            _753 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_753 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_753 + 36] = _744
                            mem[_753 + 68] = _745
                            mem[_753 + 100] = this.address
                            mem[_753 + 132] = 128
                            mem[_753 + 164] = mem[_753]
                            s = 0
                            while s < mem[_753]:
                                mem[_753 + s + 196] = mem[_753 + s + 32]
                                _462 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_753]) > mem[_753]:
                                mem[_753 + mem[_753] + 196] = 0
                            require ext_code.size(address(_743))
                            call address(_743).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _744, _745, address(this.address), Array(len=mem[_753], data=mem[_753 + 196 len ceil32(mem[_753])])
                        else:
                            _752 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_752] = 0
                            mem[_752 + 32] = 0
                            mem[_752 + 64] = 0
                            mem[_752 + 96] = 0
                            mem[_752 + 128] = 0
                            require idx + 1 < mem[96]
                            _774 = mem[_465]
                            _775 = mem[_465 + 96]
                            _776 = mem[_465 + 128]
                            _777 = mem[mem[(32 * idx + 1) + 128]]
                            _787 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_787 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_787 + 36] = _775
                            mem[_787 + 68] = _776
                            mem[_787 + 100] = address(_777)
                            mem[_787 + 132] = 128
                            mem[_787 + 164] = mem[_787]
                            s = 0
                            while s < mem[_787]:
                                mem[_787 + s + 196] = mem[_787 + s + 32]
                                _462 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_787]) > mem[_787]:
                                mem[_787 + mem[_787] + 196] = 0
                            require ext_code.size(address(_774))
                            call address(_774).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _775, _776, address(_777), Array(len=mem[_787], data=mem[_787 + 196 len ceil32(mem[_787])])
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if idx == mem[96] - 1:
                            _811 = mem[_465]
                            _812 = mem[_465 + 96]
                            _813 = mem[_465 + 128]
                            _820 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_820 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_820 + 36] = _812
                            mem[_820 + 68] = _813
                            mem[_820 + 100] = this.address
                            mem[_820 + 132] = 128
                            mem[_820 + 164] = mem[_820]
                            s = 0
                            while s < mem[_820]:
                                mem[_820 + s + 196] = mem[_820 + s + 32]
                                _462 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_820]) > mem[_820]:
                                mem[_820 + mem[_820] + 196] = 0
                            require ext_code.size(address(_811))
                            call address(_811).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _812, _813, address(this.address), Array(len=mem[_820], data=mem[_820 + 196 len ceil32(mem[_820])])
                        else:
                            _819 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_819] = 0
                            mem[_819 + 32] = 0
                            mem[_819 + 64] = 0
                            mem[_819 + 96] = 0
                            mem[_819 + 128] = 0
                            require idx + 1 < mem[96]
                            _838 = mem[_465]
                            _839 = mem[_465 + 96]
                            _840 = mem[_465 + 128]
                            _841 = mem[mem[(32 * idx + 1) + 128]]
                            _853 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_853 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_853 + 36] = _839
                            mem[_853 + 68] = _840
                            mem[_853 + 100] = address(_841)
                            mem[_853 + 132] = 128
                            mem[_853 + 164] = mem[_853]
                            s = 0
                            while s < mem[_853]:
                                mem[_853 + s + 196] = mem[_853 + s + 32]
                                _462 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_853]) > mem[_853]:
                                mem[_853 + mem[_853] + 196] = 0
                            require ext_code.size(address(_838))
                            call address(_838).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _839, _840, address(_841), Array(len=mem[_853], data=mem[_853 + 196 len ceil32(mem[_853])])
                else:
                    _718 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_718] = return_data.size
                    mem[_718 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        if idx == mem[96] - 1:
                            _746 = mem[_465]
                            _747 = mem[_465 + 96]
                            _748 = mem[_465 + 128]
                            _756 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_756 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_756 + 36] = _747
                            mem[_756 + 68] = _748
                            mem[_756 + 100] = this.address
                            mem[_756 + 132] = 128
                            mem[_756 + 164] = mem[_756]
                            s = 0
                            while s < mem[_756]:
                                mem[_756 + s + 196] = mem[_756 + s + 32]
                                _462 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_756]) > mem[_756]:
                                mem[_756 + mem[_756] + 196] = 0
                            require ext_code.size(address(_746))
                            call address(_746).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _747, _748, address(this.address), Array(len=mem[_756], data=mem[_756 + 196 len ceil32(mem[_756])])
                        else:
                            _755 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_755] = 0
                            mem[_755 + 32] = 0
                            mem[_755 + 64] = 0
                            mem[_755 + 96] = 0
                            mem[_755 + 128] = 0
                            require idx + 1 < mem[96]
                            _779 = mem[_465]
                            _780 = mem[_465 + 96]
                            _781 = mem[_465 + 128]
                            _782 = mem[mem[(32 * idx + 1) + 128]]
                            _788 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_788 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_788 + 36] = _780
                            mem[_788 + 68] = _781
                            mem[_788 + 100] = address(_782)
                            mem[_788 + 132] = 128
                            mem[_788 + 164] = mem[_788]
                            s = 0
                            while s < mem[_788]:
                                mem[_788 + s + 196] = mem[_788 + s + 32]
                                _462 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_788]) > mem[_788]:
                                mem[_788 + mem[_788] + 196] = 0
                            require ext_code.size(address(_779))
                            call address(_779).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _780, _781, address(_782), Array(len=mem[_788], data=mem[_788 + 196 len ceil32(mem[_788])])
                    else:
                        require return_data.size >= 32
                        require mem[_718 + 32] == bool(mem[_718 + 32])
                        if not mem[_718 + 32]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if idx == mem[96] - 1:
                            _814 = mem[_465]
                            _815 = mem[_465 + 96]
                            _816 = mem[_465 + 128]
                            _822 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_822 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_822 + 36] = _815
                            mem[_822 + 68] = _816
                            mem[_822 + 100] = this.address
                            mem[_822 + 132] = 128
                            mem[_822 + 164] = mem[_822]
                            s = 0
                            while s < mem[_822]:
                                mem[_822 + s + 196] = mem[_822 + s + 32]
                                _462 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_822]) > mem[_822]:
                                mem[_822 + mem[_822] + 196] = 0
                            require ext_code.size(address(_814))
                            call address(_814).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _815, _816, address(this.address), Array(len=mem[_822], data=mem[_822 + 196 len ceil32(mem[_822])])
                        else:
                            _821 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_821] = 0
                            mem[_821 + 32] = 0
                            mem[_821 + 64] = 0
                            mem[_821 + 96] = 0
                            mem[_821 + 128] = 0
                            require idx + 1 < mem[96]
                            _844 = mem[_465]
                            _845 = mem[_465 + 96]
                            _846 = mem[_465 + 128]
                            _847 = mem[mem[(32 * idx + 1) + 128]]
                            _854 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_854 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_854 + 36] = _845
                            mem[_854 + 68] = _846
                            mem[_854 + 100] = address(_847)
                            mem[_854 + 132] = 128
                            mem[_854 + 164] = mem[_854]
                            s = 0
                            while s < mem[_854]:
                                mem[_854 + s + 196] = mem[_854 + s + 32]
                                _462 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_854]) > mem[_854]:
                                mem[_854 + mem[_854] + 196] = 0
                            require ext_code.size(address(_844))
                            call address(_844).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _845, _846, address(_847), Array(len=mem[_854], data=mem[_854 + 196 len ceil32(mem[_854])])
            else:
                mem[_473 + _488 + 100] = 0
                call address(_467).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _473 + _488 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not mem[96]:
                        if idx == mem[96] - 1:
                            _757 = mem[_465]
                            _758 = mem[_465 + 96]
                            _759 = mem[_465 + 128]
                            _769 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_769 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_769 + 36] = _758
                            mem[_769 + 68] = _759
                            mem[_769 + 100] = this.address
                            mem[_769 + 132] = 128
                            mem[_769 + 164] = mem[_769]
                            s = 0
                            while s < mem[_769]:
                                mem[_769 + s + 196] = mem[_769 + s + 32]
                                _462 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_769]) > mem[_769]:
                                mem[_769 + mem[_769] + 196] = 0
                            require ext_code.size(address(_757))
                            call address(_757).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _758, _759, address(this.address), Array(len=mem[_769], data=mem[_769 + 196 len ceil32(mem[_769])])
                        else:
                            _768 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_768] = 0
                            mem[_768 + 32] = 0
                            mem[_768 + 64] = 0
                            mem[_768 + 96] = 0
                            mem[_768 + 128] = 0
                            require idx + 1 < mem[96]
                            _790 = mem[_465]
                            _791 = mem[_465 + 96]
                            _792 = mem[_465 + 128]
                            _793 = mem[mem[(32 * idx + 1) + 128]]
                            _801 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_801 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_801 + 36] = _791
                            mem[_801 + 68] = _792
                            mem[_801 + 100] = address(_793)
                            mem[_801 + 132] = 128
                            mem[_801 + 164] = mem[_801]
                            s = 0
                            while s < mem[_801]:
                                mem[_801 + s + 196] = mem[_801 + s + 32]
                                _462 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_801]) > mem[_801]:
                                mem[_801 + mem[_801] + 196] = 0
                            require ext_code.size(address(_790))
                            call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _791, _792, address(_793), Array(len=mem[_801], data=mem[_801 + 196 len ceil32(mem[_801])])
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if idx == mem[96] - 1:
                            _823 = mem[_465]
                            _824 = mem[_465 + 96]
                            _825 = mem[_465 + 128]
                            _834 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_834 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_834 + 36] = _824
                            mem[_834 + 68] = _825
                            mem[_834 + 100] = this.address
                            mem[_834 + 132] = 128
                            mem[_834 + 164] = mem[_834]
                            s = 0
                            while s < mem[_834]:
                                mem[_834 + s + 196] = mem[_834 + s + 32]
                                _462 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_834]) > mem[_834]:
                                mem[_834 + mem[_834] + 196] = 0
                            require ext_code.size(address(_823))
                            call address(_823).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _824, _825, address(this.address), Array(len=mem[_834], data=mem[_834 + 196 len ceil32(mem[_834])])
                        else:
                            _833 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_833] = 0
                            mem[_833 + 32] = 0
                            mem[_833 + 64] = 0
                            mem[_833 + 96] = 0
                            mem[_833 + 128] = 0
                            require idx + 1 < mem[96]
                            _856 = mem[_465]
                            _857 = mem[_465 + 96]
                            _858 = mem[_465 + 128]
                            _859 = mem[mem[(32 * idx + 1) + 128]]
                            _869 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_869 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_869 + 36] = _857
                            mem[_869 + 68] = _858
                            mem[_869 + 100] = address(_859)
                            mem[_869 + 132] = 128
                            mem[_869 + 164] = mem[_869]
                            s = 0
                            while s < mem[_869]:
                                mem[_869 + s + 196] = mem[_869 + s + 32]
                                _462 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_869]) > mem[_869]:
                                mem[_869 + mem[_869] + 196] = 0
                            require ext_code.size(address(_856))
                            call address(_856).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _857, _858, address(_859), Array(len=mem[_869], data=mem[_869 + 196 len ceil32(mem[_869])])
                else:
                    _722 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_722] = return_data.size
                    mem[_722 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        if idx == mem[96] - 1:
                            _760 = mem[_465]
                            _761 = mem[_465 + 96]
                            _762 = mem[_465 + 128]
                            _772 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_772 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_772 + 36] = _761
                            mem[_772 + 68] = _762
                            mem[_772 + 100] = this.address
                            mem[_772 + 132] = 128
                            mem[_772 + 164] = mem[_772]
                            s = 0
                            while s < mem[_772]:
                                mem[_772 + s + 196] = mem[_772 + s + 32]
                                _462 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_772]) > mem[_772]:
                                mem[_772 + mem[_772] + 196] = 0
                            require ext_code.size(address(_760))
                            call address(_760).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _761, _762, address(this.address), Array(len=mem[_772], data=mem[_772 + 196 len ceil32(mem[_772])])
                        else:
                            _771 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_771] = 0
                            mem[_771 + 32] = 0
                            mem[_771 + 64] = 0
                            mem[_771 + 96] = 0
                            mem[_771 + 128] = 0
                            require idx + 1 < mem[96]
                            _795 = mem[_465]
                            _796 = mem[_465 + 96]
                            _797 = mem[_465 + 128]
                            _798 = mem[mem[(32 * idx + 1) + 128]]
                            _802 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_802 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_802 + 36] = _796
                            mem[_802 + 68] = _797
                            mem[_802 + 100] = address(_798)
                            mem[_802 + 132] = 128
                            mem[_802 + 164] = mem[_802]
                            s = 0
                            while s < mem[_802]:
                                mem[_802 + s + 196] = mem[_802 + s + 32]
                                _462 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_802]) > mem[_802]:
                                mem[_802 + mem[_802] + 196] = 0
                            require ext_code.size(address(_795))
                            call address(_795).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _796, _797, address(_798), Array(len=mem[_802], data=mem[_802 + 196 len ceil32(mem[_802])])
                    else:
                        require return_data.size >= 32
                        require mem[_722 + 32] == bool(mem[_722 + 32])
                        if not mem[_722 + 32]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if idx == mem[96] - 1:
                            _826 = mem[_465]
                            _827 = mem[_465 + 96]
                            _828 = mem[_465 + 128]
                            _836 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_836 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_836 + 36] = _827
                            mem[_836 + 68] = _828
                            mem[_836 + 100] = this.address
                            mem[_836 + 132] = 128
                            mem[_836 + 164] = mem[_836]
                            s = 0
                            while s < mem[_836]:
                                mem[_836 + s + 196] = mem[_836 + s + 32]
                                _462 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_836]) > mem[_836]:
                                mem[_836 + mem[_836] + 196] = 0
                            require ext_code.size(address(_826))
                            call address(_826).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _827, _828, address(this.address), Array(len=mem[_836], data=mem[_836 + 196 len ceil32(mem[_836])])
                        else:
                            _835 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_835] = 0
                            mem[_835 + 32] = 0
                            mem[_835 + 64] = 0
                            mem[_835 + 96] = 0
                            mem[_835 + 128] = 0
                            require idx + 1 < mem[96]
                            _862 = mem[_465]
                            _863 = mem[_465 + 96]
                            _864 = mem[_465 + 128]
                            _865 = mem[mem[(32 * idx + 1) + 128]]
                            _870 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_870 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_870 + 36] = _863
                            mem[_870 + 68] = _864
                            mem[_870 + 100] = address(_865)
                            mem[_870 + 132] = 128
                            mem[_870 + 164] = mem[_870]
                            s = 0
                            while s < mem[_870]:
                                mem[_870 + s + 196] = mem[_870 + s + 32]
                                _462 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_870]) > mem[_870]:
                                mem[_870 + mem[_870] + 196] = 0
                            require ext_code.size(address(_862))
                            call address(_862).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _863, _864, address(_865), Array(len=mem[_870], data=mem[_870 + 196 len ceil32(mem[_870])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _462 = mem[96]
        idx = idx + 1
        continue 
}



}
