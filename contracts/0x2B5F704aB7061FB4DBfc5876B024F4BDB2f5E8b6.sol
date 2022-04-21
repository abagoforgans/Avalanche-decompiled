contract main {




// =====================  Runtime code  =====================


#
#  - sub_0c7e1209(?)
#  - sub_51a74316(?)
#  - sub_9f865422(?)
#  - safeTransfer(address arg1, address arg2, uint256 arg3)
#  - safeApprove(address arg1, address arg2, uint256 arg3)
#
function _fallback() payable {
    revert
}

function sub_a4a6ea8a(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg5 == bool(arg5)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(arg2) > address(arg3):
        if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
            if 0 / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: multiplication overflow'
        if Mask(112, 0, ext_call.return_data[32]):
            if 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: multiplication overflow'
    else:
        if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if Mask(144, 112, ext_call.return_data[0]):
            if 0 / Mask(144, 112, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
        if Mask(112, 0, ext_call.return_data[0]):
            if 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
    require ext_code.size(address(arg1))
    if not arg5:
        call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, 0, address(arg4), 128, 0
    else:
        call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3) with:
             gas gas_remaining wei
            args 0, 0, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function makeCalls(uint256 arg1, uint256 arg2, uint256 arg3, bytes[] arg4) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 128
        _20 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        mem[_20] = cd[(arg1 + cd[s] + 36)]
        mem[_20 + 32] = cd[(arg1 + cd[s] + 68)]
        mem[_20 + 64] = cd[(arg1 + cd[s] + 100)]
        require cd[(arg1 + cd[s] + 132)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 132)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 132)] + 36)] <= test266151307()
        _32 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 132)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 132)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 132)] + 36)]) + 32
        mem[_32] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 132)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 132)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 132)] + 36)] + 68 <= calldata.size
        mem[_32 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 132)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 132)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 132)] + 36)]]
        mem[_32 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 132)] + 36)] + 32] = 0
        mem[_20 + 96] = _32
        mem[t] = _20
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[96] <= 0:
        revert with 0, 'OpenOcean: Invalid call parameter'
    _36 = mem[96]
    idx = 0
    while idx < _36:
        require idx < mem[96]
        _38 = mem[(32 * idx) + 128]
        _39 = mem[64]
        mem[mem[64]] = 0xc7e120900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_38]
        mem[mem[64] + 68] = mem[_38 + 32]
        mem[mem[64] + 100] = mem[_38 + 64]
        _43 = mem[_38 + 96]
        mem[mem[64] + 132] = 128
        _44 = mem[_43]
        mem[mem[64] + 164] = mem[_43]
        s = 0
        while s < _44:
            mem[s + mem[64] + 196] = mem[s + _43 + 32]
            _36 = mem[96]
            s = s + 32
            continue 
        if ceil32(_44) > _44:
            mem[_44 + _39 + 196] = 0
        require ext_code.size(this.address)
        call this.address.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(_44) + _39 + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _36 = mem[96]
        idx = idx + 1
        continue 
}

