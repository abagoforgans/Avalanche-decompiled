contract main {




// =====================  Runtime code  =====================


#
#  - sub_35e8b7d5(?)
#  - sub_cee6202c(?)
#
const minimumAmount = 1000


address owner;
address nativeAddress;
mapping of uint8 stor3;

function native() {
    return nativeAddress
}

function owner() {
    return owner
}

function sub_9416cbc6(?) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8e8d8152(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(arg2)
    staticcall arg2.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    if ext_call.return_data[12 len 20] != arg1:
        staticcall arg2.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x65496e70757420746f6b656e206e6f742070726573656e7420696e206c697175696469747920706169,
                        mem[205 len 23]
    staticcall arg2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg3)
    if address(ext_call.return_data[0]) == arg1:
        staticcall arg3.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args Mask(255, 1, arg4), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (arg4 / 2) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg3)
        staticcall arg3.quote(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args Mask(255, 1, arg4), (arg4 / 2) + Mask(112, 0, ext_call.return_data[0]), Mask(112, 0, ext_call.return_data[32]) - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0] <= 3:
            if not ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0]:
                if 0 > arg4:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(arg3)
                staticcall arg3.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args arg4, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return arg4, ext_call.return_data[0]
            if 1 > arg4:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(arg3)
            staticcall arg3.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg4 - 1, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return arg4 - 1, ext_call.return_data[0]
        s = (ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0] / 2) + 1
        t = ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0]
        while s < t:
            require s
            s = (ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0] / s) + s / 2
            t = s
            continue 
        if t > arg4:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg3)
        staticcall arg3.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args arg4 - t, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return arg4 - t, ext_call.return_data[0]
    staticcall arg3.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args Mask(255, 1, arg4), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (arg4 / 2) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(arg3)
    staticcall arg3.quote(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args Mask(255, 1, arg4), (arg4 / 2) + Mask(112, 0, ext_call.return_data[32]), -Mask(144, 112, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0] <= 3:
        if not ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0]:
            if 0 > arg4:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(arg3)
            staticcall arg3.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg4, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0], arg4
        if 1 > arg4:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg3)
        staticcall arg3.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args arg4 - 1, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0], arg4 - 1
    s = (ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0] / 2) + 1
    t = ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0]
    while s < t:
        require s
        s = (ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0] / s) + s / 2
        t = s
        continue 
    if t > arg4:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(arg3)
    staticcall arg3.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args arg4 - t, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], arg4 - t
}

function sub_f776f4df(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(arg2)
    staticcall arg2.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    if ext_call.return_data[12 len 20] != arg3:
        staticcall arg2.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x65496e70757420746f6b656e206e6f742070726573656e7420696e206c697175696469747920706169,
                        mem[205 len 23]
    staticcall arg2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    if address(ext_call.return_data[0]) == arg3:
        staticcall arg1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args Mask(255, 1, arg4), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (arg4 / 2) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg1)
        staticcall arg1.quote(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args Mask(255, 1, arg4), (arg4 / 2) + Mask(112, 0, ext_call.return_data[0]), Mask(112, 0, ext_call.return_data[32]) - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0] <= 3:
            if not ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0]:
                if 0 > arg4:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(arg1)
                staticcall arg1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args arg4, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return arg4, ext_call.return_data[0]
            if 1 > arg4:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(arg1)
            staticcall arg1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg4 - 1, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return arg4 - 1, ext_call.return_data[0]
        s = (ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0] / 2) + 1
        t = ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0]
        while s < t:
            require s
            s = (ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0] / s) + s / 2
            t = s
            continue 
        if t > arg4:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg1)
        staticcall arg1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args arg4 - t, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return arg4 - t, ext_call.return_data[0]
    staticcall arg1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args Mask(255, 1, arg4), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (arg4 / 2) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(arg1)
    staticcall arg1.quote(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args Mask(255, 1, arg4), (arg4 / 2) + Mask(112, 0, ext_call.return_data[32]), -Mask(144, 112, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0] <= 3:
        if not ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0]:
            if 0 > arg4:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(arg1)
            staticcall arg1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg4, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0], arg4
        if 1 > arg4:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg1)
        staticcall arg1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args arg4 - 1, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0], arg4 - 1
    s = (ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0] / 2) + 1
    t = ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0]
    while s < t:
        require s
        s = (ext_call.return_data[0] * arg4 / 2 * arg4 / 2 / ext_call.return_data[0] / s) + s / 2
        t = s
        continue 
    if t > arg4:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(arg1)
    staticcall arg1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args arg4 - t, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], arg4 - t
}

function estimateZapIn(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[12 len 20] != nativeAddress:
        staticcall arg1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != nativeAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x65496e70757420746f6b656e206e6f742070726573656e7420696e206c697175696469747920706169,
                        mem[205 len 23]
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg2)
    if address(ext_call.return_data[0]) == nativeAddress:
        staticcall arg2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args Mask(255, 1, arg3), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (arg3 / 2) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg2)
        staticcall arg2.quote(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args Mask(255, 1, arg3), (arg3 / 2) + Mask(112, 0, ext_call.return_data[0]), Mask(112, 0, ext_call.return_data[32]) - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if ext_call.return_data[0] * arg3 / 2 * arg3 / 2 / ext_call.return_data[0] <= 3:
            if not ext_call.return_data[0] * arg3 / 2 * arg3 / 2 / ext_call.return_data[0]:
                if 0 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(arg2)
                staticcall arg2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return arg3, ext_call.return_data[0]
            if 1 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(arg2)
            staticcall arg2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg3 - 1, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return arg3 - 1, ext_call.return_data[0]
        s = (ext_call.return_data[0] * arg3 / 2 * arg3 / 2 / ext_call.return_data[0] / 2) + 1
        t = ext_call.return_data[0] * arg3 / 2 * arg3 / 2 / ext_call.return_data[0]
        while s < t:
            require s
            s = (ext_call.return_data[0] * arg3 / 2 * arg3 / 2 / ext_call.return_data[0] / s) + s / 2
            t = s
            continue 
        if t > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg2)
        staticcall arg2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args arg3 - t, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return arg3 - t, ext_call.return_data[0]
    staticcall arg2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args Mask(255, 1, arg3), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (arg3 / 2) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(arg2)
    staticcall arg2.quote(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args Mask(255, 1, arg3), (arg3 / 2) + Mask(112, 0, ext_call.return_data[32]), -Mask(144, 112, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if ext_call.return_data[0] * arg3 / 2 * arg3 / 2 / ext_call.return_data[0] <= 3:
        if not ext_call.return_data[0] * arg3 / 2 * arg3 / 2 / ext_call.return_data[0]:
            if 0 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(arg2)
            staticcall arg2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0], arg3
        if 1 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg2)
        staticcall arg2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args arg3 - 1, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0], arg3 - 1
    s = (ext_call.return_data[0] * arg3 / 2 * arg3 / 2 / ext_call.return_data[0] / 2) + 1
    t = ext_call.return_data[0] * arg3 / 2 * arg3 / 2 / ext_call.return_data[0]
    while s < t:
        require s
        s = (ext_call.return_data[0] * arg3 / 2 * arg3 / 2 / ext_call.return_data[0] / s) + s / 2
        t = s
        continue 
    if t > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(arg2)
    staticcall arg2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args arg3 - t, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], arg3 - t
}



}
