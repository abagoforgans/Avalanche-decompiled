contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
array of uint256 stor2;

function _fallback() payable {
    revert
}

function sub_ca8b4b5d(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    require arg7.length <= test266151307()
    require ceil32(arg7.length) + 128 >= 96 and ceil32(arg7.length) + 128 <= test266151307()
    require arg7 + arg7.length + 36 <= calldata.size
    mem[128 len arg7.length] = arg7[all]
    mem[arg7.length + 128] = 0
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[ceil32(arg7.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] < arg3:
        return 2
    require ext_code.size(stor0)
    staticcall stor0.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[ceil32(arg7.length) + ceil32(return_data.size) + 128 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if ext_call.return_data[160] > 10^18:
        return 3
    mem[ceil32(arg7.length) + (2 * ceil32(return_data.size)) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg4))
    if not arg5:
        call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args arg6, 0, address(this.address), 128, arg7.length, arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]
    else:
        call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, arg6, address(this.address), 128, arg7.length, arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function sub_fa5a0d96(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[68] == address(cd[68])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require ceil32(('cd', 164).length) + 128 >= 96 and ceil32(('cd', 164).length) + 128 <= test266151307()
    require cd[164] + ('cd', 164).length + 36 <= calldata.size
    mem[128 len ('cd', 164).length] = call.data[cd[164] + 36 len ('cd', 164).length]
    mem[('cd', 164).length + 128] = 0
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).latestAnswer() with:
            gas gas_remaining wei
    mem[ceil32(('cd', 164).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if cd[36] != Mask(8 * -ceil32(('cd', 164).length) + ('cd', 164).length + 32, 0, 0), mem[('cd', 164).length + 160 len -('cd', 164).length + ceil32(('cd', 164).length)]:
        return 1
    require ('cd', 164).length >= 96
    require mem[128] == mem[140 len 20]
    require mem[160] == mem[172 len 20]
    _11 = mem[192]
    require mem[192] == mem[204 len 20]
    if not bool(stor2.length):
        mem[ceil32(('cd', 164).length) + ceil32(return_data.size) + 128] = Mask(248, 8, stor2.length)
        _15 = sha3(mem[ceil32(('cd', 164).length) + ceil32(return_data.size) + 128 len stor2.length.field_1])
        mem[ceil32(('cd', 164).length) + ceil32(return_data.size) + 128 len calldata.size] = call.data[0 len calldata.size]
        if sha3(call.data[0 len calldata.size]) == _15:
            return 4
        require ext_code.size(stor0)
        staticcall stor0.getUserAccountData(address arg1) with:
                gas gas_remaining wei
               args address(_11)
        mem[ceil32(('cd', 164).length) + ceil32(return_data.size) + 128 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if ext_call.return_data[160] > 10^18:
            stor2.length = (2 * calldata.size) + 1
            s = 0
            idx = 0
            while calldata.size > idx:
                stor2[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, calldata.size + 31) >> 5
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
            return 3
        mem[ceil32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[68]))
        if not cd[100]:
            call address(cd[68]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args cd[132], 0, address(this.address), 128, ('cd', 164).length, call.data[cd[164] + 36 len ('cd', 164).length], mem[('cd', 164).length + 128 len ceil32(('cd', 164).length) - ('cd', 164).length]
        else:
            call address(cd[68]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, cd[132], address(this.address), 128, ('cd', 164).length, call.data[cd[164] + 36 len ('cd', 164).length], mem[('cd', 164).length + 128 len ceil32(('cd', 164).length) - ('cd', 164).length]
    else:
        if bool(stor2.length) != 1:
            _18 = sha3(mem[ceil32(('cd', 164).length) + ceil32(return_data.size) + 128 len -ceil32(('cd', 164).length) + -ceil32(return_data.size) - 128])
            mem[ceil32(('cd', 164).length) + ceil32(return_data.size) + 128 len calldata.size] = call.data[0 len calldata.size]
            if sha3(call.data[0 len calldata.size]) == _18:
                return 4
            require ext_code.size(stor0)
            staticcall stor0.getUserAccountData(address arg1) with:
                    gas gas_remaining wei
                   args address(_11)
            mem[ceil32(('cd', 164).length) + ceil32(return_data.size) + 128 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            if ext_call.return_data[160] > 10^18:
                stor2.length = (2 * calldata.size) + 1
                s = 0
                idx = 0
                while calldata.size > idx:
                    stor2[s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, calldata.size + 31) >> 5
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                return 3
            mem[ceil32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[68]))
            if not cd[100]:
                call address(cd[68]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args cd[132], 0, address(this.address), 128, ('cd', 164).length, call.data[cd[164] + 36 len ('cd', 164).length], mem[('cd', 164).length + 128 len ceil32(('cd', 164).length) - ('cd', 164).length]
            else:
                call address(cd[68]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, cd[132], address(this.address), 128, ('cd', 164).length, call.data[cd[164] + 36 len ('cd', 164).length], mem[('cd', 164).length + 128 len ceil32(('cd', 164).length) - ('cd', 164).length]
        else:
            idx = 0
            s = 0
            while idx < stor2.length.field_1:
                mem[idx + ceil32(('cd', 164).length) + ceil32(return_data.size) + 128] = stor2[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _142 = sha3(mem[ceil32(('cd', 164).length) + ceil32(return_data.size) + 128 len stor2.length.field_1])
            mem[ceil32(('cd', 164).length) + ceil32(return_data.size) + 128 len calldata.size] = call.data[0 len calldata.size]
            if sha3(call.data[0 len calldata.size]) == _142:
                return 4
            require ext_code.size(stor0)
            staticcall stor0.getUserAccountData(address arg1) with:
                    gas gas_remaining wei
                   args address(_11)
            mem[ceil32(('cd', 164).length) + ceil32(return_data.size) + 128 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            if ext_call.return_data[160] > 10^18:
                stor2.length = (2 * calldata.size) + 1
                s = 0
                idx = 0
                while calldata.size > idx:
                    stor2[s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, calldata.size + 31) >> 5
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                return 3
            mem[ceil32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            var64001 = ceil32(('cd', 164).length)
            require ext_code.size(address(cd[68]))
            if not cd[100]:
                call address(cd[68]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args cd[132], 0, address(this.address), 128, ('cd', 164).length, mem[128 len ceil32(('cd', 164).length)]
            else:
                call address(cd[68]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, cd[132], address(this.address), 128, ('cd', 164).length, mem[128 len ceil32(('cd', 164).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 96
    mem[320] = 0
    mem[352] = 0
    mem[384] = arg4.length
    mem[416 len arg4.length] = arg4[all]
    mem[arg4.length + 416] = 0
    mem[ceil32(arg4.length) + 416] = 0
    mem[ceil32(arg4.length) + 448] = 0
    mem[ceil32(arg4.length) + 480] = 0
    mem[ceil32(arg4.length) + 512] = 0
    mem[ceil32(arg4.length) + 544] = 0
    mem[ceil32(arg4.length) + 576] = 0
    mem[ceil32(arg4.length) + 608] = 96
    mem[ceil32(arg4.length) + 640] = 0
    mem[ceil32(arg4.length) + 672] = 0
    require arg4.length >= 256
    _7 = mem[416]
    require mem[416] == mem[428 len 20]
    _8 = mem[448]
    require mem[448] == mem[460 len 20]
    _9 = mem[480]
    require mem[480] == mem[492 len 20]
    _10 = mem[512]
    _11 = mem[544]
    require mem[544] == mem[556 len 20]
    require mem[576] <= test266151307()
    require arg4.length + 416 > mem[576] + 447
    _13 = mem[mem[576] + 416]
    require mem[mem[576] + 416] <= test266151307()
    require (32 * mem[mem[576] + 416]) + 736 >= 704 and ceil32(arg4.length) + (32 * mem[mem[576] + 416]) + 736 <= test266151307()
    mem[64] = ceil32(arg4.length) + (32 * mem[mem[576] + 416]) + 736
    mem[ceil32(arg4.length) + 704] = mem[mem[576] + 416]
    require mem[576] + (32 * _13) + 64 <= arg4.length + 32
    s = mem[576] + 448
    t = ceil32(arg4.length) + 736
    idx = 0
    while idx < _13:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _722 = mem[608]
    _723 = mem[640]
    _725 = mem[64]
    mem[64] = mem[64] + 160
    mem[_725] = 0
    mem[_725 + 32] = 0
    mem[_725 + 64] = 0
    mem[_725 + 96] = 0
    mem[_725 + 128] = 0
    _726 = mem[64]
    mem[64] = mem[64] + 160
    mem[_726] = address(_7)
    mem[_726 + 32] = address(_8)
    mem[_726 + 64] = address(_9)
    mem[_726 + 96] = _10
    mem[_726 + 128] = address(_11)
    _727 = mem[64]
    mem[64] = mem[64] + 128
    mem[_727] = 0
    mem[_727 + 32] = 96
    mem[_727 + 64] = 0
    mem[_727 + 96] = 0
    _728 = mem[64]
    mem[64] = mem[64] + 128
    mem[_728] = address(_8)
    mem[_728 + 32] = ceil32(arg4.length) + 704
    mem[_728 + 64] = _722
    mem[_728 + 96] = _723
    mem[mem[64] + 4] = stor0
    mem[mem[64] + 36] = _10
    require ext_code.size(address(_7))
    call address(_7).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, _10
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 == arg2:
        _737 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_737] == bool(mem[_737])
        mem[mem[64] + 36] = address(_7)
        mem[mem[64] + 68] = address(_9)
        mem[mem[64] + 100] = _10
        mem[mem[64] + 132] = 0
        require ext_code.size(stor0)
        call stor0.liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
             gas gas_remaining wei
            args address(_8), address(_7), address(_9), _10, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_8))
        staticcall address(_8).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _759 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _761 = mem[_759]
        if mem[ceil32(arg4.length) + 704] <= 0:
            if address(_7) == uint64(_8) << 96:
                if not _10:
                    _796 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_796] = 26
                    mem[_796 + 32] = 'SafeMath: division by zero'
                    _827 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_827] = 2
                    mem[_827 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                    if 1 > _761:
                        revert with 0, '', 0
                    mem[mem[64] + 4] = address(_11)
                    mem[mem[64] + 36] = _761 - 1
                    require ext_code.size(address(_8))
                    call address(_8).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(_11), _761 - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _870 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_870] == bool(mem[_870])
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(_8))
                    call address(_8).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _944 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_944] == bool(mem[_944])
                else:
                    if 1000 * _10 / _10 != 1000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _799 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_799] = 26
                    mem[_799 + 32] = 'SafeMath: division by zero'
                    if (1000 * _10 / 997) + 1 < 1000 * _10 / 997:
                        revert with 0, 'SafeMath: addition overflow'
                    _832 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_832] = 2
                    mem[_832 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                    if (1000 * _10 / 997) + 1 > _761:
                        revert with 0, '', 0
                    mem[mem[64] + 4] = address(_11)
                    mem[mem[64] + 36] = _761 + -(1000 * _10 / 997) - 1
                    require ext_code.size(address(_8))
                    call address(_8).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(_11), _761 + -(1000 * _10 / 997) - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _877 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_877] == bool(mem[_877])
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = (1000 * _10 / 997) + 1
                    require ext_code.size(address(_8))
                    call address(_8).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (1000 * _10 / 997) + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _957 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_957] == bool(mem[_957])
            else:
                require ext_code.size(msg.sender)
                staticcall msg.sender.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _787 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _795 = mem[_787]
                require mem[_787] == mem[_787 + 18 len 14]
                _813 = mem[_787 + 32]
                require mem[_787 + 32] == mem[_787 + 50 len 14]
                if not mem[_787 + 18 len 14]:
                    _853 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_853] = 11
                    mem[_853 + 32] = 0x43616c63206661696c6564000000000000000000000000000000000000000000
                    if _10 > Mask(112, 0, _813):
                        revert with 0, '', 0
                    require Mask(112, 0, _813) - _10
                    if (997 * Mask(112, 0, _813)) - (997 * _10) / Mask(112, 0, _813) - _10 != 997:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require (997 * Mask(112, 0, _813)) - (997 * _10)
                    if (0 / (997 * Mask(112, 0, _813)) - (997 * _10)) + 1 < 0 / (997 * Mask(112, 0, _813)) - (997 * _10):
                        revert with 0, 'SafeMath: addition overflow'
                    _994 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_994] = 2
                    mem[_994 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                    if (0 / (997 * Mask(112, 0, _813)) - (997 * _10)) + 1 > _761:
                        revert with 0, '', 0
                    mem[mem[64] + 4] = address(_11)
                    mem[mem[64] + 36] = _761 + -(0 / (997 * Mask(112, 0, _813)) - (997 * _10)) - 1
                    require ext_code.size(address(_8))
                    call address(_8).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(_11), _761 + -(0 / (997 * Mask(112, 0, _813)) - (997 * _10)) - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1059 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1059] == bool(mem[_1059])
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = (0 / (997 * Mask(112, 0, _813)) - (997 * _10)) + 1
                    require ext_code.size(address(_8))
                    call address(_8).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (997 * Mask(112, 0, _813)) - (997 * _10)) + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1110 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1110] == bool(mem[_1110])
                else:
                    if _10 * mem[_787 + 18 len 14] / mem[_787 + 18 len 14] != _10:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not _10 * mem[_787 + 18 len 14]:
                        _860 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_860] = 11
                        mem[_860 + 32] = 0x43616c63206661696c6564000000000000000000000000000000000000000000
                        if _10 > Mask(112, 0, _813):
                            revert with 0, '', 0
                        require Mask(112, 0, _813) - _10
                        if (997 * Mask(112, 0, _813)) - (997 * _10) / Mask(112, 0, _813) - _10 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require (997 * Mask(112, 0, _813)) - (997 * _10)
                        if (0 / (997 * Mask(112, 0, _813)) - (997 * _10)) + 1 < 0 / (997 * Mask(112, 0, _813)) - (997 * _10):
                            revert with 0, 'SafeMath: addition overflow'
                        _1009 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1009] = 2
                        mem[_1009 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                        if (0 / (997 * Mask(112, 0, _813)) - (997 * _10)) + 1 > _761:
                            revert with 0, '', 0
                        mem[mem[64] + 4] = address(_11)
                        mem[mem[64] + 36] = _761 + -(0 / (997 * Mask(112, 0, _813)) - (997 * _10)) - 1
                        require ext_code.size(address(_8))
                        call address(_8).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_11), _761 + -(0 / (997 * Mask(112, 0, _813)) - (997 * _10)) - 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1064 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1064] == bool(mem[_1064])
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = (0 / (997 * Mask(112, 0, _813)) - (997 * _10)) + 1
                        require ext_code.size(address(_8))
                        call address(_8).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, _813)) - (997 * _10)) + 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1121 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1121] == bool(mem[_1121])
                    else:
                        if 1000 * _10 * mem[_787 + 18 len 14] / _10 * mem[_787 + 18 len 14] != 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _867 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_867] = 11
                        mem[_867 + 32] = 0x43616c63206661696c6564000000000000000000000000000000000000000000
                        if _10 > Mask(112, 0, _813):
                            revert with 0, '', 0
                        require Mask(112, 0, _813) - _10
                        if (997 * Mask(112, 0, _813)) - (997 * _10) / Mask(112, 0, _813) - _10 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require (997 * Mask(112, 0, _813)) - (997 * _10)
                        if (1000 * _10 * Mask(112, 0, _795) / (997 * Mask(112, 0, _813)) - (997 * _10)) + 1 < 1000 * _10 * Mask(112, 0, _795) / (997 * Mask(112, 0, _813)) - (997 * _10):
                            revert with 0, 'SafeMath: addition overflow'
                        _1017 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1017] = 2
                        mem[_1017 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                        if (1000 * _10 * Mask(112, 0, _795) / (997 * Mask(112, 0, _813)) - (997 * _10)) + 1 > _761:
                            revert with 0, '', 0
                        mem[mem[64] + 4] = address(_11)
                        mem[mem[64] + 36] = _761 + -(1000 * _10 * Mask(112, 0, _795) / (997 * Mask(112, 0, _813)) - (997 * _10)) - 1
                        require ext_code.size(address(_8))
                        call address(_8).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_11), _761 + -(1000 * _10 * Mask(112, 0, _795) / (997 * Mask(112, 0, _813)) - (997 * _10)) - 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1067 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1067] == bool(mem[_1067])
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = (1000 * _10 * Mask(112, 0, _795) / (997 * Mask(112, 0, _813)) - (997 * _10)) + 1
                        require ext_code.size(address(_8))
                        call address(_8).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (1000 * _10 * Mask(112, 0, _795) / (997 * Mask(112, 0, _813)) - (997 * _10)) + 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1129 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1129] == bool(mem[_1129])
            emit 0x8246cc71: address(_9), address(_7), address(_8), _10, _761
        else:
            mem[mem[64] + 4] = stor1
            mem[mem[64] + 36] = _761
            require ext_code.size(address(_8))
            call address(_8).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor1, _761
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _788 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_788] == bool(mem[_788])
            _804 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _761
            mem[mem[64] + 36] = _722
            mem[mem[64] + 68] = 160
            _811 = mem[ceil32(arg4.length) + 704]
            mem[mem[64] + 164] = mem[ceil32(arg4.length) + 704]
            idx = 0
            s = mem[64] + 196
            t = ceil32(arg4.length) + 736
            while idx < _811:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_804 + 100] = this.address
            mem[_804 + 132] = _723
            require ext_code.size(stor1)
            call stor1.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _804 + (32 * _811) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1457 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1483 = mem[_1457]
            require mem[_1457] <= test266151307()
            require _1457 + return_data.size > _1457 + mem[_1457] + 31
            _1485 = mem[_1457 + mem[_1457]]
            require mem[_1457 + mem[_1457]] <= test266151307()
            require (32 * mem[_1457 + mem[_1457]]) + 32 >= 0 and _1457 + ceil32(return_data.size) + (32 * mem[_1457 + mem[_1457]]) + 32 <= test266151307()
            mem[64] = _1457 + ceil32(return_data.size) + (32 * mem[_1457 + mem[_1457]]) + 32
            mem[_1457 + ceil32(return_data.size)] = _1485
            require return_data.size >= _1483 + (32 * _1485) + 32
            mem[_1457 + ceil32(return_data.size) + 32 len 32 * _1485] = mem[_1457 + _1483 + 32 len 32 * _1485]
            require mem[mem[_728 + 32]] - 1 < mem[mem[_728 + 32]]
            _1815 = mem[(32 * mem[mem[_728 + 32]] - 1) + mem[_728 + 32] + 32]
            require mem[mem[_728 + 32]] - 1 < _1485
            _1819 = mem[(32 * mem[mem[_728 + 32]] - 1) + _1457 + ceil32(return_data.size) + 32]
            if mem[_726 + 12 len 20] == mem[_726 + 44 len 20]:
                _1826 = mem[_726 + 96]
                if not mem[_726 + 96]:
                    _1838 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1838] = 26
                    mem[_1838 + 32] = 'SafeMath: division by zero'
                    _1851 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1851] = 2
                    mem[_1851 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                    if 1 > _1819:
                        revert with 0, '', 0
                    mem[mem[64] + 4] = mem[_726 + 140 len 20]
                    mem[mem[64] + 36] = _1819 - 1
                    require ext_code.size(address(_1815))
                    call address(_1815).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1819 - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1890 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1890] == bool(mem[_1890])
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(_1815))
                    call address(_1815).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1948 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1948] == bool(mem[_1948])
                    _1977 = mem[_726]
                    _1978 = mem[_726 + 32]
                    _1979 = mem[_726 + 96]
                    mem[mem[64]] = mem[_726 + 76 len 20]
                    mem[mem[64] + 64] = address(_1978)
                    mem[mem[64] + 96] = _1979
                    emit 0x8246cc71: mem[mem[64]], address(_1977), address(_1978), _1979, _761
                else:
                    if 1000 * mem[_726 + 96] / mem[_726 + 96] != 1000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1841 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1841] = 26
                    mem[_1841 + 32] = 'SafeMath: division by zero'
                    if (1000 * _1826 / 997) + 1 < 1000 * _1826 / 997:
                        revert with 0, 'SafeMath: addition overflow'
                    _1854 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1854] = 2
                    mem[_1854 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                    if (1000 * _1826 / 997) + 1 > _1819:
                        revert with 0, '', 0
                    mem[mem[64] + 4] = mem[_726 + 140 len 20]
                    mem[mem[64] + 36] = _1819 + -(1000 * _1826 / 997) - 1
                    require ext_code.size(address(_1815))
                    call address(_1815).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1819 + -(1000 * _1826 / 997) - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1897 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1897] == bool(mem[_1897])
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = (1000 * _1826 / 997) + 1
                    require ext_code.size(address(_1815))
                    call address(_1815).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (1000 * _1826 / 997) + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1957 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1957] == bool(mem[_1957])
                    _1990 = mem[_726]
                    _1991 = mem[_726 + 32]
                    _1992 = mem[_726 + 96]
                    mem[mem[64]] = mem[_726 + 76 len 20]
                    mem[mem[64] + 64] = address(_1991)
                    mem[mem[64] + 96] = _1992
                    emit 0x8246cc71: mem[mem[64]], address(_1990), address(_1991), _1992, _761
            else:
                _1825 = mem[_726 + 96]
                require ext_code.size(msg.sender)
                staticcall msg.sender.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1833 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1837 = mem[_1833]
                require mem[_1833] == mem[_1833 + 18 len 14]
                _1845 = mem[_1833 + 32]
                require mem[_1833 + 32] == mem[_1833 + 50 len 14]
                if not mem[_1833 + 18 len 14]:
                    _1873 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1873] = 11
                    mem[_1873 + 32] = 0x43616c63206661696c6564000000000000000000000000000000000000000000
                    if _1825 > Mask(112, 0, _1845):
                        revert with 0, '', 0
                    require Mask(112, 0, _1845) - _1825
                    if (997 * Mask(112, 0, _1845)) - (997 * _1825) / Mask(112, 0, _1845) - _1825 != 997:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require (997 * Mask(112, 0, _1845)) - (997 * _1825)
                    if (0 / (997 * Mask(112, 0, _1845)) - (997 * _1825)) + 1 < 0 / (997 * Mask(112, 0, _1845)) - (997 * _1825):
                        revert with 0, 'SafeMath: addition overflow'
                    _1988 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1988] = 2
                    mem[_1988 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                    if (0 / (997 * Mask(112, 0, _1845)) - (997 * _1825)) + 1 > _1819:
                        revert with 0, '', 0
                    mem[mem[64] + 4] = mem[_726 + 140 len 20]
                    mem[mem[64] + 36] = _1819 + -(0 / (997 * Mask(112, 0, _1845)) - (997 * _1825)) - 1
                    require ext_code.size(address(_1815))
                    call address(_1815).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1819 + -(0 / (997 * Mask(112, 0, _1845)) - (997 * _1825)) - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2041 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2041] == bool(mem[_2041])
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = (0 / (997 * Mask(112, 0, _1845)) - (997 * _1825)) + 1
                    require ext_code.size(address(_1815))
                    call address(_1815).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (997 * Mask(112, 0, _1845)) - (997 * _1825)) + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2080 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2080] == bool(mem[_2080])
                    _2093 = mem[_726]
                    _2094 = mem[_726 + 32]
                    _2095 = mem[_726 + 96]
                    mem[mem[64]] = mem[_726 + 76 len 20]
                    mem[mem[64] + 64] = address(_2094)
                    mem[mem[64] + 96] = _2095
                    emit 0x8246cc71: mem[mem[64]], address(_2093), address(_2094), _2095, _761
                else:
                    if _1825 * mem[_1833 + 18 len 14] / mem[_1833 + 18 len 14] != _1825:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not _1825 * mem[_1833 + 18 len 14]:
                        _1880 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1880] = 11
                        mem[_1880 + 32] = 0x43616c63206661696c6564000000000000000000000000000000000000000000
                        if _1825 > Mask(112, 0, _1845):
                            revert with 0, '', 0
                        require Mask(112, 0, _1845) - _1825
                        if (997 * Mask(112, 0, _1845)) - (997 * _1825) / Mask(112, 0, _1845) - _1825 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require (997 * Mask(112, 0, _1845)) - (997 * _1825)
                        if (0 / (997 * Mask(112, 0, _1845)) - (997 * _1825)) + 1 < 0 / (997 * Mask(112, 0, _1845)) - (997 * _1825):
                            revert with 0, 'SafeMath: addition overflow'
                        _2001 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2001] = 2
                        mem[_2001 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                        if (0 / (997 * Mask(112, 0, _1845)) - (997 * _1825)) + 1 > _1819:
                            revert with 0, '', 0
                        mem[mem[64] + 4] = mem[_726 + 140 len 20]
                        mem[mem[64] + 36] = _1819 + -(0 / (997 * Mask(112, 0, _1845)) - (997 * _1825)) - 1
                        require ext_code.size(address(_1815))
                        call address(_1815).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1819 + -(0 / (997 * Mask(112, 0, _1845)) - (997 * _1825)) - 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2046 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2046] == bool(mem[_2046])
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = (0 / (997 * Mask(112, 0, _1845)) - (997 * _1825)) + 1
                        require ext_code.size(address(_1815))
                        call address(_1815).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, _1845)) - (997 * _1825)) + 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2083 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2083] == bool(mem[_2083])
                        _2104 = mem[_726]
                        _2105 = mem[_726 + 32]
                        _2106 = mem[_726 + 96]
                        mem[mem[64]] = mem[_726 + 76 len 20]
                        mem[mem[64] + 64] = address(_2105)
                        mem[mem[64] + 96] = _2106
                        emit 0x8246cc71: mem[mem[64]], address(_2104), address(_2105), _2106, _761
                    else:
                        if 1000 * _1825 * mem[_1833 + 18 len 14] / _1825 * mem[_1833 + 18 len 14] != 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1887 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1887] = 11
                        mem[_1887 + 32] = 0x43616c63206661696c6564000000000000000000000000000000000000000000
                        if _1825 > Mask(112, 0, _1845):
                            revert with 0, '', 0
                        require Mask(112, 0, _1845) - _1825
                        if (997 * Mask(112, 0, _1845)) - (997 * _1825) / Mask(112, 0, _1845) - _1825 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require (997 * Mask(112, 0, _1845)) - (997 * _1825)
                        if (1000 * _1825 * Mask(112, 0, _1837) / (997 * Mask(112, 0, _1845)) - (997 * _1825)) + 1 < 1000 * _1825 * Mask(112, 0, _1837) / (997 * Mask(112, 0, _1845)) - (997 * _1825):
                            revert with 0, 'SafeMath: addition overflow'
                        _2005 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2005] = 2
                        mem[_2005 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                        if (1000 * _1825 * Mask(112, 0, _1837) / (997 * Mask(112, 0, _1845)) - (997 * _1825)) + 1 > _1819:
                            revert with 0, '', 0
                        mem[mem[64] + 4] = mem[_726 + 140 len 20]
                        mem[mem[64] + 36] = _1819 + -(1000 * _1825 * Mask(112, 0, _1837) / (997 * Mask(112, 0, _1845)) - (997 * _1825)) - 1
                        require ext_code.size(address(_1815))
                        call address(_1815).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1819 + -(1000 * _1825 * Mask(112, 0, _1837) / (997 * Mask(112, 0, _1845)) - (997 * _1825)) - 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2049 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2049] == bool(mem[_2049])
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = (1000 * _1825 * Mask(112, 0, _1837) / (997 * Mask(112, 0, _1845)) - (997 * _1825)) + 1
                        require ext_code.size(address(_1815))
                        call address(_1815).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (1000 * _1825 * Mask(112, 0, _1837) / (997 * Mask(112, 0, _1845)) - (997 * _1825)) + 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2085 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2085] == bool(mem[_2085])
                        _2114 = mem[_726]
                        _2115 = mem[_726 + 32]
                        _2116 = mem[_726 + 96]
                        mem[mem[64]] = mem[_726 + 76 len 20]
                        mem[mem[64] + 64] = address(_2115)
                        mem[mem[64] + 96] = _2116
                        emit 0x8246cc71: mem[mem[64]], address(_2114), address(_2115), _2116, _761
    else:
        _738 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_738] == bool(mem[_738])
        mem[mem[64] + 36] = address(_7)
        mem[mem[64] + 68] = address(_9)
        mem[mem[64] + 100] = _10
        mem[mem[64] + 132] = 0
        require ext_code.size(stor0)
        call stor0.liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
             gas gas_remaining wei
            args address(_8), address(_7), address(_9), _10, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_8))
        staticcall address(_8).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _760 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _762 = mem[_760]
        if mem[ceil32(arg4.length) + 704] <= 0:
            if address(_7) == uint64(_8) << 96:
                if not _10:
                    _798 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_798] = 26
                    mem[_798 + 32] = 'SafeMath: division by zero'
                    _829 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_829] = 2
                    mem[_829 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                    if 1 > _762:
                        revert with 0, '', 0
                    mem[mem[64] + 4] = address(_11)
                    mem[mem[64] + 36] = _762 - 1
                    require ext_code.size(address(_8))
                    call address(_8).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(_11), _762 - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _874 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_874] == bool(mem[_874])
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(_8))
                    call address(_8).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _950 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_950] == bool(mem[_950])
                else:
                    if 1000 * _10 / _10 != 1000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _805 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_805] = 26
                    mem[_805 + 32] = 'SafeMath: division by zero'
                    if (1000 * _10 / 997) + 1 < 1000 * _10 / 997:
                        revert with 0, 'SafeMath: addition overflow'
                    _834 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_834] = 2
                    mem[_834 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                    if (1000 * _10 / 997) + 1 > _762:
                        revert with 0, '', 0
                    mem[mem[64] + 4] = address(_11)
                    mem[mem[64] + 36] = _762 + -(1000 * _10 / 997) - 1
                    require ext_code.size(address(_8))
                    call address(_8).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(_11), _762 + -(1000 * _10 / 997) - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _880 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_880] == bool(mem[_880])
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = (1000 * _10 / 997) + 1
                    require ext_code.size(address(_8))
                    call address(_8).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (1000 * _10 / 997) + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _964 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_964] == bool(mem[_964])
            else:
                require ext_code.size(msg.sender)
                staticcall msg.sender.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _789 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _797 = mem[_789]
                require mem[_789] == mem[_789 + 18 len 14]
                _814 = mem[_789 + 32]
                require mem[_789 + 32] == mem[_789 + 50 len 14]
                if not mem[_789 + 50 len 14]:
                    _856 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_856] = 11
                    mem[_856 + 32] = 0x43616c63206661696c6564000000000000000000000000000000000000000000
                    if _10 > Mask(112, 0, _797):
                        revert with 0, '', 0
                    require Mask(112, 0, _797) - _10
                    if (997 * Mask(112, 0, _797)) - (997 * _10) / Mask(112, 0, _797) - _10 != 997:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require (997 * Mask(112, 0, _797)) - (997 * _10)
                    if (0 / (997 * Mask(112, 0, _797)) - (997 * _10)) + 1 < 0 / (997 * Mask(112, 0, _797)) - (997 * _10):
                        revert with 0, 'SafeMath: addition overflow'
                    _1002 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1002] = 2
                    mem[_1002 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                    if (0 / (997 * Mask(112, 0, _797)) - (997 * _10)) + 1 > _762:
                        revert with 0, '', 0
                    mem[mem[64] + 4] = address(_11)
                    mem[mem[64] + 36] = _762 + -(0 / (997 * Mask(112, 0, _797)) - (997 * _10)) - 1
                    require ext_code.size(address(_8))
                    call address(_8).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(_11), _762 + -(0 / (997 * Mask(112, 0, _797)) - (997 * _10)) - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1062 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1062] == bool(mem[_1062])
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = (0 / (997 * Mask(112, 0, _797)) - (997 * _10)) + 1
                    require ext_code.size(address(_8))
                    call address(_8).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (997 * Mask(112, 0, _797)) - (997 * _10)) + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1116 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1116] == bool(mem[_1116])
                else:
                    if _10 * mem[_789 + 50 len 14] / mem[_789 + 50 len 14] != _10:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not _10 * mem[_789 + 50 len 14]:
                        _864 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_864] = 11
                        mem[_864 + 32] = 0x43616c63206661696c6564000000000000000000000000000000000000000000
                        if _10 > Mask(112, 0, _797):
                            revert with 0, '', 0
                        require Mask(112, 0, _797) - _10
                        if (997 * Mask(112, 0, _797)) - (997 * _10) / Mask(112, 0, _797) - _10 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require (997 * Mask(112, 0, _797)) - (997 * _10)
                        if (0 / (997 * Mask(112, 0, _797)) - (997 * _10)) + 1 < 0 / (997 * Mask(112, 0, _797)) - (997 * _10):
                            revert with 0, 'SafeMath: addition overflow'
                        _1013 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1013] = 2
                        mem[_1013 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                        if (0 / (997 * Mask(112, 0, _797)) - (997 * _10)) + 1 > _762:
                            revert with 0, '', 0
                        mem[mem[64] + 4] = address(_11)
                        mem[mem[64] + 36] = _762 + -(0 / (997 * Mask(112, 0, _797)) - (997 * _10)) - 1
                        require ext_code.size(address(_8))
                        call address(_8).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_11), _762 + -(0 / (997 * Mask(112, 0, _797)) - (997 * _10)) - 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1066 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1066] == bool(mem[_1066])
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = (0 / (997 * Mask(112, 0, _797)) - (997 * _10)) + 1
                        require ext_code.size(address(_8))
                        call address(_8).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, _797)) - (997 * _10)) + 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1125 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1125] == bool(mem[_1125])
                    else:
                        if 1000 * _10 * mem[_789 + 50 len 14] / _10 * mem[_789 + 50 len 14] != 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _871 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_871] = 11
                        mem[_871 + 32] = 0x43616c63206661696c6564000000000000000000000000000000000000000000
                        if _10 > Mask(112, 0, _797):
                            revert with 0, '', 0
                        require Mask(112, 0, _797) - _10
                        if (997 * Mask(112, 0, _797)) - (997 * _10) / Mask(112, 0, _797) - _10 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require (997 * Mask(112, 0, _797)) - (997 * _10)
                        if (1000 * _10 * Mask(112, 0, _814) / (997 * Mask(112, 0, _797)) - (997 * _10)) + 1 < 1000 * _10 * Mask(112, 0, _814) / (997 * Mask(112, 0, _797)) - (997 * _10):
                            revert with 0, 'SafeMath: addition overflow'
                        _1022 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1022] = 2
                        mem[_1022 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                        if (1000 * _10 * Mask(112, 0, _814) / (997 * Mask(112, 0, _797)) - (997 * _10)) + 1 > _762:
                            revert with 0, '', 0
                        mem[mem[64] + 4] = address(_11)
                        mem[mem[64] + 36] = _762 + -(1000 * _10 * Mask(112, 0, _814) / (997 * Mask(112, 0, _797)) - (997 * _10)) - 1
                        require ext_code.size(address(_8))
                        call address(_8).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_11), _762 + -(1000 * _10 * Mask(112, 0, _814) / (997 * Mask(112, 0, _797)) - (997 * _10)) - 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1071 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1071] == bool(mem[_1071])
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = (1000 * _10 * Mask(112, 0, _814) / (997 * Mask(112, 0, _797)) - (997 * _10)) + 1
                        require ext_code.size(address(_8))
                        call address(_8).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (1000 * _10 * Mask(112, 0, _814) / (997 * Mask(112, 0, _797)) - (997 * _10)) + 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1134 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1134] == bool(mem[_1134])
            emit 0x8246cc71: address(_9), address(_7), address(_8), _10, _762
        else:
            mem[mem[64] + 4] = stor1
            mem[mem[64] + 36] = _762
            require ext_code.size(address(_8))
            call address(_8).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor1, _762
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _790 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_790] == bool(mem[_790])
            _810 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _762
            mem[mem[64] + 36] = _722
            mem[mem[64] + 68] = 160
            _812 = mem[ceil32(arg4.length) + 704]
            mem[mem[64] + 164] = mem[ceil32(arg4.length) + 704]
            idx = 0
            s = mem[64] + 196
            t = ceil32(arg4.length) + 736
            while idx < _812:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_810 + 100] = this.address
            mem[_810 + 132] = _723
            require ext_code.size(stor1)
            call stor1.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _810 + (32 * _812) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1466 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1484 = mem[_1466]
            require mem[_1466] <= test266151307()
            require _1466 + return_data.size > _1466 + mem[_1466] + 31
            _1486 = mem[_1466 + mem[_1466]]
            require mem[_1466 + mem[_1466]] <= test266151307()
            require (32 * mem[_1466 + mem[_1466]]) + 32 >= 0 and _1466 + ceil32(return_data.size) + (32 * mem[_1466 + mem[_1466]]) + 32 <= test266151307()
            mem[64] = _1466 + ceil32(return_data.size) + (32 * mem[_1466 + mem[_1466]]) + 32
            mem[_1466 + ceil32(return_data.size)] = _1486
            require return_data.size >= _1484 + (32 * _1486) + 32
            mem[_1466 + ceil32(return_data.size) + 32 len 32 * _1486] = mem[_1466 + _1484 + 32 len 32 * _1486]
            require mem[mem[_728 + 32]] - 1 < mem[mem[_728 + 32]]
            _1817 = mem[(32 * mem[mem[_728 + 32]] - 1) + mem[_728 + 32] + 32]
            require mem[mem[_728 + 32]] - 1 < _1486
            _1820 = mem[(32 * mem[mem[_728 + 32]] - 1) + _1466 + ceil32(return_data.size) + 32]
            if mem[_726 + 12 len 20] == mem[_726 + 44 len 20]:
                _1828 = mem[_726 + 96]
                if not mem[_726 + 96]:
                    _1840 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1840] = 26
                    mem[_1840 + 32] = 'SafeMath: division by zero'
                    _1852 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1852] = 2
                    mem[_1852 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                    if 1 > _1820:
                        revert with 0, '', 0
                    mem[mem[64] + 4] = mem[_726 + 140 len 20]
                    mem[mem[64] + 36] = _1820 - 1
                    require ext_code.size(address(_1817))
                    call address(_1817).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1820 - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1894 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1894] == bool(mem[_1894])
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(_1817))
                    call address(_1817).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1952 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1952] == bool(mem[_1952])
                    _1983 = mem[_726]
                    _1984 = mem[_726 + 32]
                    _1985 = mem[_726 + 96]
                    mem[mem[64]] = mem[_726 + 76 len 20]
                    mem[mem[64] + 64] = address(_1984)
                    mem[mem[64] + 96] = _1985
                    emit 0x8246cc71: mem[mem[64]], address(_1983), address(_1984), _1985, _762
                else:
                    if 1000 * mem[_726 + 96] / mem[_726 + 96] != 1000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1843 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1843] = 26
                    mem[_1843 + 32] = 'SafeMath: division by zero'
                    if (1000 * _1828 / 997) + 1 < 1000 * _1828 / 997:
                        revert with 0, 'SafeMath: addition overflow'
                    _1856 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1856] = 2
                    mem[_1856 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                    if (1000 * _1828 / 997) + 1 > _1820:
                        revert with 0, '', 0
                    mem[mem[64] + 4] = mem[_726 + 140 len 20]
                    mem[mem[64] + 36] = _1820 + -(1000 * _1828 / 997) - 1
                    require ext_code.size(address(_1817))
                    call address(_1817).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1820 + -(1000 * _1828 / 997) - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1900 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1900] == bool(mem[_1900])
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = (1000 * _1828 / 997) + 1
                    require ext_code.size(address(_1817))
                    call address(_1817).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (1000 * _1828 / 997) + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1962 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1962] == bool(mem[_1962])
                    _1997 = mem[_726]
                    _1998 = mem[_726 + 32]
                    _1999 = mem[_726 + 96]
                    mem[mem[64]] = mem[_726 + 76 len 20]
                    mem[mem[64] + 64] = address(_1998)
                    mem[mem[64] + 96] = _1999
                    emit 0x8246cc71: mem[mem[64]], address(_1997), address(_1998), _1999, _762
            else:
                _1827 = mem[_726 + 96]
                require ext_code.size(msg.sender)
                staticcall msg.sender.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1834 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1839 = mem[_1834]
                require mem[_1834] == mem[_1834 + 18 len 14]
                _1846 = mem[_1834 + 32]
                require mem[_1834 + 32] == mem[_1834 + 50 len 14]
                if not mem[_1834 + 50 len 14]:
                    _1876 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1876] = 11
                    mem[_1876 + 32] = 0x43616c63206661696c6564000000000000000000000000000000000000000000
                    if _1827 > Mask(112, 0, _1839):
                        revert with 0, '', 0
                    require Mask(112, 0, _1839) - _1827
                    if (997 * Mask(112, 0, _1839)) - (997 * _1827) / Mask(112, 0, _1839) - _1827 != 997:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require (997 * Mask(112, 0, _1839)) - (997 * _1827)
                    if (0 / (997 * Mask(112, 0, _1839)) - (997 * _1827)) + 1 < 0 / (997 * Mask(112, 0, _1839)) - (997 * _1827):
                        revert with 0, 'SafeMath: addition overflow'
                    _1995 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1995] = 2
                    mem[_1995 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                    if (0 / (997 * Mask(112, 0, _1839)) - (997 * _1827)) + 1 > _1820:
                        revert with 0, '', 0
                    mem[mem[64] + 4] = mem[_726 + 140 len 20]
                    mem[mem[64] + 36] = _1820 + -(0 / (997 * Mask(112, 0, _1839)) - (997 * _1827)) - 1
                    require ext_code.size(address(_1817))
                    call address(_1817).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1820 + -(0 / (997 * Mask(112, 0, _1839)) - (997 * _1827)) - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2044 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2044] == bool(mem[_2044])
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = (0 / (997 * Mask(112, 0, _1839)) - (997 * _1827)) + 1
                    require ext_code.size(address(_1817))
                    call address(_1817).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (997 * Mask(112, 0, _1839)) - (997 * _1827)) + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2082 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2082] == bool(mem[_2082])
                    _2099 = mem[_726]
                    _2100 = mem[_726 + 32]
                    _2101 = mem[_726 + 96]
                    mem[mem[64]] = mem[_726 + 76 len 20]
                    mem[mem[64] + 64] = address(_2100)
                    mem[mem[64] + 96] = _2101
                    emit 0x8246cc71: mem[mem[64]], address(_2099), address(_2100), _2101, _762
                else:
                    if _1827 * mem[_1834 + 50 len 14] / mem[_1834 + 50 len 14] != _1827:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not _1827 * mem[_1834 + 50 len 14]:
                        _1884 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1884] = 11
                        mem[_1884 + 32] = 0x43616c63206661696c6564000000000000000000000000000000000000000000
                        if _1827 > Mask(112, 0, _1839):
                            revert with 0, '', 0
                        require Mask(112, 0, _1839) - _1827
                        if (997 * Mask(112, 0, _1839)) - (997 * _1827) / Mask(112, 0, _1839) - _1827 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require (997 * Mask(112, 0, _1839)) - (997 * _1827)
                        if (0 / (997 * Mask(112, 0, _1839)) - (997 * _1827)) + 1 < 0 / (997 * Mask(112, 0, _1839)) - (997 * _1827):
                            revert with 0, 'SafeMath: addition overflow'
                        _2003 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2003] = 2
                        mem[_2003 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                        if (0 / (997 * Mask(112, 0, _1839)) - (997 * _1827)) + 1 > _1820:
                            revert with 0, '', 0
                        mem[mem[64] + 4] = mem[_726 + 140 len 20]
                        mem[mem[64] + 36] = _1820 + -(0 / (997 * Mask(112, 0, _1839)) - (997 * _1827)) - 1
                        require ext_code.size(address(_1817))
                        call address(_1817).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1820 + -(0 / (997 * Mask(112, 0, _1839)) - (997 * _1827)) - 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2048 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2048] == bool(mem[_2048])
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = (0 / (997 * Mask(112, 0, _1839)) - (997 * _1827)) + 1
                        require ext_code.size(address(_1817))
                        call address(_1817).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, _1839)) - (997 * _1827)) + 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2084 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2084] == bool(mem[_2084])
                        _2109 = mem[_726]
                        _2110 = mem[_726 + 32]
                        _2111 = mem[_726 + 96]
                        mem[mem[64]] = mem[_726 + 76 len 20]
                        mem[mem[64] + 64] = address(_2110)
                        mem[mem[64] + 96] = _2111
                        emit 0x8246cc71: mem[mem[64]], address(_2109), address(_2110), _2111, _762
                    else:
                        if 1000 * _1827 * mem[_1834 + 50 len 14] / _1827 * mem[_1834 + 50 len 14] != 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1891 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1891] = 11
                        mem[_1891 + 32] = 0x43616c63206661696c6564000000000000000000000000000000000000000000
                        if _1827 > Mask(112, 0, _1839):
                            revert with 0, '', 0
                        require Mask(112, 0, _1839) - _1827
                        if (997 * Mask(112, 0, _1839)) - (997 * _1827) / Mask(112, 0, _1839) - _1827 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require (997 * Mask(112, 0, _1839)) - (997 * _1827)
                        if (1000 * _1827 * Mask(112, 0, _1846) / (997 * Mask(112, 0, _1839)) - (997 * _1827)) + 1 < 1000 * _1827 * Mask(112, 0, _1846) / (997 * Mask(112, 0, _1839)) - (997 * _1827):
                            revert with 0, 'SafeMath: addition overflow'
                        _2008 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2008] = 2
                        mem[_2008 + 32] = 0x4e50000000000000000000000000000000000000000000000000000000000000
                        if (1000 * _1827 * Mask(112, 0, _1846) / (997 * Mask(112, 0, _1839)) - (997 * _1827)) + 1 > _1820:
                            revert with 0, '', 0
                        mem[mem[64] + 4] = mem[_726 + 140 len 20]
                        mem[mem[64] + 36] = _1820 + -(1000 * _1827 * Mask(112, 0, _1846) / (997 * Mask(112, 0, _1839)) - (997 * _1827)) - 1
                        require ext_code.size(address(_1817))
                        call address(_1817).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1820 + -(1000 * _1827 * Mask(112, 0, _1846) / (997 * Mask(112, 0, _1839)) - (997 * _1827)) - 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2052 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2052] == bool(mem[_2052])
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = (1000 * _1827 * Mask(112, 0, _1846) / (997 * Mask(112, 0, _1839)) - (997 * _1827)) + 1
                        require ext_code.size(address(_1817))
                        call address(_1817).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (1000 * _1827 * Mask(112, 0, _1846) / (997 * Mask(112, 0, _1839)) - (997 * _1827)) + 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2087 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2087] == bool(mem[_2087])
                        _2120 = mem[_726]
                        _2121 = mem[_726 + 32]
                        _2122 = mem[_726 + 96]
                        mem[mem[64]] = mem[_726 + 76 len 20]
                        mem[mem[64] + 64] = address(_2121)
                        mem[mem[64] + 96] = _2122
                        emit 0x8246cc71: mem[mem[64]], address(_2120), address(_2121), _2122, _762
}



}
