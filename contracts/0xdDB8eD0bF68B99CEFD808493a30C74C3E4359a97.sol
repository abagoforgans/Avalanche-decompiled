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
        v = mem[64]
        t = mem[_1076]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[mem[64] + floor32(mem[_1076])] = mem[_1076 + floor32(mem[_1076]) + -(mem[_1076] % 32) + 64 len mem[_1076] % 32] or Mask(8 * -(mem[_1076] % 32) + 32, -(8 * -(mem[_1076] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1076])])
        call address(cd[((32 * uint16(idx)) + cd[36] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1079 + _1075 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Safe transfer failed'
            if not mem[96]:
                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
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
                if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                            _1758 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1758 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1758 + 36] = 0
                            mem[_1758 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_1758 + 100] = this.address
                            mem[_1758 + 132] = 128
                            mem[_1758 + 164] = mem[_1758]
                            t = 0
                            while t < mem[_1758]:
                                mem[_1758 + t + 196] = mem[_1758 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_1758] % 32:
                                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1758 + 164 len mem[_1758] + 32]
                            else:
                                mem[floor32(mem[_1758]) + _1758 + 196] = mem[floor32(mem[_1758]) + _1758 + -(mem[_1758] % 32) + 228 len mem[_1758] % 32]
                                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1758], mem[_1758 + 196 len floor32(mem[_1758]) + 32]
                        else:
                            _1759 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1759 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1759 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_1759 + 68] = 0
                            mem[_1759 + 100] = this.address
                            mem[_1759 + 132] = 128
                            mem[_1759 + 164] = mem[_1759]
                            t = 0
                            while t < mem[_1759]:
                                mem[_1759 + t + 196] = mem[_1759 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_1759] % 32:
                                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_1759 + 164 len mem[_1759] + 32]
                            else:
                                mem[floor32(mem[_1759]) + _1759 + 196] = mem[floor32(mem[_1759]) + _1759 + -(mem[_1759] % 32) + 228 len mem[_1759] % 32]
                                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_1759], mem[_1759 + 196 len floor32(mem[_1759]) + 32]
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
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                        _1802 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1802 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1802 + 36] = 0
                        mem[_1802 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_1802 + 100] = this.address
                        mem[_1802 + 132] = 128
                        mem[_1802 + 164] = mem[_1802]
                        t = 0
                        while t < mem[_1802]:
                            mem[_1802 + t + 196] = mem[_1802 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1802] % 32:
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1802 + 164 len mem[_1802] + 32]
                        else:
                            mem[floor32(mem[_1802]) + _1802 + 196] = mem[floor32(mem[_1802]) + _1802 + -(mem[_1802] % 32) + 228 len mem[_1802] % 32]
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1802], mem[_1802 + 196 len floor32(mem[_1802]) + 32]
                    else:
                        _1803 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1803 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1803 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_1803 + 68] = 0
                        mem[_1803 + 100] = this.address
                        mem[_1803 + 132] = 128
                        mem[_1803 + 164] = mem[_1803]
                        t = 0
                        while t < mem[_1803]:
                            mem[_1803 + t + 196] = mem[_1803 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1803] % 32:
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_1803 + 164 len mem[_1803] + 32]
                        else:
                            mem[floor32(mem[_1803]) + _1803 + 196] = mem[floor32(mem[_1803]) + _1803 + -(mem[_1803] % 32) + 228 len mem[_1803] % 32]
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_1803], mem[_1803 + 196 len floor32(mem[_1803]) + 32]
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
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                        _1761 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1761 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1761 + 36] = 0
                        mem[_1761 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_1761 + 100] = this.address
                        mem[_1761 + 132] = 128
                        mem[_1761 + 164] = mem[_1761]
                        t = 0
                        while t < mem[_1761]:
                            mem[_1761 + t + 196] = mem[_1761 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1761] % 32:
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_1761 + 164 len mem[_1761] + 32]
                        else:
                            mem[floor32(mem[_1761]) + _1761 + 196] = mem[floor32(mem[_1761]) + _1761 + -(mem[_1761] % 32) + 228 len mem[_1761] % 32]
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_1761], mem[_1761 + 196 len floor32(mem[_1761]) + 32]
                    else:
                        _1762 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1762 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1762 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_1762 + 68] = 0
                        mem[_1762 + 100] = this.address
                        mem[_1762 + 132] = 128
                        mem[_1762 + 164] = mem[_1762]
                        t = 0
                        while t < mem[_1762]:
                            mem[_1762 + t + 196] = mem[_1762 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1762] % 32:
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1762 + 164 len mem[_1762] + 32]
                        else:
                            mem[floor32(mem[_1762]) + _1762 + 196] = mem[floor32(mem[_1762]) + _1762 + -(mem[_1762] % 32) + 228 len mem[_1762] % 32]
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1762], mem[_1762 + 196 len floor32(mem[_1762]) + 32]
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
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                    _1804 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1804 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1804 + 36] = 0
                    mem[_1804 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_1804 + 100] = this.address
                    mem[_1804 + 132] = 128
                    mem[_1804 + 164] = mem[_1804]
                    t = 0
                    while t < mem[_1804]:
                        mem[_1804 + t + 196] = mem[_1804 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_1804] % 32:
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_1804 + 164 len mem[_1804] + 32]
                    else:
                        mem[floor32(mem[_1804]) + _1804 + 196] = mem[floor32(mem[_1804]) + _1804 + -(mem[_1804] % 32) + 228 len mem[_1804] % 32]
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_1804], mem[_1804 + 196 len floor32(mem[_1804]) + 32]
                else:
                    _1805 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1805 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1805 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_1805 + 68] = 0
                    mem[_1805 + 100] = this.address
                    mem[_1805 + 132] = 128
                    mem[_1805 + 164] = mem[_1805]
                    t = 0
                    while t < mem[_1805]:
                        mem[_1805 + t + 196] = mem[_1805 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_1805] % 32:
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1805 + 164 len mem[_1805] + 32]
                    else:
                        mem[floor32(mem[_1805]) + _1805 + 196] = mem[floor32(mem[_1805]) + _1805 + -(mem[_1805] % 32) + 228 len mem[_1805] % 32]
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1805], mem[_1805 + 196 len floor32(mem[_1805]) + 32]
            else:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 'Safe transfer failed'
                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
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
                if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                            _1806 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1806 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1806 + 36] = 0
                            mem[_1806 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_1806 + 100] = this.address
                            mem[_1806 + 132] = 128
                            mem[_1806 + 164] = mem[_1806]
                            t = 0
                            while t < mem[_1806]:
                                mem[_1806 + t + 196] = mem[_1806 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_1806] % 32:
                                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1806 + 164 len mem[_1806] + 32]
                            else:
                                mem[floor32(mem[_1806]) + _1806 + 196] = mem[floor32(mem[_1806]) + _1806 + -(mem[_1806] % 32) + 228 len mem[_1806] % 32]
                                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1806], mem[_1806 + 196 len floor32(mem[_1806]) + 32]
                        else:
                            _1807 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1807 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1807 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_1807 + 68] = 0
                            mem[_1807 + 100] = this.address
                            mem[_1807 + 132] = 128
                            mem[_1807 + 164] = mem[_1807]
                            t = 0
                            while t < mem[_1807]:
                                mem[_1807 + t + 196] = mem[_1807 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_1807] % 32:
                                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_1807 + 164 len mem[_1807] + 32]
                            else:
                                mem[floor32(mem[_1807]) + _1807 + 196] = mem[floor32(mem[_1807]) + _1807 + -(mem[_1807] % 32) + 228 len mem[_1807] % 32]
                                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_1807], mem[_1807 + 196 len floor32(mem[_1807]) + 32]
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
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                        _1886 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1886 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1886 + 36] = 0
                        mem[_1886 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_1886 + 100] = this.address
                        mem[_1886 + 132] = 128
                        mem[_1886 + 164] = mem[_1886]
                        t = 0
                        while t < mem[_1886]:
                            mem[_1886 + t + 196] = mem[_1886 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1886] % 32:
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1886 + 164 len mem[_1886] + 32]
                        else:
                            mem[floor32(mem[_1886]) + _1886 + 196] = mem[floor32(mem[_1886]) + _1886 + -(mem[_1886] % 32) + 228 len mem[_1886] % 32]
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1886], mem[_1886 + 196 len floor32(mem[_1886]) + 32]
                    else:
                        _1887 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1887 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1887 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_1887 + 68] = 0
                        mem[_1887 + 100] = this.address
                        mem[_1887 + 132] = 128
                        mem[_1887 + 164] = mem[_1887]
                        t = 0
                        while t < mem[_1887]:
                            mem[_1887 + t + 196] = mem[_1887 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1887] % 32:
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_1887 + 164 len mem[_1887] + 32]
                        else:
                            mem[floor32(mem[_1887]) + _1887 + 196] = mem[floor32(mem[_1887]) + _1887 + -(mem[_1887] % 32) + 228 len mem[_1887] % 32]
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_1887], mem[_1887 + 196 len floor32(mem[_1887]) + 32]
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
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                        _1809 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1809 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1809 + 36] = 0
                        mem[_1809 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_1809 + 100] = this.address
                        mem[_1809 + 132] = 128
                        mem[_1809 + 164] = mem[_1809]
                        t = 0
                        while t < mem[_1809]:
                            mem[_1809 + t + 196] = mem[_1809 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1809] % 32:
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_1809 + 164 len mem[_1809] + 32]
                        else:
                            mem[floor32(mem[_1809]) + _1809 + 196] = mem[floor32(mem[_1809]) + _1809 + -(mem[_1809] % 32) + 228 len mem[_1809] % 32]
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_1809], mem[_1809 + 196 len floor32(mem[_1809]) + 32]
                    else:
                        _1810 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1810 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1810 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_1810 + 68] = 0
                        mem[_1810 + 100] = this.address
                        mem[_1810 + 132] = 128
                        mem[_1810 + 164] = mem[_1810]
                        t = 0
                        while t < mem[_1810]:
                            mem[_1810 + t + 196] = mem[_1810 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1810] % 32:
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1810 + 164 len mem[_1810] + 32]
                        else:
                            mem[floor32(mem[_1810]) + _1810 + 196] = mem[floor32(mem[_1810]) + _1810 + -(mem[_1810] % 32) + 228 len mem[_1810] % 32]
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1810], mem[_1810 + 196 len floor32(mem[_1810]) + 32]
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
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                    _1888 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1888 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1888 + 36] = 0
                    mem[_1888 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_1888 + 100] = this.address
                    mem[_1888 + 132] = 128
                    mem[_1888 + 164] = mem[_1888]
                    t = 0
                    while t < mem[_1888]:
                        mem[_1888 + t + 196] = mem[_1888 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_1888] % 32:
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_1888 + 164 len mem[_1888] + 32]
                    else:
                        mem[floor32(mem[_1888]) + _1888 + 196] = mem[floor32(mem[_1888]) + _1888 + -(mem[_1888] % 32) + 228 len mem[_1888] % 32]
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_1888], mem[_1888 + 196 len floor32(mem[_1888]) + 32]
                else:
                    _1889 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1889 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1889 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_1889 + 68] = 0
                    mem[_1889 + 100] = this.address
                    mem[_1889 + 132] = 128
                    mem[_1889 + 164] = mem[_1889]
                    t = 0
                    while t < mem[_1889]:
                        mem[_1889 + t + 196] = mem[_1889 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_1889] % 32:
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1889 + 164 len mem[_1889] + 32]
                    else:
                        mem[floor32(mem[_1889]) + _1889 + 196] = mem[floor32(mem[_1889]) + _1889 + -(mem[_1889] % 32) + 228 len mem[_1889] % 32]
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1889], mem[_1889 + 196 len floor32(mem[_1889]) + 32]
        else:
            _1559 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1559] = return_data.size
            mem[_1559 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Safe transfer failed'
            if not return_data.size:
                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
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
                if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                            _1766 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1766 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1766 + 36] = 0
                            mem[_1766 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_1766 + 100] = this.address
                            mem[_1766 + 132] = 128
                            mem[_1766 + 164] = mem[_1766]
                            t = 0
                            while t < mem[_1766]:
                                mem[_1766 + t + 196] = mem[_1766 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_1766] % 32:
                                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1766 + 164 len mem[_1766] + 32]
                            else:
                                mem[floor32(mem[_1766]) + _1766 + 196] = mem[floor32(mem[_1766]) + _1766 + -(mem[_1766] % 32) + 228 len mem[_1766] % 32]
                                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1766], mem[_1766 + 196 len floor32(mem[_1766]) + 32]
                        else:
                            _1767 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1767 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1767 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_1767 + 68] = 0
                            mem[_1767 + 100] = this.address
                            mem[_1767 + 132] = 128
                            mem[_1767 + 164] = mem[_1767]
                            t = 0
                            while t < mem[_1767]:
                                mem[_1767 + t + 196] = mem[_1767 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_1767] % 32:
                                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_1767 + 164 len mem[_1767] + 32]
                            else:
                                mem[floor32(mem[_1767]) + _1767 + 196] = mem[floor32(mem[_1767]) + _1767 + -(mem[_1767] % 32) + 228 len mem[_1767] % 32]
                                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_1767], mem[_1767 + 196 len floor32(mem[_1767]) + 32]
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
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                        _1812 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1812 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1812 + 36] = 0
                        mem[_1812 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_1812 + 100] = this.address
                        mem[_1812 + 132] = 128
                        mem[_1812 + 164] = mem[_1812]
                        t = 0
                        while t < mem[_1812]:
                            mem[_1812 + t + 196] = mem[_1812 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1812] % 32:
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1812 + 164 len mem[_1812] + 32]
                        else:
                            mem[floor32(mem[_1812]) + _1812 + 196] = mem[floor32(mem[_1812]) + _1812 + -(mem[_1812] % 32) + 228 len mem[_1812] % 32]
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1812], mem[_1812 + 196 len floor32(mem[_1812]) + 32]
                    else:
                        _1813 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1813 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1813 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_1813 + 68] = 0
                        mem[_1813 + 100] = this.address
                        mem[_1813 + 132] = 128
                        mem[_1813 + 164] = mem[_1813]
                        t = 0
                        while t < mem[_1813]:
                            mem[_1813 + t + 196] = mem[_1813 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1813] % 32:
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_1813 + 164 len mem[_1813] + 32]
                        else:
                            mem[floor32(mem[_1813]) + _1813 + 196] = mem[floor32(mem[_1813]) + _1813 + -(mem[_1813] % 32) + 228 len mem[_1813] % 32]
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_1813], mem[_1813 + 196 len floor32(mem[_1813]) + 32]
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
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                        _1769 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1769 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1769 + 36] = 0
                        mem[_1769 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_1769 + 100] = this.address
                        mem[_1769 + 132] = 128
                        mem[_1769 + 164] = mem[_1769]
                        t = 0
                        while t < mem[_1769]:
                            mem[_1769 + t + 196] = mem[_1769 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1769] % 32:
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_1769 + 164 len mem[_1769] + 32]
                        else:
                            mem[floor32(mem[_1769]) + _1769 + 196] = mem[floor32(mem[_1769]) + _1769 + -(mem[_1769] % 32) + 228 len mem[_1769] % 32]
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_1769], mem[_1769 + 196 len floor32(mem[_1769]) + 32]
                    else:
                        _1770 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1770 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1770 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_1770 + 68] = 0
                        mem[_1770 + 100] = this.address
                        mem[_1770 + 132] = 128
                        mem[_1770 + 164] = mem[_1770]
                        t = 0
                        while t < mem[_1770]:
                            mem[_1770 + t + 196] = mem[_1770 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1770] % 32:
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1770 + 164 len mem[_1770] + 32]
                        else:
                            mem[floor32(mem[_1770]) + _1770 + 196] = mem[floor32(mem[_1770]) + _1770 + -(mem[_1770] % 32) + 228 len mem[_1770] % 32]
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1770], mem[_1770 + 196 len floor32(mem[_1770]) + 32]
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
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                    _1814 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1814 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1814 + 36] = 0
                    mem[_1814 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_1814 + 100] = this.address
                    mem[_1814 + 132] = 128
                    mem[_1814 + 164] = mem[_1814]
                    t = 0
                    while t < mem[_1814]:
                        mem[_1814 + t + 196] = mem[_1814 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_1814] % 32:
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_1814 + 164 len mem[_1814] + 32]
                    else:
                        mem[floor32(mem[_1814]) + _1814 + 196] = mem[floor32(mem[_1814]) + _1814 + -(mem[_1814] % 32) + 228 len mem[_1814] % 32]
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_1814], mem[_1814 + 196 len floor32(mem[_1814]) + 32]
                else:
                    _1815 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1815 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1815 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_1815 + 68] = 0
                    mem[_1815 + 100] = this.address
                    mem[_1815 + 132] = 128
                    mem[_1815 + 164] = mem[_1815]
                    t = 0
                    while t < mem[_1815]:
                        mem[_1815 + t + 196] = mem[_1815 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_1815] % 32:
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1815 + 164 len mem[_1815] + 32]
                    else:
                        mem[floor32(mem[_1815]) + _1815 + 196] = mem[floor32(mem[_1815]) + _1815 + -(mem[_1815] % 32) + 228 len mem[_1815] % 32]
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1815], mem[_1815 + 196 len floor32(mem[_1815]) + 32]
            else:
                require return_data.size >= 32
                if not mem[_1559 + 32]:
                    revert with 0, 'Safe transfer failed'
                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
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
                if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                            _1816 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1816 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1816 + 36] = 0
                            mem[_1816 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_1816 + 100] = this.address
                            mem[_1816 + 132] = 128
                            mem[_1816 + 164] = mem[_1816]
                            t = 0
                            while t < mem[_1816]:
                                mem[_1816 + t + 196] = mem[_1816 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_1816] % 32:
                                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1816 + 164 len mem[_1816] + 32]
                            else:
                                mem[floor32(mem[_1816]) + _1816 + 196] = mem[floor32(mem[_1816]) + _1816 + -(mem[_1816] % 32) + 228 len mem[_1816] % 32]
                                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1816], mem[_1816 + 196 len floor32(mem[_1816]) + 32]
                        else:
                            _1817 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1817 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1817 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_1817 + 68] = 0
                            mem[_1817 + 100] = this.address
                            mem[_1817 + 132] = 128
                            mem[_1817 + 164] = mem[_1817]
                            t = 0
                            while t < mem[_1817]:
                                mem[_1817 + t + 196] = mem[_1817 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_1817] % 32:
                                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_1817 + 164 len mem[_1817] + 32]
                            else:
                                mem[floor32(mem[_1817]) + _1817 + 196] = mem[floor32(mem[_1817]) + _1817 + -(mem[_1817] % 32) + 228 len mem[_1817] % 32]
                                require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                                call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_1817], mem[_1817 + 196 len floor32(mem[_1817]) + 32]
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
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                        _1898 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1898 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1898 + 36] = 0
                        mem[_1898 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_1898 + 100] = this.address
                        mem[_1898 + 132] = 128
                        mem[_1898 + 164] = mem[_1898]
                        t = 0
                        while t < mem[_1898]:
                            mem[_1898 + t + 196] = mem[_1898 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1898] % 32:
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1898 + 164 len mem[_1898] + 32]
                        else:
                            mem[floor32(mem[_1898]) + _1898 + 196] = mem[floor32(mem[_1898]) + _1898 + -(mem[_1898] % 32) + 228 len mem[_1898] % 32]
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1898], mem[_1898 + 196 len floor32(mem[_1898]) + 32]
                    else:
                        _1899 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1899 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1899 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_1899 + 68] = 0
                        mem[_1899 + 100] = this.address
                        mem[_1899 + 132] = 128
                        mem[_1899 + 164] = mem[_1899]
                        t = 0
                        while t < mem[_1899]:
                            mem[_1899 + t + 196] = mem[_1899 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1899] % 32:
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_1899 + 164 len mem[_1899] + 32]
                        else:
                            mem[floor32(mem[_1899]) + _1899 + 196] = mem[floor32(mem[_1899]) + _1899 + -(mem[_1899] % 32) + 228 len mem[_1899] % 32]
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_1899], mem[_1899 + 196 len floor32(mem[_1899]) + 32]
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
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                        _1819 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1819 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1819 + 36] = 0
                        mem[_1819 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_1819 + 100] = this.address
                        mem[_1819 + 132] = 128
                        mem[_1819 + 164] = mem[_1819]
                        t = 0
                        while t < mem[_1819]:
                            mem[_1819 + t + 196] = mem[_1819 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1819] % 32:
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_1819 + 164 len mem[_1819] + 32]
                        else:
                            mem[floor32(mem[_1819]) + _1819 + 196] = mem[floor32(mem[_1819]) + _1819 + -(mem[_1819] % 32) + 228 len mem[_1819] % 32]
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_1819], mem[_1819 + 196 len floor32(mem[_1819]) + 32]
                    else:
                        _1820 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1820 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1820 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_1820 + 68] = 0
                        mem[_1820 + 100] = this.address
                        mem[_1820 + 132] = 128
                        mem[_1820 + 164] = mem[_1820]
                        t = 0
                        while t < mem[_1820]:
                            mem[_1820 + t + 196] = mem[_1820 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1820] % 32:
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1820 + 164 len mem[_1820] + 32]
                        else:
                            mem[floor32(mem[_1820]) + _1820 + 196] = mem[floor32(mem[_1820]) + _1820 + -(mem[_1820] % 32) + 228 len mem[_1820] % 32]
                            require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                            call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1820], mem[_1820 + 196 len floor32(mem[_1820]) + 32]
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
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == address(cd[((32 * uint16(idx)) + cd[36] + 36)]):
                    _1900 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1900 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1900 + 36] = 0
                    mem[_1900 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_1900 + 100] = this.address
                    mem[_1900 + 132] = 128
                    mem[_1900 + 164] = mem[_1900]
                    t = 0
                    while t < mem[_1900]:
                        mem[_1900 + t + 196] = mem[_1900 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_1900] % 32:
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_1900 + 164 len mem[_1900] + 32]
                    else:
                        mem[floor32(mem[_1900]) + _1900 + 196] = mem[floor32(mem[_1900]) + _1900 + -(mem[_1900] % 32) + 228 len mem[_1900] % 32]
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_1900], mem[_1900 + 196 len floor32(mem[_1900]) + 32]
                else:
                    _1901 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1901 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1901 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_1901 + 68] = 0
                    mem[_1901 + 100] = this.address
                    mem[_1901 + 132] = 128
                    mem[_1901 + 164] = mem[_1901]
                    t = 0
                    while t < mem[_1901]:
                        mem[_1901 + t + 196] = mem[_1901 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_1901] % 32:
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1901 + 164 len mem[_1901] + 32]
                    else:
                        mem[floor32(mem[_1901]) + _1901 + 196] = mem[floor32(mem[_1901]) + _1901 + -(mem[_1901] % 32) + 228 len mem[_1901] % 32]
                        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
                        call address(cd[((32 * uint16(idx)) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1901], mem[_1901 + 196 len floor32(mem[_1901]) + 32]
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
