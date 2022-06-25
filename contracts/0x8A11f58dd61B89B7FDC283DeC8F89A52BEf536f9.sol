contract main {




// =====================  Runtime code  =====================


const joeFactory = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const UINT256_MAX = -1


address sub_2faff427Address;

function sub_2faff427(?) payable {
    return sub_2faff427Address
}

function _fallback() payable {
    revert
}

function sub_b35255ea(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require 1 < ext_call.return_data[0]
    mem[96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = -1
    mem[196] = arg2
    mem[228] = block.number
    mem[164] = 160
    mem[260] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[292 len 0x7b7dc000000000000000000000000000000000000000000000000000000000] = uint32(arg1), -1, 160, address(arg2), block.number, 0x8803dbee00000000000000000000000000000000000000000000000000000000, mem[292 len 0x7b7dbfffffffffffffffffffffffffffffffffffffffffffffffffffffff5c]
    require ext_code.size(sub_2faff427Address)
    call sub_2faff427Address.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, address(arg3), address(arg4), 160, address(arg2), block.number, 0x8803dbee00000000000000000000000000000000000000000000000000000000, mem[292 len 0x7b7dc000000000000000000000000000000000000000000000000000000000]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _24 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _27 = mem[_24 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_24 + 96])] = mem[_24 + 128 len floor32(mem[_24 + 96])]
    require 0 < mem[ceil32(return_data.size) + 96]
    if 0 == mem[ceil32(return_data.size) + 128]:
        revert with 0, 
                    32,
                    34,
                    0x5945786368616e676520646964206e6f742072657475726e20616e7920746f6b656e,
                    mem[(32 * _27) + ceil32(return_data.size) + 230 len 30]
}

function sub_ff02368a(?) payable {
    require calldata.size - 4 >= 96
    if arg2 == arg3:
        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
        if arg2 == arg3:
            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
        if arg2 < arg3:
            if not arg2:
                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, 6966612782042443325, sha3(arg2, arg3), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
            staticcall address(sha3(0, 6966612782042443325, sha3(arg2, arg3), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, 6966612782042443325, sha3(arg3, arg2), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
            staticcall address(sha3(0, 6966612782042443325, sha3(arg3, arg2), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg1 <= 0:
            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
        if arg2 == arg2:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if not ext_call.return_data[50 len 14]:
                if ext_call.return_data[18 len 14]:
                    return (0 / ext_call.return_data[18 len 14])
            else:
                if ext_call.return_data[50 len 14]:
                    if arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != arg1:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[18 len 14]:
                        return (arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if not ext_call.return_data[18 len 14]:
                if ext_call.return_data[50 len 14]:
                    return (0 / ext_call.return_data[50 len 14])
            else:
                if ext_call.return_data[18 len 14]:
                    if arg1 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != arg1:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14]:
                        return (arg1 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
    else:
        if not arg3:
            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
        if arg2 == arg3:
            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
        if arg2 < arg3:
            if not arg2:
                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, 6966612782042443325, sha3(arg2, arg3), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
            staticcall address(sha3(0, 6966612782042443325, sha3(arg2, arg3), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, 6966612782042443325, sha3(arg3, arg2), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
            staticcall address(sha3(0, 6966612782042443325, sha3(arg3, arg2), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg1 <= 0:
            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
        if arg3 == arg2:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if not ext_call.return_data[50 len 14]:
                if ext_call.return_data[18 len 14]:
                    return (0 / ext_call.return_data[18 len 14])
            else:
                if ext_call.return_data[50 len 14]:
                    if arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != arg1:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[18 len 14]:
                        return (arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if not ext_call.return_data[18 len 14]:
                if ext_call.return_data[50 len 14]:
                    return (0 / ext_call.return_data[50 len 14])
            else:
                if ext_call.return_data[18 len 14]:
                    if arg1 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != arg1:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14]:
                        return (arg1 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
    revert
}



}
