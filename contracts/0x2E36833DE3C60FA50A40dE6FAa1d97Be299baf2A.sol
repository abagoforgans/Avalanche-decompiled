contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[address(msg.sender)]:
        revert with 0, 'Sender is not admin.'
    stor0[address(arg1)] = uint8(arg2)
}

function sub_85f8af7f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not stor0[address(msg.sender)]:
        revert with 0, 'Sender is not admin.'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 0
        stor0[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
        idx = idx + 1
        continue 
}

function withdrawToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor0[address(msg.sender)]:
        revert with 0, 'Sender is not admin.'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'InsufficientBalance'
    mem[260 len 64] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'Safe transfer failed'
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'Safe transfer failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 'Safe transfer failed'
}

function getBalances(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length:
        mem[128 len 32 * arg1.length] = code.data[7598 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    return Array(len=arg1.length, data=mem[128 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]), 
}

function sub_8e37e70b(?) payable {
    require calldata.size - 4 >= 64
    if not stor0[address(msg.sender)]:
        revert with 0, 'Sender is not admin.'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor0[address(msg.sender)]:
        revert with 0, 'Sender is not admin.'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'InsufficientBalance'
    mem[260 len 64] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg2) << 64, 0, ext_call.return_data[0 len 28]
    call arg1 with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'Safe transfer failed'
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'Safe transfer failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 'Safe transfer failed'
}

function getReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    if not arg1.length:
        mem[(32 * arg1.length) + 128] = arg1.length
    else:
        mem[128 len 32 * arg1.length] = code.data[7598 len 32 * arg1.length]
        mem[(32 * arg1.length) + 128] = arg1.length
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[7598 len 32 * arg1.length]
    idx = 0
    while uint16(idx) < arg1.length:
        require ext_code.size(address(cd[((32 * uint16(idx)) + arg1 + 36)]))
        staticcall address(cd[((32 * uint16(idx)) + arg1 + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[(64 * arg1.length) + 160 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require uint16(idx) < mem[96]
        mem[(32 * uint16(idx)) + 128] = Mask(112, 0, ext_call.return_data[0])
        require uint16(idx) < mem[(32 * arg1.length) + 128]
        mem[(32 * uint16(idx)) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 64
    mem[(64 * arg1.length) + 224] = mem[96]
    mem[(64 * arg1.length) + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[(64 * arg1.length) + 192] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + (64 * arg1.length) + 256] = mem[(32 * arg1.length) + 128]
    mem[(32 * mem[96]) + (64 * arg1.length) + 288 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return Array(len=mem[96], data=mem[(64 * arg1.length) + 256 len (32 * mem[(32 * arg1.length) + 128]) + (32 * mem[96]) + 32]), 
           (32 * mem[96]) + 96
}

function getAmountOut(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 997 * arg3 / 997 != arg3:
        revert with 0, 'ds-math-mul-overflow'
    if ext_call.return_data[12 len 20] == arg2:
        if not Mask(112, 0, ext_call.return_data[32]):
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-add-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3):
                return (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3))
        else:
            if Mask(112, 0, ext_call.return_data[32]):
                if 997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3):
                    return (997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3))
    else:
        if not Mask(112, 0, ext_call.return_data[0]):
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3):
                return (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3))
        else:
            if Mask(112, 0, ext_call.return_data[0]):
                if 997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3):
                    return (997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3))
    revert
}

function sub_2fe77a10(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    idx = 0
    s = arg3
    while idx < arg1.length:
        require idx < arg1.length
        _46 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _50 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(address(_46))
        staticcall address(_46).token0() with:
                gas gas_remaining wei
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 997 * s / 997 != s:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[12 len 20] == address(_50):
            if not Mask(112, 0, ext_call.return_data[32]):
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s):
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    continue 
            else:
                if Mask(112, 0, ext_call.return_data[32]):
                    if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s):
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        continue 
        else:
            if not Mask(112, 0, ext_call.return_data[0]):
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s):
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    continue 
            else:
                if Mask(112, 0, ext_call.return_data[0]):
                    if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s):
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        continue 
        revert
    return s
}

