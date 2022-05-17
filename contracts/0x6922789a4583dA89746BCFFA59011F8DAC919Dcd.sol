contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
address stor3;
address stor4;
address stor5;
array of address stor6;
array of address stor7;

function _fallback() payable {
    revert
}

function sub_6dfe6d8f(?) {
    require calldata.size - 4 >= 288
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    require cd[164] == address(cd[164])
    require cd[196] == address(cd[196])
    require cd[228] <= test266151307()
    require cd[228] + 35 < calldata.size
    require ('cd', 228).length <= test266151307()
    require cd[228] + (32 * ('cd', 228).length) + 36 <= calldata.size
    require cd[260] <= test266151307()
    require cd[260] + 35 < calldata.size
    require ('cd', 260).length <= test266151307()
    require cd[260] + (32 * ('cd', 260).length) + 36 <= calldata.size
    stor0 = address(cd[4])
    stor1 = address(cd[36])
    stor2 = cd[68]
    stor3 = address(cd[100])
    stor4 = address(cd[164])
    stor5 = address(cd[196])
    stor6.length = ('cd', 228).length
    if not ('cd', 228).length:
        idx = 0
        while stor6.length > idx:
            uint256(stor6[idx]) = 0
            idx = idx + 1
            continue 
        stor7.length = ('cd', 260).length
        if not ('cd', 260).length:
            idx = 0
            while stor7.length > idx:
                uint256(stor7[idx]) = 0
                idx = idx + 1
                continue 
            if stor1 == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), stor2, 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                staticcall stor1.underlying() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if stor4 == ext_call.return_data[12 len 20]:
                    call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(this.address), stor2, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[ceil32(return_data.size) + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = cd[68]
                    mem[ceil32(return_data.size) + 132] = 64
                    mem[ceil32(return_data.size) + 164] = stor6.length
                    mem[0] = 6
                    idx = 0
                    s = 0
                    t = ceil32(return_data.size) + 196
                    while idx < stor6.length:
                        mem[t] = address(stor6[s])
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args cd[68], Array(len=stor6.length, data=mem[ceil32(return_data.size) + 196 len 32 * stor6.length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _588 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
                    _593 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] > test266151307():
                        revert with 'NH{q', 65
                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97
                    mem[(2 * ceil32(return_data.size)) + 96] = _593
                    require _588 + (32 * _593) + 32 <= return_data.size
                    idx = ceil32(return_data.size) + _588 + 128
                    s = (2 * ceil32(return_data.size)) + 128
                    while idx < ceil32(return_data.size) + _588 + (32 * _593) + 128:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _593:
                        revert with 'NH{q', 50
                    _756 = mem[(2 * ceil32(return_data.size)) + 128]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _756
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(this.address), _756, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _784 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_784] == bool(mem[_784])
                    mem[mem[64] + 4] = this.address
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _797 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _801 = mem[_797]
                    require mem[_797] == mem[_797]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _801
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _801
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _821 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_821] == bool(mem[_821])
        else:
            s = 0
            idx = cd[260] + 36
            while cd[260] + (32 * ('cd', 260).length) + 36 > idx:
                address(stor7[s]) = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 260).length) + 31) >> 5
            while stor7.length > idx:
                uint256(stor7[idx]) = 0
                idx = idx + 1
                continue 
            if stor1 == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), stor2, 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                staticcall stor1.underlying() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if stor4 == ext_call.return_data[12 len 20]:
                    call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(this.address), stor2, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[ceil32(return_data.size) + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = cd[68]
                    mem[ceil32(return_data.size) + 132] = 64
                    mem[ceil32(return_data.size) + 164] = stor6.length
                    mem[0] = 6
                    idx = 0
                    s = 0
                    t = ceil32(return_data.size) + 196
                    while idx < stor6.length:
                        mem[t] = address(stor6[s])
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args cd[68], Array(len=stor6.length, data=mem[ceil32(return_data.size) + 196 len 32 * stor6.length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _760 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
                    _763 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] > test266151307():
                        revert with 'NH{q', 65
                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97
                    mem[(2 * ceil32(return_data.size)) + 96] = _763
                    require _760 + (32 * _763) + 32 <= return_data.size
                    idx = ceil32(return_data.size) + _760 + 128
                    s = (2 * ceil32(return_data.size)) + 128
                    while idx < ceil32(return_data.size) + _760 + (32 * _763) + 128:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _763:
                        revert with 'NH{q', 50
                    _859 = mem[(2 * ceil32(return_data.size)) + 128]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _859
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(this.address), _859, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _872 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_872] == bool(mem[_872])
                    mem[mem[64] + 4] = this.address
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _880 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _882 = mem[_880]
                    require mem[_880] == mem[_880]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _882
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _882
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _892 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_892] == bool(mem[_892])
    else:
        s = 0
        idx = cd[228] + 36
        while cd[228] + (32 * ('cd', 228).length) + 36 > idx:
            address(stor6[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 228).length) + 31) >> 5
        while stor6.length > idx:
            uint256(stor6[idx]) = 0
            idx = idx + 1
            continue 
        stor7.length = ('cd', 260).length
        if not ('cd', 260).length:
            idx = 0
            while stor7.length > idx:
                uint256(stor7[idx]) = 0
                idx = idx + 1
                continue 
            if stor1 == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), stor2, 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                staticcall stor1.underlying() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if stor4 == ext_call.return_data[12 len 20]:
                    call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(this.address), stor2, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[ceil32(return_data.size) + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = cd[68]
                    mem[ceil32(return_data.size) + 132] = 64
                    mem[ceil32(return_data.size) + 164] = stor6.length
                    mem[0] = 6
                    idx = 0
                    s = 0
                    t = ceil32(return_data.size) + 196
                    while idx < stor6.length:
                        mem[t] = address(stor6[s])
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args cd[68], Array(len=stor6.length, data=mem[ceil32(return_data.size) + 196 len 32 * stor6.length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _761 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
                    _764 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] > test266151307():
                        revert with 'NH{q', 65
                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97
                    mem[(2 * ceil32(return_data.size)) + 96] = _764
                    require _761 + (32 * _764) + 32 <= return_data.size
                    idx = ceil32(return_data.size) + _761 + 128
                    s = (2 * ceil32(return_data.size)) + 128
                    while idx < ceil32(return_data.size) + _761 + (32 * _764) + 128:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _764:
                        revert with 'NH{q', 50
                    _860 = mem[(2 * ceil32(return_data.size)) + 128]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _860
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(this.address), _860, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _873 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_873] == bool(mem[_873])
                    mem[mem[64] + 4] = this.address
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _881 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _883 = mem[_881]
                    require mem[_881] == mem[_881]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _883
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _883
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _893 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_893] == bool(mem[_893])
        else:
            s = 0
            idx = cd[260] + 36
            while cd[260] + (32 * ('cd', 260).length) + 36 > idx:
                address(stor7[s]) = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 260).length) + 31) >> 5
            while stor7.length > idx:
                uint256(stor7[idx]) = 0
                idx = idx + 1
                continue 
            if stor1 == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), stor2, 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                staticcall stor1.underlying() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if stor4 == ext_call.return_data[12 len 20]:
                    call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(this.address), stor2, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[ceil32(return_data.size) + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = cd[68]
                    mem[ceil32(return_data.size) + 132] = 64
                    mem[ceil32(return_data.size) + 164] = stor6.length
                    mem[0] = 6
                    idx = 0
                    s = 0
                    t = ceil32(return_data.size) + 196
                    while idx < stor6.length:
                        mem[t] = address(stor6[s])
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args cd[68], Array(len=stor6.length, data=mem[ceil32(return_data.size) + 196 len 32 * stor6.length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _863 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
                    _864 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] > test266151307():
                        revert with 'NH{q', 65
                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97
                    mem[(2 * ceil32(return_data.size)) + 96] = _864
                    require _863 + (32 * _864) + 32 <= return_data.size
                    idx = ceil32(return_data.size) + _863 + 128
                    s = (2 * ceil32(return_data.size)) + 128
                    while idx < ceil32(return_data.size) + _863 + (32 * _864) + 128:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _864:
                        revert with 'NH{q', 50
                    _905 = mem[(2 * ceil32(return_data.size)) + 128]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _905
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(this.address), _905, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _908 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_908] == bool(mem[_908])
                    mem[mem[64] + 4] = this.address
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _912 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _913 = mem[_912]
                    require mem[_912] == mem[_912]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _913
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _913
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _916 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_916] == bool(mem[_916])
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if stor1 == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[132] = stor3
        require ext_code.size(stor1)
        call stor1.liquidateBorrow(address arg1, address arg2) with:
           value arg3 wei
             gas gas_remaining wei
            args stor0, stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[100] = this.address
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
        call stor3.redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if stor3 == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg2 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg3 + arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = this.address
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 100] = stor5
                mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor5, ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 132] = 1
                mem[(6 * ceil32(return_data.size)) + 164] = 160
                mem[(6 * ceil32(return_data.size)) + 260] = stor7.length
                mem[0] = 7
                idx = 0
                s = 0
                t = (6 * ceil32(return_data.size)) + 292
                while idx < stor7.length:
                    mem[t] = address(stor7[s])
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 196] = this.address
                mem[(6 * ceil32(return_data.size)) + 228] = block.timestamp + 60
                call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 1, Array(len=stor7.length, data=mem[(6 * ceil32(return_data.size)) + 292 len 32 * stor7.length]), address(this.address), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _252 = mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
                _258 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                    revert with 'NH{q', 65
                if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
                mem[(7 * ceil32(return_data.size)) + 96] = _258
                require _252 + (32 * _258) + 32 <= return_data.size
                idx = (6 * ceil32(return_data.size)) + _252 + 128
                s = (7 * ceil32(return_data.size)) + 128
                while idx < (6 * ceil32(return_data.size)) + _252 + (32 * _258) + 128:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg3 + arg4
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg3 + arg4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _375 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_375] == bool(mem[_375])
        else:
            staticcall stor3.underlying() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if arg2 == ext_call.return_data[12 len 20]:
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg3 + arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 100] = stor5
                mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor5, ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(7 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + 132] = 1
                mem[(7 * ceil32(return_data.size)) + 164] = 160
                mem[(7 * ceil32(return_data.size)) + 260] = stor7.length
                mem[0] = 7
                idx = 0
                s = 0
                t = (7 * ceil32(return_data.size)) + 292
                while idx < stor7.length:
                    mem[t] = address(stor7[s])
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 196] = this.address
                mem[(7 * ceil32(return_data.size)) + 228] = block.timestamp + 60
                call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 1, Array(len=stor7.length, data=mem[(7 * ceil32(return_data.size)) + 292 len 32 * stor7.length]), address(this.address), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _251 = mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
                require mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
                _257 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
                mem[(8 * ceil32(return_data.size)) + 96] = _257
                require _251 + (32 * _257) + 32 <= return_data.size
                idx = (7 * ceil32(return_data.size)) + _251 + 128
                s = (8 * ceil32(return_data.size)) + 128
                while idx < (7 * ceil32(return_data.size)) + _251 + (32 * _257) + 128:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg3 + arg4
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg3 + arg4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _374 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_374] == bool(mem[_374])
    else:
        staticcall stor1.underlying() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg2 == ext_call.return_data[12 len 20]:
            mem[ceil32(return_data.size) + 100] = stor1
            mem[ceil32(return_data.size) + 132] = stor2
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor1, stor2
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 100] = stor0
            mem[(2 * ceil32(return_data.size)) + 132] = stor2
            mem[(2 * ceil32(return_data.size)) + 164] = stor3
            call stor1.liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor0, stor2, stor3
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidate borrow fail'
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            call stor3.redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if stor3 == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3 + arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(7 * ceil32(return_data.size)) + 100] = this.address
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 100] = stor5
                    mem[(8 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                    mem[(10 * ceil32(return_data.size)) + 132] = 1
                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                    mem[(10 * ceil32(return_data.size)) + 260] = stor7.length
                    mem[0] = 7
                    idx = 0
                    s = 0
                    t = (10 * ceil32(return_data.size)) + 292
                    while idx < stor7.length:
                        mem[t] = address(stor7[s])
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                    mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 60
                    call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 1, Array(len=stor7.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor7.length]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (11 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _250 = mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                    _256 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                        revert with 'NH{q', 65
                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
                    mem[(11 * ceil32(return_data.size)) + 96] = _256
                    require _250 + (32 * _256) + 32 <= return_data.size
                    idx = (10 * ceil32(return_data.size)) + _250 + 128
                    s = (11 * ceil32(return_data.size)) + 128
                    while idx < (10 * ceil32(return_data.size)) + _250 + (32 * _256) + 128:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg3 + arg4
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3 + arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _372 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_372] == bool(mem[_372])
            else:
                staticcall stor3.underlying() with:
                        gas gas_remaining wei
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if arg2 == ext_call.return_data[12 len 20]:
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3 + arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(8 * ceil32(return_data.size)) + 100] = this.address
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(10 * ceil32(return_data.size)) + 100] = stor5
                    mem[(10 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, ext_call.return_data[0]
                    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[(11 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(11 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                    mem[(11 * ceil32(return_data.size)) + 132] = 1
                    mem[(11 * ceil32(return_data.size)) + 164] = 160
                    mem[(11 * ceil32(return_data.size)) + 260] = stor7.length
                    mem[0] = 7
                    idx = 0
                    s = 0
                    t = (11 * ceil32(return_data.size)) + 292
                    while idx < stor7.length:
                        mem[t] = address(stor7[s])
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[(11 * ceil32(return_data.size)) + 196] = this.address
                    mem[(11 * ceil32(return_data.size)) + 228] = block.timestamp + 60
                    call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 1, Array(len=stor7.length, data=mem[(11 * ceil32(return_data.size)) + 292 len 32 * stor7.length]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(11 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (12 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _249 = mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
                    require mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (11 * ceil32(return_data.size)) + return_data.size + 96
                    _255 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
                    if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                        revert with 'NH{q', 65
                    if (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
                    mem[(12 * ceil32(return_data.size)) + 96] = _255
                    require _249 + (32 * _255) + 32 <= return_data.size
                    idx = (11 * ceil32(return_data.size)) + _249 + 128
                    s = (12 * ceil32(return_data.size)) + 128
                    while idx < (11 * ceil32(return_data.size)) + _249 + (32 * _255) + 128:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg3 + arg4
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3 + arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _371 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_371] == bool(mem[_371])
        else:
            mem[ceil32(return_data.size) + 100] = stor5
            mem[ceil32(return_data.size) + 132] = arg3
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, arg3
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = arg3
            mem[(2 * ceil32(return_data.size)) + 132] = 1
            mem[(2 * ceil32(return_data.size)) + 164] = 160
            mem[(2 * ceil32(return_data.size)) + 260] = stor6.length
            mem[0] = 6
            idx = 0
            s = 0
            t = (2 * ceil32(return_data.size)) + 292
            while idx < stor6.length:
                mem[t] = address(stor6[s])
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 196] = this.address
            mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp + 60
            call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, 1, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * stor6.length]), address(this.address), block.timestamp + 60
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _140 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg3) >> 32
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg3) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _143 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg3) >> 32 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg3) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _143
            require _140 + (32 * _143) + 32 <= return_data.size
            idx = (2 * ceil32(return_data.size)) + _140 + 128
            s = (4 * ceil32(return_data.size)) + 128
            while idx < (2 * ceil32(return_data.size)) + _140 + (32 * _143) + 128:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            mem[mem[64] + 4] = stor1
            mem[mem[64] + 36] = stor2
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor1, stor2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _254 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_254] == bool(mem[_254])
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = stor2
            mem[mem[64] + 68] = stor3
            call stor1.liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor0, stor2, stor3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _274 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_274] == mem[_274]
            if mem[_274]:
                revert with 0, 'liquidate borrow fail'
            mem[mem[64] + 4] = this.address
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _292 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _297 = mem[_292]
            require mem[_292] == mem[_292]
            mem[mem[64] + 4] = mem[_292]
            call stor3.redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args _297
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _304 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_304] == mem[_304]
            if stor3 == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg3 + arg4
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3 + arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _323 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_323] == bool(mem[_323])
                else:
                    mem[mem[64] + 4] = this.address
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _315 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _317 = mem[_315]
                    require mem[_315] == mem[_315]
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = _317
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, _317
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _331 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_331] == bool(mem[_331])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    _340 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _317
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = stor7.length
                    mem[0] = 7
                    idx = 0
                    s = 0
                    t = mem[64] + 196
                    while idx < stor7.length:
                        mem[t] = stor[s + sha3(mem[0])]
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_340 + 100] = this.address
                    mem[_340 + 132] = block.timestamp + 60
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _340 + (32 * stor7.length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _363 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _364 = mem[_363]
                    require mem[_363] <= test266151307()
                    require _363 + mem[_363] + 31 < _363 + return_data.size
                    _366 = mem[_363 + mem[_363]]
                    if mem[_363 + mem[_363]] > test266151307():
                        revert with 'NH{q', 65
                    if _363 + ceil32(return_data.size) + floor32(mem[_363 + mem[_363]]) + 1 > test266151307() or floor32(mem[_363 + mem[_363]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _363 + ceil32(return_data.size) + floor32(mem[_363 + mem[_363]]) + 1
                    mem[_363 + ceil32(return_data.size)] = _366
                    require _364 + (32 * _366) + 32 <= return_data.size
                    idx = _363 + _364 + 32
                    s = _363 + ceil32(return_data.size) + 32
                    while idx < _363 + _364 + (32 * _366) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg3 + arg4
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3 + arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _409 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_409] == bool(mem[_409])
            else:
                staticcall stor3.underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _310 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _311 = mem[_310]
                require mem[_310] == mem[_310 + 12 len 20]
                if arg2 == mem[_310 + 12 len 20]:
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg3 + arg4
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3 + arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _328 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_328] == bool(mem[_328])
                else:
                    mem[mem[64] + 4] = this.address
                    staticcall address(_311).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _322 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _324 = mem[_322]
                    require mem[_322] == mem[_322]
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = _324
                    call address(_311).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, _324
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _337 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_337] == bool(mem[_337])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    _341 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _324
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = stor7.length
                    mem[0] = 7
                    idx = 0
                    s = 0
                    t = mem[64] + 196
                    while idx < stor7.length:
                        mem[t] = stor[s + sha3(mem[0])]
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_341 + 100] = this.address
                    mem[_341 + 132] = block.timestamp + 60
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _341 + (32 * stor7.length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _404 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _405 = mem[_404]
                    require mem[_404] <= test266151307()
                    require _404 + mem[_404] + 31 < _404 + return_data.size
                    _406 = mem[_404 + mem[_404]]
                    if mem[_404 + mem[_404]] > test266151307():
                        revert with 'NH{q', 65
                    if _404 + ceil32(return_data.size) + floor32(mem[_404 + mem[_404]]) + 1 > test266151307() or floor32(mem[_404 + mem[_404]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _404 + ceil32(return_data.size) + floor32(mem[_404 + mem[_404]]) + 1
                    mem[_404 + ceil32(return_data.size)] = _406
                    require _405 + (32 * _406) + 32 <= return_data.size
                    idx = _404 + _405 + 32
                    s = _404 + ceil32(return_data.size) + 32
                    while idx < _404 + _405 + (32 * _406) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg3 + arg4
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3 + arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_423] == bool(mem[_423])
    return 0x7968ba28153757de2da7bce4c2ba9ebaf94445061f3050de1b0de5c34bb7d5d8
}



}
