contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address stor0; offset 8

function _fallback() payable {
    revert
}

function transferETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'no'
    call address(stor0.field_8) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0c86dbef(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'no'
    require ext_code.size(address(arg2))
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args address(stor0.field_0), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'no'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_01b423fc(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'no'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9] == bool(mem[_9])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_9b949e74(?) {
    require calldata.size - 4 >= 224
    require cd[4] == uint8(cd[4])
    require cd[36] == uint8(cd[36])
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] == cd[132]
    require cd[164] == cd[164]
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'no'
    if 0 >= ('cd', 196).length:
        revert with 'NH{q', 50
    require ('cd', 196)[0] == address(('cd', 196)[0])
    if 1 >= ('cd', 196).length:
        revert with 'NH{q', 50
    require ('cd', 196)[1] == address(('cd', 196)[1])
    require ext_code.size(address(('cd', 196)[0]))
    staticcall address(('cd', 196)[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 10000 < uint8(cd[4]):
        revert with 'NH{q', 17
    if not cd[68]:
        if cd[100] and -uint8(cd[4]) + 10000 > -1 / cd[100]:
            revert with 'NH{q', 17
        if (10000 * cd[100]) - (uint8(cd[4]) * cd[100]) and ext_call.return_data[18 len 14] > -1 / (10000 * cd[100]) - (uint8(cd[4]) * cd[100]):
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if 10000 * ext_call.return_data[50 len 14] > (-10000 * cd[100]) + (uint8(cd[4]) * cd[100]) - 1:
            revert with 'NH{q', 17
        if not (10000 * ext_call.return_data[50 len 14]) + (10000 * cd[100]) - (uint8(cd[4]) * cd[100]):
            revert with 'NH{q', 18
        if (10000 * cd[100] * ext_call.return_data[18 len 14]) - (uint8(cd[4]) * cd[100] * ext_call.return_data[18 len 14]) / (10000 * ext_call.return_data[50 len 14]) + (10000 * cd[100]) - (uint8(cd[4]) * cd[100]) < 1:
            revert with 'NH{q', 17
        require ext_code.size(address(('cd', 196)[1]))
        staticcall address(('cd', 196)[1]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 10000 < uint8(cd[36]):
            revert with 'NH{q', 17
        if not cd[132]:
            if ext_call.return_data[18 len 14] and cd[164] > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] * cd[164] and 10000 > -1 / ext_call.return_data[18 len 14] * cd[164]:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] < cd[164]:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] - cd[164] and -uint8(cd[36]) + 10000 > -1 / ext_call.return_data[50 len 14] - cd[164]:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[50 len 14]) - (uint8(cd[36]) * ext_call.return_data[50 len 14]) - (10000 * cd[164]) + (uint8(cd[36]) * cd[164]):
                revert with 'NH{q', 18
            if 10000 * ext_call.return_data[18 len 14] * cd[164] / (10000 * ext_call.return_data[50 len 14]) - (uint8(cd[36]) * ext_call.return_data[50 len 14]) - (10000 * cd[164]) + (uint8(cd[36]) * cd[164]) > -2:
                revert with 'NH{q', 17
            if ((10000 * cd[100] * Mask(112, 0, ext_call.return_data[0])) - (uint8(cd[4]) * cd[100] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * cd[100]) - (uint8(cd[4]) * cd[100])) - 1 <= (10000 * ext_call.return_data[18 len 14] * cd[164] / (10000 * ext_call.return_data[50 len 14]) - (uint8(cd[36]) * ext_call.return_data[50 len 14]) - (10000 * cd[164]) + (uint8(cd[36]) * cd[164])) + 1:
                revert with 0, 'fpsc'
            uint8(stor0.field_0) = 1
            if 2 >= ('cd', 196).length:
                revert with 'NH{q', 50
            require ('cd', 196)[2] == address(('cd', 196)[2])
            if 0 >= ('cd', 196).length:
                revert with 'NH{q', 50
            require ('cd', 196)[0] == address(('cd', 196)[0])
            require ext_code.size(address(('cd', 196)[2]))
            if not cd[68]:
                call address(('cd', 196)[2]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 196)[0]), cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'nt'
                if 0 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[0] == address(('cd', 196)[0])
                mem[(4 * ceil32(return_data.size)) + 228] = 128
                mem[(4 * ceil32(return_data.size)) + 260] = 0
                mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                require ext_code.size(address(('cd', 196)[0]))
                if not cd[100]:
                    call address(('cd', 196)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args ((10000 * cd[100] * Mask(112, 0, ext_call.return_data[0])) - (uint8(cd[4]) * cd[100] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * cd[100]) - (uint8(cd[4]) * cd[100])) - 1, ((10000 * cd[100] * Mask(112, 0, ext_call.return_data[0])) - (uint8(cd[4]) * cd[100] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * cd[100]) - (uint8(cd[4]) * cd[100])) - 1, address(this.address), 128, 0
                else:
                    call address(('cd', 196)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args ((10000 * cd[100] * Mask(112, 0, ext_call.return_data[0])) - (uint8(cd[4]) * cd[100] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * cd[100]) - (uint8(cd[4]) * cd[100])) - 1, 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 3 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[3] == address(('cd', 196)[3])
                if 1 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[1] == address(('cd', 196)[1])
                require ext_code.size(address(('cd', 196)[3]))
                call address(('cd', 196)[3]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 196)[1]), (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[164] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (uint8(cd[36]) * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[164]) + (uint8(cd[36]) * cd[164])) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'nt', mem[(6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
                if 1 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[1] == address(('cd', 196)[1])
                require ext_code.size(address(('cd', 196)[1]))
                if not cd[132]:
                    if not cd[164]:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 0
                    else:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, cd[100], address(this.address), 128, 0
                else:
                    if not cd[164]:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[100], 0, address(this.address), 128, 0
                    else:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[100], cd[100], address(this.address), 128, 0
            else:
                call address(('cd', 196)[2]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 196)[0]), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'nt'
                if 0 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[0] == address(('cd', 196)[0])
                mem[(4 * ceil32(return_data.size)) + 228] = 128
                mem[(4 * ceil32(return_data.size)) + 260] = 0
                mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                require ext_code.size(address(('cd', 196)[0]))
                if not cd[100]:
                    call address(('cd', 196)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, ((10000 * cd[100] * Mask(112, 0, ext_call.return_data[0])) - (uint8(cd[4]) * cd[100] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * cd[100]) - (uint8(cd[4]) * cd[100])) - 1, address(this.address), 128, 0
                else:
                    call address(('cd', 196)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 3 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[3] == address(('cd', 196)[3])
                if 1 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[1] == address(('cd', 196)[1])
                require ext_code.size(address(('cd', 196)[3]))
                call address(('cd', 196)[3]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 196)[1]), (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[164] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (uint8(cd[36]) * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[164]) + (uint8(cd[36]) * cd[164])) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'nt', mem[(6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
                if 1 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[1] == address(('cd', 196)[1])
                require ext_code.size(address(('cd', 196)[1]))
                if not cd[132]:
                    if not cd[164]:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 0
                    else:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, cd[68], address(this.address), 128, 0
                else:
                    if not cd[164]:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[68], 0, address(this.address), 128, 0
                    else:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[68], cd[68], address(this.address), 128, 0
        else:
            if ext_call.return_data[50 len 14] and cd[132] > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] * cd[132] and 10000 > -1 / ext_call.return_data[50 len 14] * cd[132]:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] < cd[132]:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] - cd[132] and -uint8(cd[36]) + 10000 > -1 / ext_call.return_data[18 len 14] - cd[132]:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[18 len 14]) - (uint8(cd[36]) * ext_call.return_data[18 len 14]) - (10000 * cd[132]) + (uint8(cd[36]) * cd[132]):
                revert with 'NH{q', 18
            if 10000 * ext_call.return_data[50 len 14] * cd[132] / (10000 * ext_call.return_data[18 len 14]) - (uint8(cd[36]) * ext_call.return_data[18 len 14]) - (10000 * cd[132]) + (uint8(cd[36]) * cd[132]) > -2:
                revert with 'NH{q', 17
            if ((10000 * cd[100] * Mask(112, 0, ext_call.return_data[0])) - (uint8(cd[4]) * cd[100] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * cd[100]) - (uint8(cd[4]) * cd[100])) - 1 <= (10000 * ext_call.return_data[50 len 14] * cd[132] / (10000 * ext_call.return_data[18 len 14]) - (uint8(cd[36]) * ext_call.return_data[18 len 14]) - (10000 * cd[132]) + (uint8(cd[36]) * cd[132])) + 1:
                revert with 0, 'fpsc'
            uint8(stor0.field_0) = 1
            if 2 >= ('cd', 196).length:
                revert with 'NH{q', 50
            require ('cd', 196)[2] == address(('cd', 196)[2])
            if 0 >= ('cd', 196).length:
                revert with 'NH{q', 50
            require ('cd', 196)[0] == address(('cd', 196)[0])
            require ext_code.size(address(('cd', 196)[2]))
            if not cd[68]:
                call address(('cd', 196)[2]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 196)[0]), cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'nt'
                if 0 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[0] == address(('cd', 196)[0])
                mem[(4 * ceil32(return_data.size)) + 228] = 128
                mem[(4 * ceil32(return_data.size)) + 260] = 0
                mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                require ext_code.size(address(('cd', 196)[0]))
                if not cd[100]:
                    call address(('cd', 196)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args ((10000 * cd[100] * Mask(112, 0, ext_call.return_data[0])) - (uint8(cd[4]) * cd[100] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * cd[100]) - (uint8(cd[4]) * cd[100])) - 1, ((10000 * cd[100] * Mask(112, 0, ext_call.return_data[0])) - (uint8(cd[4]) * cd[100] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * cd[100]) - (uint8(cd[4]) * cd[100])) - 1, address(this.address), 128, 0
                else:
                    call address(('cd', 196)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args ((10000 * cd[100] * Mask(112, 0, ext_call.return_data[0])) - (uint8(cd[4]) * cd[100] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * cd[100]) - (uint8(cd[4]) * cd[100])) - 1, 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 3 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[3] == address(('cd', 196)[3])
                if 1 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[1] == address(('cd', 196)[1])
                require ext_code.size(address(('cd', 196)[3]))
                call address(('cd', 196)[3]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 196)[1]), (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[132] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (uint8(cd[36]) * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[132]) + (uint8(cd[36]) * cd[132])) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'nt', mem[(6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
                if 1 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[1] == address(('cd', 196)[1])
                require ext_code.size(address(('cd', 196)[1]))
                if not cd[132]:
                    if not cd[164]:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 0
                    else:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, cd[100], address(this.address), 128, 0
                else:
                    if not cd[164]:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[100], 0, address(this.address), 128, 0
                    else:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[100], cd[100], address(this.address), 128, 0
            else:
                call address(('cd', 196)[2]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 196)[0]), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'nt'
                if 0 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[0] == address(('cd', 196)[0])
                mem[(4 * ceil32(return_data.size)) + 228] = 128
                mem[(4 * ceil32(return_data.size)) + 260] = 0
                mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                require ext_code.size(address(('cd', 196)[0]))
                if not cd[100]:
                    call address(('cd', 196)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, ((10000 * cd[100] * Mask(112, 0, ext_call.return_data[0])) - (uint8(cd[4]) * cd[100] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * cd[100]) - (uint8(cd[4]) * cd[100])) - 1, address(this.address), 128, 0
                else:
                    call address(('cd', 196)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 3 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[3] == address(('cd', 196)[3])
                if 1 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[1] == address(('cd', 196)[1])
                require ext_code.size(address(('cd', 196)[3]))
                call address(('cd', 196)[3]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 196)[1]), (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[132] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (uint8(cd[36]) * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[132]) + (uint8(cd[36]) * cd[132])) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'nt', mem[(6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
                if 1 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[1] == address(('cd', 196)[1])
                require ext_code.size(address(('cd', 196)[1]))
                if not cd[132]:
                    if not cd[164]:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 0
                    else:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, cd[68], address(this.address), 128, 0
                else:
                    if not cd[164]:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[68], 0, address(this.address), 128, 0
                    else:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[68], cd[68], address(this.address), 128, 0
    else:
        if cd[68] and -uint8(cd[4]) + 10000 > -1 / cd[68]:
            revert with 'NH{q', 17
        if (10000 * cd[68]) - (uint8(cd[4]) * cd[68]) and ext_call.return_data[50 len 14] > -1 / (10000 * cd[68]) - (uint8(cd[4]) * cd[68]):
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if 10000 * ext_call.return_data[18 len 14] > (-10000 * cd[68]) + (uint8(cd[4]) * cd[68]) - 1:
            revert with 'NH{q', 17
        if not (10000 * ext_call.return_data[18 len 14]) + (10000 * cd[68]) - (uint8(cd[4]) * cd[68]):
            revert with 'NH{q', 18
        if (10000 * cd[68] * ext_call.return_data[50 len 14]) - (uint8(cd[4]) * cd[68] * ext_call.return_data[50 len 14]) / (10000 * ext_call.return_data[18 len 14]) + (10000 * cd[68]) - (uint8(cd[4]) * cd[68]) < 1:
            revert with 'NH{q', 17
        require ext_code.size(address(('cd', 196)[1]))
        staticcall address(('cd', 196)[1]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 10000 < uint8(cd[36]):
            revert with 'NH{q', 17
        if not cd[132]:
            if ext_call.return_data[18 len 14] and cd[164] > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] * cd[164] and 10000 > -1 / ext_call.return_data[18 len 14] * cd[164]:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] < cd[164]:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] - cd[164] and -uint8(cd[36]) + 10000 > -1 / ext_call.return_data[50 len 14] - cd[164]:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[50 len 14]) - (uint8(cd[36]) * ext_call.return_data[50 len 14]) - (10000 * cd[164]) + (uint8(cd[36]) * cd[164]):
                revert with 'NH{q', 18
            if 10000 * ext_call.return_data[18 len 14] * cd[164] / (10000 * ext_call.return_data[50 len 14]) - (uint8(cd[36]) * ext_call.return_data[50 len 14]) - (10000 * cd[164]) + (uint8(cd[36]) * cd[164]) > -2:
                revert with 'NH{q', 17
            if ((10000 * cd[68] * Mask(112, 0, ext_call.return_data[32])) - (uint8(cd[4]) * cd[68] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * cd[68]) - (uint8(cd[4]) * cd[68])) - 1 <= (10000 * ext_call.return_data[18 len 14] * cd[164] / (10000 * ext_call.return_data[50 len 14]) - (uint8(cd[36]) * ext_call.return_data[50 len 14]) - (10000 * cd[164]) + (uint8(cd[36]) * cd[164])) + 1:
                revert with 0, 'fpsc'
            uint8(stor0.field_0) = 1
            if 2 >= ('cd', 196).length:
                revert with 'NH{q', 50
            require ('cd', 196)[2] == address(('cd', 196)[2])
            if 0 >= ('cd', 196).length:
                revert with 'NH{q', 50
            require ('cd', 196)[0] == address(('cd', 196)[0])
            require ext_code.size(address(('cd', 196)[2]))
            if not cd[68]:
                call address(('cd', 196)[2]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 196)[0]), cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'nt'
                if 0 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[0] == address(('cd', 196)[0])
                mem[(4 * ceil32(return_data.size)) + 228] = 128
                mem[(4 * ceil32(return_data.size)) + 260] = 0
                mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                require ext_code.size(address(('cd', 196)[0]))
                if not cd[100]:
                    call address(('cd', 196)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args ((10000 * cd[68] * Mask(112, 0, ext_call.return_data[32])) - (uint8(cd[4]) * cd[68] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * cd[68]) - (uint8(cd[4]) * cd[68])) - 1, ((10000 * cd[68] * Mask(112, 0, ext_call.return_data[32])) - (uint8(cd[4]) * cd[68] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * cd[68]) - (uint8(cd[4]) * cd[68])) - 1, address(this.address), 128, 0
                else:
                    call address(('cd', 196)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args ((10000 * cd[68] * Mask(112, 0, ext_call.return_data[32])) - (uint8(cd[4]) * cd[68] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * cd[68]) - (uint8(cd[4]) * cd[68])) - 1, 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 3 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[3] == address(('cd', 196)[3])
                if 1 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[1] == address(('cd', 196)[1])
                require ext_code.size(address(('cd', 196)[3]))
                call address(('cd', 196)[3]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 196)[1]), (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[164] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (uint8(cd[36]) * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[164]) + (uint8(cd[36]) * cd[164])) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'nt', mem[(6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
                if 1 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[1] == address(('cd', 196)[1])
                require ext_code.size(address(('cd', 196)[1]))
                if not cd[132]:
                    if not cd[164]:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 0
                    else:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, cd[100], address(this.address), 128, 0
                else:
                    if not cd[164]:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[100], 0, address(this.address), 128, 0
                    else:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[100], cd[100], address(this.address), 128, 0
            else:
                call address(('cd', 196)[2]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 196)[0]), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'nt'
                if 0 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[0] == address(('cd', 196)[0])
                mem[(4 * ceil32(return_data.size)) + 228] = 128
                mem[(4 * ceil32(return_data.size)) + 260] = 0
                mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                require ext_code.size(address(('cd', 196)[0]))
                if not cd[100]:
                    call address(('cd', 196)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, ((10000 * cd[68] * Mask(112, 0, ext_call.return_data[32])) - (uint8(cd[4]) * cd[68] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * cd[68]) - (uint8(cd[4]) * cd[68])) - 1, address(this.address), 128, 0
                else:
                    call address(('cd', 196)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 3 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[3] == address(('cd', 196)[3])
                if 1 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[1] == address(('cd', 196)[1])
                require ext_code.size(address(('cd', 196)[3]))
                call address(('cd', 196)[3]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 196)[1]), (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[164] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (uint8(cd[36]) * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[164]) + (uint8(cd[36]) * cd[164])) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'nt', mem[(6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
                if 1 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[1] == address(('cd', 196)[1])
                require ext_code.size(address(('cd', 196)[1]))
                if not cd[132]:
                    if not cd[164]:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 0
                    else:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, cd[68], address(this.address), 128, 0
                else:
                    if not cd[164]:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[68], 0, address(this.address), 128, 0
                    else:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[68], cd[68], address(this.address), 128, 0
        else:
            if ext_call.return_data[50 len 14] and cd[132] > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] * cd[132] and 10000 > -1 / ext_call.return_data[50 len 14] * cd[132]:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] < cd[132]:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] - cd[132] and -uint8(cd[36]) + 10000 > -1 / ext_call.return_data[18 len 14] - cd[132]:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[18 len 14]) - (uint8(cd[36]) * ext_call.return_data[18 len 14]) - (10000 * cd[132]) + (uint8(cd[36]) * cd[132]):
                revert with 'NH{q', 18
            if 10000 * ext_call.return_data[50 len 14] * cd[132] / (10000 * ext_call.return_data[18 len 14]) - (uint8(cd[36]) * ext_call.return_data[18 len 14]) - (10000 * cd[132]) + (uint8(cd[36]) * cd[132]) > -2:
                revert with 'NH{q', 17
            if ((10000 * cd[68] * Mask(112, 0, ext_call.return_data[32])) - (uint8(cd[4]) * cd[68] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * cd[68]) - (uint8(cd[4]) * cd[68])) - 1 <= (10000 * ext_call.return_data[50 len 14] * cd[132] / (10000 * ext_call.return_data[18 len 14]) - (uint8(cd[36]) * ext_call.return_data[18 len 14]) - (10000 * cd[132]) + (uint8(cd[36]) * cd[132])) + 1:
                revert with 0, 'fpsc'
            uint8(stor0.field_0) = 1
            if 2 >= ('cd', 196).length:
                revert with 'NH{q', 50
            require ('cd', 196)[2] == address(('cd', 196)[2])
            if 0 >= ('cd', 196).length:
                revert with 'NH{q', 50
            require ('cd', 196)[0] == address(('cd', 196)[0])
            require ext_code.size(address(('cd', 196)[2]))
            if not cd[68]:
                call address(('cd', 196)[2]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 196)[0]), cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'nt'
                if 0 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[0] == address(('cd', 196)[0])
                mem[(4 * ceil32(return_data.size)) + 228] = 128
                mem[(4 * ceil32(return_data.size)) + 260] = 0
                mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                require ext_code.size(address(('cd', 196)[0]))
                if not cd[100]:
                    call address(('cd', 196)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args ((10000 * cd[68] * Mask(112, 0, ext_call.return_data[32])) - (uint8(cd[4]) * cd[68] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * cd[68]) - (uint8(cd[4]) * cd[68])) - 1, ((10000 * cd[68] * Mask(112, 0, ext_call.return_data[32])) - (uint8(cd[4]) * cd[68] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * cd[68]) - (uint8(cd[4]) * cd[68])) - 1, address(this.address), 128, 0
                else:
                    call address(('cd', 196)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args ((10000 * cd[68] * Mask(112, 0, ext_call.return_data[32])) - (uint8(cd[4]) * cd[68] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * cd[68]) - (uint8(cd[4]) * cd[68])) - 1, 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 3 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[3] == address(('cd', 196)[3])
                if 1 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[1] == address(('cd', 196)[1])
                require ext_code.size(address(('cd', 196)[3]))
                call address(('cd', 196)[3]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 196)[1]), (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[132] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (uint8(cd[36]) * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[132]) + (uint8(cd[36]) * cd[132])) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'nt', mem[(6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
                if 1 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[1] == address(('cd', 196)[1])
                require ext_code.size(address(('cd', 196)[1]))
                if not cd[132]:
                    if not cd[164]:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 0
                    else:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, cd[100], address(this.address), 128, 0
                else:
                    if not cd[164]:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[100], 0, address(this.address), 128, 0
                    else:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[100], cd[100], address(this.address), 128, 0
            else:
                call address(('cd', 196)[2]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 196)[0]), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'nt'
                if 0 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[0] == address(('cd', 196)[0])
                mem[(4 * ceil32(return_data.size)) + 228] = 128
                mem[(4 * ceil32(return_data.size)) + 260] = 0
                mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                require ext_code.size(address(('cd', 196)[0]))
                if not cd[100]:
                    call address(('cd', 196)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, ((10000 * cd[68] * Mask(112, 0, ext_call.return_data[32])) - (uint8(cd[4]) * cd[68] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * cd[68]) - (uint8(cd[4]) * cd[68])) - 1, address(this.address), 128, 0
                else:
                    call address(('cd', 196)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 3 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[3] == address(('cd', 196)[3])
                if 1 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[1] == address(('cd', 196)[1])
                require ext_code.size(address(('cd', 196)[3]))
                call address(('cd', 196)[3]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 196)[1]), (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[132] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (uint8(cd[36]) * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[132]) + (uint8(cd[36]) * cd[132])) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'nt', mem[(6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
                if 1 >= ('cd', 196).length:
                    revert with 'NH{q', 50
                require ('cd', 196)[1] == address(('cd', 196)[1])
                require ext_code.size(address(('cd', 196)[1]))
                if not cd[132]:
                    if not cd[164]:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 0
                    else:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, cd[68], address(this.address), 128, 0
                else:
                    if not cd[164]:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[68], 0, address(this.address), 128, 0
                    else:
                        call address(('cd', 196)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[68], cd[68], address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor0.field_0) = 0
}



}