function sub_aa37e8aa(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getTradeInfo() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[82 len 14]
    require ext_call.return_data[96] == ext_call.return_data[114 len 14]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(arg2) > address(arg3):
        if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[128] > 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
            if Mask(112, 0, ext_call.return_data[96]) < Mask(112, 0, ext_call.return_data[96]):
                revert with 0, 'SafeMath: addition overflow'
            if not Mask(112, 0, ext_call.return_data[96]):
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(arg4), 128, 0
            else:
                if Mask(112, 0, ext_call.return_data[96]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require Mask(112, 0, ext_call.return_data[96])
                require ext_code.size(address(arg1))
                if address(arg2) > address(arg3):
                    call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0 / Mask(112, 0, ext_call.return_data[96]), 0, address(arg4), 128, 0
                else:
                    call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0 / Mask(112, 0, ext_call.return_data[96]), address(arg4), 128, 0
        else:
            if (10^18 * ext_call.return_data[0]) - (10^18 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[128]) / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) != -ext_call.return_data[128] + 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (10^18 * ext_call.return_data[0]) - (10^18 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[128]) / 10^18:
                if ((10^18 * ext_call.return_data[0]) - (10^18 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[96]) < Mask(112, 0, ext_call.return_data[96]):
                    revert with 0, 'SafeMath: addition overflow'
                if not ((10^18 * ext_call.return_data[0]) - (10^18 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[96]):
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(arg4), 128, 0
                else:
                    if ((10^18 * ext_call.return_data[0]) - (10^18 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[96]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ((10^18 * ext_call.return_data[0]) - (10^18 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[96])
                    require ext_code.size(address(arg1))
                    if address(arg2) > address(arg3):
                        call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / ((10^18 * ext_call.return_data[0]) - (10^18 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[96]), 0, address(arg4), 128, 0
                    else:
                        call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / ((10^18 * ext_call.return_data[0]) - (10^18 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[96]), address(arg4), 128, 0
            else:
                if Mask(112, 0, ext_call.return_data[64]) * (10^18 * ext_call.return_data[0]) - (10^18 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[128]) / 10^18 / (10^18 * ext_call.return_data[0]) - (10^18 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[128]) / 10^18 != Mask(112, 0, ext_call.return_data[64]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if ((10^18 * ext_call.return_data[0]) - (10^18 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[96]) < Mask(112, 0, ext_call.return_data[96]):
                    revert with 0, 'SafeMath: addition overflow'
                if not ((10^18 * ext_call.return_data[0]) - (10^18 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[96]):
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(arg4), 128, 0
                else:
                    if ((10^18 * ext_call.return_data[0]) - (10^18 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[96]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ((10^18 * ext_call.return_data[0]) - (10^18 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[96])
                    require ext_code.size(address(arg1))
                    if address(arg2) > address(arg3):
                        call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args Mask(112, 0, ext_call.return_data[64]) * (10^18 * ext_call.return_data[0]) - (10^18 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[128]) / 10^18 / ((10^18 * ext_call.return_data[0]) - (10^18 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[96]), 0, address(arg4), 128, 0
                    else:
                        call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, Mask(112, 0, ext_call.return_data[64]) * (10^18 * ext_call.return_data[0]) - (10^18 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[128]) / 10^18 / ((10^18 * ext_call.return_data[0]) - (10^18 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[96]), address(arg4), 128, 0
    else:
        if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[128] > 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not Mask(144, 112, ext_call.return_data[0]):
            if Mask(112, 0, ext_call.return_data[64]) < Mask(112, 0, ext_call.return_data[64]):
                revert with 0, 'SafeMath: addition overflow'
            if not Mask(112, 0, ext_call.return_data[64]):
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(arg4), 128, 0
            else:
                if Mask(112, 0, ext_call.return_data[64]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require Mask(112, 0, ext_call.return_data[64])
                require ext_code.size(address(arg1))
                if address(arg2) > address(arg3):
                    call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0 / Mask(112, 0, ext_call.return_data[64]), 0, address(arg4), 128, 0
                else:
                    call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0 / Mask(112, 0, ext_call.return_data[64]), address(arg4), 128, 0
        else:
            if (10^18 * Mask(144, 112, ext_call.return_data[0])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[128]) / Mask(144, 112, ext_call.return_data[0]) != -ext_call.return_data[128] + 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (10^18 * Mask(144, 112, ext_call.return_data[0])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[128]) / 10^18:
                if ((10^18 * Mask(144, 112, ext_call.return_data[0])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[64]) < Mask(112, 0, ext_call.return_data[64]):
                    revert with 0, 'SafeMath: addition overflow'
                if not ((10^18 * Mask(144, 112, ext_call.return_data[0])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[64]):
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(arg4), 128, 0
                else:
                    if ((10^18 * Mask(144, 112, ext_call.return_data[0])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[64]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ((10^18 * Mask(144, 112, ext_call.return_data[0])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[64])
                    require ext_code.size(address(arg1))
                    if address(arg2) > address(arg3):
                        call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / ((10^18 * Mask(144, 112, ext_call.return_data[0])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[64]), 0, address(arg4), 128, 0
                    else:
                        call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / ((10^18 * Mask(144, 112, ext_call.return_data[0])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[64]), address(arg4), 128, 0
            else:
                if Mask(112, 0, ext_call.return_data[96]) * (10^18 * Mask(144, 112, ext_call.return_data[0])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[128]) / 10^18 / (10^18 * Mask(144, 112, ext_call.return_data[0])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[128]) / 10^18 != Mask(112, 0, ext_call.return_data[96]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if ((10^18 * Mask(144, 112, ext_call.return_data[0])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[64]) < Mask(112, 0, ext_call.return_data[64]):
                    revert with 0, 'SafeMath: addition overflow'
                if not ((10^18 * Mask(144, 112, ext_call.return_data[0])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[64]):
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(arg4), 128, 0
                else:
                    if ((10^18 * Mask(144, 112, ext_call.return_data[0])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[64]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ((10^18 * Mask(144, 112, ext_call.return_data[0])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[64])
                    require ext_code.size(address(arg1))
                    if address(arg2) > address(arg3):
                        call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args Mask(112, 0, ext_call.return_data[96]) * (10^18 * Mask(144, 112, ext_call.return_data[0])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[128]) / 10^18 / ((10^18 * Mask(144, 112, ext_call.return_data[0])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[64]), 0, address(arg4), 128, 0
                    else:
                        call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, Mask(112, 0, ext_call.return_data[96]) * (10^18 * Mask(144, 112, ext_call.return_data[0])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[128]) / 10^18 / ((10^18 * Mask(144, 112, ext_call.return_data[0])) - (ext_call.return_data[0] * ext_call.return_data[128]) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[128]) / 10^18) + Mask(112, 0, ext_call.return_data[64]), address(arg4), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