function sub_21d318b5(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[address(msg.sender)]:
        revert with 0, 'Sender is not admin.'
    if cd[68] <= 0:
        revert with 0, 'AmountIn should be > 0'
    if cd[100] <= 0:
        revert with 0, 'MinAmountOut should be > 0'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0xfe5061746820616e6420746f6b656e4164647273206c656e6774687320646f6573206e6f74206d617463,
                    mem[206 len 22]
    mem[96] = ('cd', 4).length
    mem[128 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = 0
    idx = 0
    s = cd[68]
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        _542 = mem[(32 * idx) + 128]
        require idx < ('cd', 36).length
        _546 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(address(_542))
        staticcall address(_542).token0() with:
                gas gas_remaining wei
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 997 * s / 997 != s:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[12 len 20] == address(_546):
            if not Mask(112, 0, ext_call.return_data[32]):
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s):
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    continue 
            else:
                if Mask(112, 0, ext_call.return_data[32]):
                    if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s):
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        continue 
        else:
            if not Mask(112, 0, ext_call.return_data[0]):
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s):
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    continue 
            else:
                if Mask(112, 0, ext_call.return_data[0]):
                    if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s):
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        continue 
        revert
    if s < cd[100]:
        revert with 0, 
                    32,
                    35,
                    0x684c6f7765722066696e616c20616d6f756e744f7574207468616e2064657369726564,
                    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 263 len 29]
    idx = 0
    s = cd[68]
    while uint16(idx) < ('cd', 4).length:
        require uint16(idx) < ('cd', 36).length
        _1072 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1072] = 25
        mem[_1072 + 32] = 'transfer(address,uint256)'
        _1075 = mem[64]
        mem[mem[64] + 36] = address(cd[((32 * uint16(idx)) + cd[4] + 36)])
        mem[mem[64] + 68] = s
        _1076 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_1076 + 32] = mem[_1076 + 36 len 28] or Mask(32, 224, sha3('transfer(address,uint256)'))
        _1079 = mem[_1076]
        u = _1076 + 32
        v = _1075 + 100
        t = mem[_1076]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_1075 + floor32(mem[_1076]) + 100] = mem[_1076 + -(mem[_1076] % 32) + floor32(mem[_1076]) + 64 len mem[_1076] % 32] or Mask(8 * -(mem[_1076] % 32) + 32, -(8 * -(mem[_1076] % 32) + 32) + 256, mem[_1075 + floor32(mem[_1076]) + 100])
        call address(cd[((32 * uint16(idx)) + cd[36] + 36)]).mem[_1075 + 100 len 4] with:
             gas gas_remaining wei
            args mem[_1075 + 104 len _1079 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Safe transfer failed'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 'Safe transfer failed'
            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 997 * s / 997 != s:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[12 len 20] == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1075 + 100] = 0
                    mem[64] = _1075 + 132
                    mem[_1075 + 132] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if ext_call.return_data[12 len 20] == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                        mem[_1075 + 136] = 0
                        mem[_1075 + 168] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_1075 + 200] = this.address
                        mem[_1075 + 232] = 128
                        mem[_1075 + 264] = 0
                        t = 0
                        while t < 0:
                            mem[_1075 + t + 296] = mem[_1075 + t + 132]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, 0
                    else:
                        mem[_1075 + 136] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_1075 + 168] = 0
                        mem[_1075 + 200] = this.address
                        mem[_1075 + 232] = 128
                        mem[_1075 + 264] = 0
                        t = 0
                        while t < 0:
                            mem[_1075 + t + 296] = mem[_1075 + t + 132]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    continue 
                require Mask(112, 0, ext_call.return_data[32])
                if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_1075 + 100] = 0
                mem[64] = _1075 + 132
                mem[_1075 + 132] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                    mem[_1075 + 136] = 0
                    mem[_1075 + 168] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    mem[_1075 + 200] = this.address
                    mem[_1075 + 232] = 128
                    mem[_1075 + 264] = 0
                    t = 0
                    while t < 0:
                        mem[_1075 + t + 296] = mem[_1075 + t + 132]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                    call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, 0
                else:
                    mem[_1075 + 136] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    mem[_1075 + 168] = 0
                    mem[_1075 + 200] = this.address
                    mem[_1075 + 232] = 128
                    mem[_1075 + 264] = 0
                    t = 0
                    while t < 0:
                        mem[_1075 + t + 296] = mem[_1075 + t + 132]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                    call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                continue 
            if not Mask(112, 0, ext_call.return_data[0]):
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_1075 + 100] = 0
                mem[64] = _1075 + 132
                mem[_1075 + 132] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                    mem[_1075 + 136] = 0
                    mem[_1075 + 168] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_1075 + 200] = this.address
                    mem[_1075 + 232] = 128
                    mem[_1075 + 264] = 0
                    t = 0
                    while t < 0:
                        mem[_1075 + t + 296] = mem[_1075 + t + 132]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                    call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, 0
                else:
                    mem[_1075 + 136] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_1075 + 168] = 0
                    mem[_1075 + 200] = this.address
                    mem[_1075 + 232] = 128
                    mem[_1075 + 264] = 0
                    t = 0
                    while t < 0:
                        mem[_1075 + t + 296] = mem[_1075 + t + 132]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                    call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                continue 
            require Mask(112, 0, ext_call.return_data[0])
            if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_1075 + 100] = 0
            mem[64] = _1075 + 132
            mem[_1075 + 132] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if ext_call.return_data[12 len 20] == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                mem[_1075 + 136] = 0
                mem[_1075 + 168] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                mem[_1075 + 200] = this.address
                mem[_1075 + 232] = 128
                mem[_1075 + 264] = 0
                t = 0
                while t < 0:
                    mem[_1075 + t + 296] = mem[_1075 + t + 132]
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, 0
            else:
                mem[_1075 + 136] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                mem[_1075 + 168] = 0
                mem[_1075 + 200] = this.address
                mem[_1075 + 232] = 128
                mem[_1075 + 264] = 0
                t = 0
                while t < 0:
                    mem[_1075 + t + 296] = mem[_1075 + t + 132]
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, 0
        else:
            mem[_1075 + 100] = return_data.size
            mem[_1075 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Safe transfer failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[_1075 + 132]:
                    revert with 0, 'Safe transfer failed'
            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 997 * s / 997 != s:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[12 len 20] == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1075 + ceil32(return_data.size) + 101] = 0
                    mem[64] = _1075 + ceil32(return_data.size) + 133
                    mem[_1075 + ceil32(return_data.size) + 133] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if ext_call.return_data[12 len 20] == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                        mem[_1075 + ceil32(return_data.size) + 137] = 0
                        mem[_1075 + ceil32(return_data.size) + 169] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_1075 + ceil32(return_data.size) + 201] = this.address
                        mem[_1075 + ceil32(return_data.size) + 233] = 128
                        mem[_1075 + ceil32(return_data.size) + 265] = 0
                        t = 0
                        while t < 0:
                            mem[_1075 + ceil32(return_data.size) + t + 297] = mem[_1075 + ceil32(return_data.size) + t + 133]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, 0
                    else:
                        mem[_1075 + ceil32(return_data.size) + 137] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_1075 + ceil32(return_data.size) + 169] = 0
                        mem[_1075 + ceil32(return_data.size) + 201] = this.address
                        mem[_1075 + ceil32(return_data.size) + 233] = 128
                        mem[_1075 + ceil32(return_data.size) + 265] = 0
                        t = 0
                        while t < 0:
                            mem[_1075 + ceil32(return_data.size) + t + 297] = mem[_1075 + ceil32(return_data.size) + t + 133]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    continue 
                require Mask(112, 0, ext_call.return_data[32])
                if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_1075 + ceil32(return_data.size) + 101] = 0
                mem[64] = _1075 + ceil32(return_data.size) + 133
                mem[_1075 + ceil32(return_data.size) + 133] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                    mem[_1075 + ceil32(return_data.size) + 137] = 0
                    mem[_1075 + ceil32(return_data.size) + 169] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    mem[_1075 + ceil32(return_data.size) + 201] = this.address
                    mem[_1075 + ceil32(return_data.size) + 233] = 128
                    mem[_1075 + ceil32(return_data.size) + 265] = 0
                    t = 0
                    while t < 0:
                        mem[_1075 + ceil32(return_data.size) + t + 297] = mem[_1075 + ceil32(return_data.size) + t + 133]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                    call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, 0
                else:
                    mem[_1075 + ceil32(return_data.size) + 137] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    mem[_1075 + ceil32(return_data.size) + 169] = 0
                    mem[_1075 + ceil32(return_data.size) + 201] = this.address
                    mem[_1075 + ceil32(return_data.size) + 233] = 128
                    mem[_1075 + ceil32(return_data.size) + 265] = 0
                    t = 0
                    while t < 0:
                        mem[_1075 + ceil32(return_data.size) + t + 297] = mem[_1075 + ceil32(return_data.size) + t + 133]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                    call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                continue 
            if not Mask(112, 0, ext_call.return_data[0]):
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_1075 + ceil32(return_data.size) + 101] = 0
                mem[64] = _1075 + ceil32(return_data.size) + 133
                mem[_1075 + ceil32(return_data.size) + 133] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                    mem[_1075 + ceil32(return_data.size) + 137] = 0
                    mem[_1075 + ceil32(return_data.size) + 169] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_1075 + ceil32(return_data.size) + 201] = this.address
                    mem[_1075 + ceil32(return_data.size) + 233] = 128
                    mem[_1075 + ceil32(return_data.size) + 265] = 0
                    t = 0
                    while t < 0:
                        mem[_1075 + ceil32(return_data.size) + t + 297] = mem[_1075 + ceil32(return_data.size) + t + 133]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                    call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, 0
                else:
                    mem[_1075 + ceil32(return_data.size) + 137] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_1075 + ceil32(return_data.size) + 169] = 0
                    mem[_1075 + ceil32(return_data.size) + 201] = this.address
                    mem[_1075 + ceil32(return_data.size) + 233] = 128
                    mem[_1075 + ceil32(return_data.size) + 265] = 0
                    t = 0
                    while t < 0:
                        mem[_1075 + ceil32(return_data.size) + t + 297] = mem[_1075 + ceil32(return_data.size) + t + 133]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                    call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                continue 
            require Mask(112, 0, ext_call.return_data[0])
            if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_1075 + ceil32(return_data.size) + 101] = 0
            mem[64] = _1075 + ceil32(return_data.size) + 133
            mem[_1075 + ceil32(return_data.size) + 133] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if ext_call.return_data[12 len 20] == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                mem[_1075 + ceil32(return_data.size) + 137] = 0
                mem[_1075 + ceil32(return_data.size) + 169] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                mem[_1075 + ceil32(return_data.size) + 201] = this.address
                mem[_1075 + ceil32(return_data.size) + 233] = 128
                mem[_1075 + ceil32(return_data.size) + 265] = 0
                t = 0
                while t < 0:
                    mem[_1075 + ceil32(return_data.size) + t + 297] = mem[_1075 + ceil32(return_data.size) + t + 133]
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, 0
            else:
                mem[_1075 + ceil32(return_data.size) + 137] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                mem[_1075 + ceil32(return_data.size) + 169] = 0
                mem[_1075 + ceil32(return_data.size) + 201] = this.address
                mem[_1075 + ceil32(return_data.size) + 233] = 128
                mem[_1075 + ceil32(return_data.size) + 265] = 0
                t = 0
                while t < 0:
                    mem[_1075 + ceil32(return_data.size) + t + 297] = mem[_1075 + ceil32(return_data.size) + t + 133]
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        continue 
    if s < cd[100]:
        revert with 0, 'Lower amountOut than desired'
    return s
}



}
