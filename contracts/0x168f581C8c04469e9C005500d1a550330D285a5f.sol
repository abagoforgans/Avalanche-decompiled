contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getSelector(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return Mask(32, 224, sha3(arg1[all]))
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require stor0 == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b19c463d(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 <= test266151307() and (32 * ('cd', 68).length) + 128 >= 96
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 <= test266151307() and (32 * ('cd', 100).length) + 160 >= 128
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 68).length) + 160
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'Not Allowed'
    require 0 < ('cd', 100).length
    _790 = mem[(32 * ('cd', 68).length) + 160]
    require 1 < ('cd', 100).length
    _792 = mem[(32 * ('cd', 68).length) + 192]
    require ext_code.size(mem[(32 * ('cd', 68).length) + 172 len 20])
    staticcall mem[(32 * ('cd', 68).length) + 172 len 20].token0() with:
            gas gas_remaining wei
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(_790))
    staticcall address(_790).getReserves() with:
            gas gas_remaining wei
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(_792))
    staticcall address(_792).token0() with:
            gas gas_remaining wei
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(_792))
    staticcall address(_792).getReserves() with:
            gas gas_remaining wei
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 160 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if cd[4] <= 0:
        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[12 len 20] != address(cd[36]):
        require Mask(112, 0, ext_call.return_data[32]) > 0
        require Mask(112, 0, ext_call.return_data[0]) > 0
        if 997 * cd[4] / 997 != cd[4]:
            revert with 0, 'SafeMath: Mul Overflow'
        if ext_call.return_data[12 len 20] != address(cd[36]):
            if not Mask(112, 0, ext_call.return_data[0]):
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) < 997 * cd[4]:
                    revert with 0, 'SafeMath: Add Overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])
                if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) <= 0:
                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                require ext_call.return_data[18 len 14] > 0
                require ext_call.return_data[50 len 14] > 0
                if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) / 997 != 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if not ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) < 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Add Overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]))
                    if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'I'
                    require 0 < ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164] = mem[(32 * ('cd', 68).length) + 172 len 20]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 196] = cd[4]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164], cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 100).length
                    require ext_code.size(address(_790))
                    if address(cd[36]) != mem[140 len 20]:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]), 0, address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), address(this.address), 128, 0
                    else:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]), address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), 0, address(this.address), 128, 0
                else:
                    require ext_call.return_data[50 len 14]
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) < 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Add Overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]))
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'I'
                    require 0 < ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164] = mem[(32 * ('cd', 68).length) + 172 len 20]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 196] = cd[4]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164], cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 100).length
                    require ext_code.size(address(_790))
                    if address(cd[36]) != mem[140 len 20]:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]), 0, address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), address(this.address), 128, 0
                    else:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]), address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), 0, address(this.address), 128, 0
            else:
                require Mask(112, 0, ext_call.return_data[0])
                if 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * cd[4]:
                    revert with 0, 'SafeMath: Mul Overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) < 997 * cd[4]:
                    revert with 0, 'SafeMath: Add Overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])
                if 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) <= 0:
                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                require ext_call.return_data[18 len 14] > 0
                require ext_call.return_data[50 len 14] > 0
                if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) / 997 != 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if not ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) < 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Add Overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]))
                    if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'I'
                    require 0 < ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164] = mem[(32 * ('cd', 68).length) + 172 len 20]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 196] = cd[4]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164], cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 100).length
                    require ext_code.size(address(_790))
                    if address(cd[36]) != mem[140 len 20]:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]), 0, address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), address(this.address), 128, 0
                    else:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]), address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), 0, address(this.address), 128, 0
                else:
                    require ext_call.return_data[50 len 14]
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) < 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Add Overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]))
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'I'
                    require 0 < ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164] = mem[(32 * ('cd', 68).length) + 172 len 20]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 196] = cd[4]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164], cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 100).length
                    require ext_code.size(address(_790))
                    if address(cd[36]) != mem[140 len 20]:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]), 0, address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), address(this.address), 128, 0
                    else:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]), address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), 0, address(this.address), 128, 0
        else:
            if not Mask(112, 0, ext_call.return_data[0]):
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) < 997 * cd[4]:
                    revert with 0, 'SafeMath: Add Overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])
                if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) <= 0:
                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                require ext_call.return_data[50 len 14] > 0
                require ext_call.return_data[18 len 14] > 0
                if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) / 997 != 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if not ext_call.return_data[18 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) < 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Add Overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]))
                    if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'I'
                    require 0 < ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164] = mem[(32 * ('cd', 68).length) + 172 len 20]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 196] = cd[4]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164], cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 100).length
                    require ext_code.size(address(_790))
                    if address(cd[36]) != mem[140 len 20]:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]), 0, address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), address(this.address), 128, 0
                    else:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]), address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), 0, address(this.address), 128, 0
                else:
                    require ext_call.return_data[18 len 14]
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) < 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Add Overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]))
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'I'
                    require 0 < ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164] = mem[(32 * ('cd', 68).length) + 172 len 20]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 196] = cd[4]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164], cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 100).length
                    require ext_code.size(address(_790))
                    if address(cd[36]) != mem[140 len 20]:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]), 0, address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), address(this.address), 128, 0
                    else:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]), address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), 0, address(this.address), 128, 0
            else:
                require Mask(112, 0, ext_call.return_data[0])
                if 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * cd[4]:
                    revert with 0, 'SafeMath: Mul Overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) < 997 * cd[4]:
                    revert with 0, 'SafeMath: Add Overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])
                if 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) <= 0:
                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                require ext_call.return_data[50 len 14] > 0
                require ext_call.return_data[18 len 14] > 0
                if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) / 997 != 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if not ext_call.return_data[18 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) < 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Add Overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]))
                    if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'I'
                    require 0 < ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164] = mem[(32 * ('cd', 68).length) + 172 len 20]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 196] = cd[4]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164], cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 100).length
                    require ext_code.size(address(_790))
                    if address(cd[36]) != mem[140 len 20]:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]), 0, address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), address(this.address), 128, 0
                    else:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]), address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), 0, address(this.address), 128, 0
                else:
                    require ext_call.return_data[18 len 14]
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) < 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Add Overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]))
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'I'
                    require 0 < ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164] = mem[(32 * ('cd', 68).length) + 172 len 20]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 196] = cd[4]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164], cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 100).length
                    require ext_code.size(address(_790))
                    if address(cd[36]) != mem[140 len 20]:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]), 0, address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), address(this.address), 128, 0
                    else:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]), address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), 0, address(this.address), 128, 0
    else:
        require Mask(112, 0, ext_call.return_data[0]) > 0
        require Mask(112, 0, ext_call.return_data[32]) > 0
        if 997 * cd[4] / 997 != cd[4]:
            revert with 0, 'SafeMath: Mul Overflow'
        if ext_call.return_data[12 len 20] != address(cd[36]):
            if not Mask(112, 0, ext_call.return_data[32]):
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) < 997 * cd[4]:
                    revert with 0, 'SafeMath: Add Overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])
                if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) <= 0:
                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                require ext_call.return_data[18 len 14] > 0
                require ext_call.return_data[50 len 14] > 0
                if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) / 997 != 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if not ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) < 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Add Overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]))
                    if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'I'
                    require 0 < ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164] = mem[(32 * ('cd', 68).length) + 172 len 20]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 196] = cd[4]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164], cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 100).length
                    require ext_code.size(address(_790))
                    if address(cd[36]) != mem[140 len 20]:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]), 0, address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), address(this.address), 128, 0
                    else:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]), address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), 0, address(this.address), 128, 0
                else:
                    require ext_call.return_data[50 len 14]
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) < 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Add Overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]))
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'I'
                    require 0 < ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164] = mem[(32 * ('cd', 68).length) + 172 len 20]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 196] = cd[4]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164], cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 100).length
                    require ext_code.size(address(_790))
                    if address(cd[36]) != mem[140 len 20]:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]), 0, address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), address(this.address), 128, 0
                    else:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]), address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), 0, address(this.address), 128, 0
            else:
                require Mask(112, 0, ext_call.return_data[32])
                if 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * cd[4]:
                    revert with 0, 'SafeMath: Mul Overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) < 997 * cd[4]:
                    revert with 0, 'SafeMath: Add Overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])
                if 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) <= 0:
                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                require ext_call.return_data[18 len 14] > 0
                require ext_call.return_data[50 len 14] > 0
                if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) / 997 != 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if not ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) < 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Add Overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]))
                    if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'I'
                    require 0 < ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164] = mem[(32 * ('cd', 68).length) + 172 len 20]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 196] = cd[4]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164], cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 100).length
                    require ext_code.size(address(_790))
                    if address(cd[36]) != mem[140 len 20]:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]), 0, address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), address(this.address), 128, 0
                    else:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]), address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), 0, address(this.address), 128, 0
                else:
                    require ext_call.return_data[50 len 14]
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) < 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Add Overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]))
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'I'
                    require 0 < ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164] = mem[(32 * ('cd', 68).length) + 172 len 20]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 196] = cd[4]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164], cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 100).length
                    require ext_code.size(address(_790))
                    if address(cd[36]) != mem[140 len 20]:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]), 0, address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), address(this.address), 128, 0
                    else:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]), address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), 0, address(this.address), 128, 0
        else:
            if not Mask(112, 0, ext_call.return_data[32]):
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) < 997 * cd[4]:
                    revert with 0, 'SafeMath: Add Overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])
                if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) <= 0:
                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                require ext_call.return_data[50 len 14] > 0
                require ext_call.return_data[18 len 14] > 0
                if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) / 997 != 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if not ext_call.return_data[18 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) < 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Add Overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]))
                    if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'I'
                    require 0 < ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164] = mem[(32 * ('cd', 68).length) + 172 len 20]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 196] = cd[4]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164], cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 100).length
                    require ext_code.size(address(_790))
                    if address(cd[36]) != mem[140 len 20]:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]), 0, address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), address(this.address), 128, 0
                    else:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]), address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), 0, address(this.address), 128, 0
                else:
                    require ext_call.return_data[18 len 14]
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) < 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Add Overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]))
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'I'
                    require 0 < ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164] = mem[(32 * ('cd', 68).length) + 172 len 20]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 196] = cd[4]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164], cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 100).length
                    require ext_code.size(address(_790))
                    if address(cd[36]) != mem[140 len 20]:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]), 0, address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), address(this.address), 128, 0
                    else:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]), address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), 0, address(this.address), 128, 0
            else:
                require Mask(112, 0, ext_call.return_data[32])
                if 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * cd[4]:
                    revert with 0, 'SafeMath: Mul Overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) < 997 * cd[4]:
                    revert with 0, 'SafeMath: Add Overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])
                if 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) <= 0:
                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                require ext_call.return_data[50 len 14] > 0
                require ext_call.return_data[18 len 14] > 0
                if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) / 997 != 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if not ext_call.return_data[18 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) < 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Add Overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]))
                    if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'I'
                    require 0 < ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164] = mem[(32 * ('cd', 68).length) + 172 len 20]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 196] = cd[4]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164], cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 100).length
                    require ext_code.size(address(_790))
                    if address(cd[36]) != mem[140 len 20]:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]), 0, address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), address(this.address), 128, 0
                    else:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]), address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), 0, address(this.address), 128, 0
                else:
                    require ext_call.return_data[18 len 14]
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) < 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 'SafeMath: Add Overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]))
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'I'
                    require 0 < ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164] = mem[(32 * ('cd', 68).length) + 172 len 20]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 196] = cd[4]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 164], cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 100).length
                    require ext_code.size(address(_790))
                    if address(cd[36]) != mem[140 len 20]:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]), 0, address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), address(this.address), 128, 0
                    else:
                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]), address(mem[(32 * ('cd', 68).length) + 192]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_792))
                        call address(_792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
