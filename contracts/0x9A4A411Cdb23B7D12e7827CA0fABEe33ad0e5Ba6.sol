contract main {




// =====================  Runtime code  =====================


address governorAddress; offset 16
uint256 stor0; offset 16
address pendingGovernorAddress;
address bankAddress;

function governor() payable {
    return address(governorAddress)
}

function bank() payable {
    return bankAddress
}

function pendingGovernor() payable {
    return pendingGovernorAddress
}

function _fallback() payable {
    revert
}

function setBank(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    bankAddress = arg1
}

function setPendingGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    pendingGovernorAddress = arg1
    emit SetPendingGovernor(arg1);
}

function acceptGovernor() payable {
    if pendingGovernorAddress != msg.sender:
        revert with 0, 'not the pending governor'
    pendingGovernorAddress = 0
    Mask(240, 0, stor0) = Mask(240, 0, msg.sender)
    emit AcceptGovernor(msg.sender);
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
}

function sub_65cad891(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
}

function sub_51d17bdf(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x6d6af33400000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(bankAddress)
    staticcall bankAddress.getPositionDebts(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[64] = (32 * _7) + ceil32(return_data.size) + 128
    _20 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + (32 * mem[uint32(arg1), mem[132 len 28] + 96]) + 32 <= return_data.size
    mem[(32 * _7) + ceil32(return_data.size) + 128] = mem[uint32(arg1), mem[132 len 28] + 96]
    mem[(32 * _7) + ceil32(return_data.size) + 160 len floor32(mem[_20 + 96])] = mem[_20 + 128 len floor32(mem[_20 + 96])]
    require 0 < mem[ceil32(return_data.size) + 96]
    require 0 < mem[(32 * _7) + ceil32(return_data.size) + 128]
    return mem[ceil32(return_data.size) + 140 len 20], mem[(32 * _7) + ceil32(return_data.size) + 160]
}

function test1() payable {
    mem[64] = 96
    mem[96] = 0x899346c700000000000000000000000000000000000000000000000000000000
    require ext_code.size(bankAddress)
    staticcall bankAddress.mem[var18003 len 4] with:
            gas gas_remaining wei
           args mem[var18003 + 4 len var18004 - 4]
    mem[var18005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var22003 >= mem[var22002]:
        return var22004
    mem[96] = 0xb60dae1200000000000000000000000000000000000000000000000000000000
    mem[100] = var24001
    require ext_code.size(bankAddress)
    staticcall bankAddress.mem[var26003 len 4] with:
            gas gas_remaining wei
           args mem[var26003 + 4 len var26004 - 4]
    mem[var26005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x5787d29100000000000000000000000000000000000000000000000000000000
    mem[100] = var30004
    require ext_code.size(bankAddress)
    staticcall bankAddress.mem[var32003 len 4] with:
            gas gas_remaining wei
           args mem[var32003 + 4 len var32004 - 4]
    mem[var32005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x899346c700000000000000000000000000000000000000000000000000000000
    require ext_code.size(bankAddress)
    if mem[var36002] > var36004:
        staticcall bankAddress.mem[var43003 len 4] with:
                gas gas_remaining wei
               args mem[var43003 + 4 len var43004 - 4]
        mem[var43005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var47003 >= mem[var47002]:
            return (var38004 + 1)
        mem[96] = 0xb60dae1200000000000000000000000000000000000000000000000000000000
        mem[100] = var49001
        require ext_code.size(bankAddress)
        staticcall bankAddress.mem[var51003 len 4] with:
                gas gas_remaining wei
               args mem[var51003 + 4 len var51004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        # nil
    else:
        staticcall bankAddress.mem[var42003 len 4] with:
                gas gas_remaining wei
               args mem[var42003 + 4 len var42004 - 4]
        mem[var42005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var46003 >= mem[var46002]:
            return var46004
        mem[96] = 0xb60dae1200000000000000000000000000000000000000000000000000000000
        mem[100] = var48001
        require ext_code.size(bankAddress)
        staticcall bankAddress.mem[var50003 len 4] with:
                gas gas_remaining wei
               args mem[var50003 + 4 len var50004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        # nil
}

function sub_49e87816(?) payable {
    mem[64] = 96
    mem[96] = 0x899346c700000000000000000000000000000000000000000000000000000000
    require ext_code.size(bankAddress)
    staticcall bankAddress.mem[var20003 len 4] with:
            gas gas_remaining wei
           args mem[var20003 + 4 len var20004 - 4]
    mem[var20005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var24003 >= mem[var24002]:
        require var24004 <= test266151307()
        mem[96] = var24004
        mem[64] = (32 * var24004) + 128
        if not var24004:
            mem[(32 * var24004) + 128] = 0x899346c700000000000000000000000000000000000000000000000000000000
            require ext_code.size(bankAddress)
            staticcall bankAddress.mem[var32003 len 4] with:
                    gas gas_remaining wei
                   args mem[var32003 + 4 len var32004 - 4]
            mem[var32005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var36003 >= mem[var36002]:
                mem[(32 * var24004) + 128] = 32
                mem[(32 * var24004) + 160] = var24004
                mem[(32 * var24004) + 192 len floor32(var24004)] = mem[128 len floor32(var24004)]
                return memory
                  from (32 * var24004) + 128
                   len (96 * var24004) + 64
            mem[(32 * var24004) + 128] = 0xb60dae1200000000000000000000000000000000000000000000000000000000
            mem[(32 * var24004) + 132] = var38001
            require ext_code.size(bankAddress)
            staticcall bankAddress.mem[var40003 len 4] with:
                    gas gas_remaining wei
                   args mem[var40003 + 4 len var40004 - 4]
            mem[var40005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * var24004) + 128] = 0x5787d29100000000000000000000000000000000000000000000000000000000
            mem[(32 * var24004) + 132] = var44004
            require ext_code.size(bankAddress)
            staticcall bankAddress.mem[var46003 len 4] with:
                    gas gas_remaining wei
                   args mem[var46003 + 4 len var46004 - 4]
            mem[var46005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[var50002] > var50004:
                if not var53001:
                    require ext_code.size(bankAddress)
                    # nil
                else:
                    require var53005 < var24004
                    require ext_code.size(bankAddress)
                    # nil
            else:
                if var50001:
                    require var54004 < var24004
                    # nil
                else:
                    mem[(32 * var24004) + 128] = 0x899346c700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(bankAddress)
                    staticcall bankAddress.mem[var58003 len 4] with:
                            gas gas_remaining wei
                           args mem[var58003 + 4 len var58004 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    # nil
        else:
            mem[128 len 32 * var24004] = call.data[calldata.size len 32 * var24004]
            mem[(32 * var24004) + 128] = 0x899346c700000000000000000000000000000000000000000000000000000000
            require ext_code.size(bankAddress)
            staticcall bankAddress.mem[var33003 len 4] with:
                    gas gas_remaining wei
                   args mem[var33003 + 4 len var33004 - 4]
            mem[var33005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var37003 >= mem[var37002]:
                mem[(32 * var24004) + 128] = 32
                mem[(32 * var24004) + 160] = var24004
                mem[(32 * var24004) + 192 len floor32(var24004)] = call.data[calldata.size len floor32(var24004)]
                return memory
                  from (32 * var24004) + 128
                   len (96 * var24004) + 64
            mem[(32 * var24004) + 128] = 0xb60dae1200000000000000000000000000000000000000000000000000000000
            mem[(32 * var24004) + 132] = var39001
            require ext_code.size(bankAddress)
            staticcall bankAddress.mem[var41003 len 4] with:
                    gas gas_remaining wei
                   args mem[var41003 + 4 len var41004 - 4]
            mem[var41005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * var24004) + 128] = 0x5787d29100000000000000000000000000000000000000000000000000000000
            mem[(32 * var24004) + 132] = var45004
            require ext_code.size(bankAddress)
            staticcall bankAddress.mem[var47003 len 4] with:
                    gas gas_remaining wei
                   args mem[var47003 + 4 len var47004 - 4]
            mem[var47005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[var51002] > var51004:
                if not var54001:
                    require ext_code.size(bankAddress)
                    # nil
                else:
                    require var54005 < var24004
                    require ext_code.size(bankAddress)
                    # nil
            else:
                if var51001:
                    require var55004 < var24004
                    # nil
                else:
                    mem[(32 * var24004) + 128] = 0x899346c700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(bankAddress)
                    staticcall bankAddress.mem[var59003 len 4] with:
                            gas gas_remaining wei
                           args mem[var59003 + 4 len var59004 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    # nil
    else:
        mem[96] = 0xb60dae1200000000000000000000000000000000000000000000000000000000
        mem[100] = var26001
        require ext_code.size(bankAddress)
        staticcall bankAddress.mem[var28003 len 4] with:
                gas gas_remaining wei
               args mem[var28003 + 4 len var28004 - 4]
        mem[var28005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0x5787d29100000000000000000000000000000000000000000000000000000000
        mem[100] = var32004
        require ext_code.size(bankAddress)
        staticcall bankAddress.mem[var34003 len 4] with:
                gas gas_remaining wei
               args mem[var34003 + 4 len var34004 - 4]
        mem[var34005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0x899346c700000000000000000000000000000000000000000000000000000000
        require ext_code.size(bankAddress)
        if mem[var38002] > var38004:
            if not var41001:
                staticcall bankAddress.mem[var46003 len 4] with:
                        gas gas_remaining wei
                       args mem[var46003 + 4 len var46004 - 4]
                mem[var46005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var50003 < mem[var50002]:
                    require ext_code.size(bankAddress)
                    # nil
                else:
                    require var41005 <= test266151307()
                    require ext_code.size(bankAddress)
                    # nil
            else:
                staticcall bankAddress.mem[var47003 len 4] with:
                        gas gas_remaining wei
                       args mem[var47003 + 4 len var47004 - 4]
                mem[var47005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var51003 < mem[var51002]:
                    require ext_code.size(bankAddress)
                    # nil
                else:
                    require var41005 + 1 <= test266151307()
                    require ext_code.size(bankAddress)
                    # nil
        else:
            if var39001:
                staticcall bankAddress.mem[var47003 len 4] with:
                        gas gas_remaining wei
                       args mem[var47003 + 4 len var47004 - 4]
                mem[var47005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var51003 < mem[var51002]:
                    require ext_code.size(bankAddress)
                    # nil
                else:
                    require var42004 + 1 <= test266151307()
                    require ext_code.size(bankAddress)
                    # nil
            else:
                staticcall bankAddress.mem[var46003 len 4] with:
                        gas gas_remaining wei
                       args mem[var46003 + 4 len var46004 - 4]
                mem[var46005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var50003 < mem[var50002]:
                    mem[96] = 0xb60dae1200000000000000000000000000000000000000000000000000000000
                    mem[100] = var52001
                    require ext_code.size(bankAddress)
                    staticcall bankAddress.mem[var54003 len 4] with:
                            gas gas_remaining wei
                           args mem[var54003 + 4 len var54004 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    # nil
                else:
                    require var50004 <= test266151307()
                    mem[96] = var50004
                    mem[64] = (32 * var50004) + 128
                    if not var50004:
                        mem[(32 * var50004) + 128] = 0x899346c700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(bankAddress)
                        staticcall bankAddress.mem[var58003 len 4] with:
                                gas gas_remaining wei
                               args mem[var58003 + 4 len var58004 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        # nil
                    else:
                        mem[128 len 32 * var50004] = call.data[calldata.size len 32 * var50004]
                        mem[(32 * var50004) + 128] = 0x899346c700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(bankAddress)
                        staticcall bankAddress.mem[var59003 len 4] with:
                                gas gas_remaining wei
                               args mem[var59003 + 4 len var59004 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        # nil
}



}
