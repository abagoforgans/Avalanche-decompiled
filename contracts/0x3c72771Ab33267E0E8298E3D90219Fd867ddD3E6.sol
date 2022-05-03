contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
uint256 stor2;
address stor3;

function _fallback() payable {
  stop
}

function getAll() {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getAllTokens(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function performTriangularTradeWithFlashswap(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require stor1[address(msg.sender)]
    require arg4.length <= test266151307()
    mem[96] = arg4.length
    if arg4.length:
        mem[128 len 32 * arg4.length] = call.data[calldata.size len 32 * arg4.length]
    require 0 < arg4.length
    mem[128] = arg1
    idx = 0
    s = 0
    while idx < arg4.length - 1:
        require idx < arg3.length
        require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
        staticcall address(cd[((32 * idx) + arg3 + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[(32 * arg4.length) + 128 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx + 1 < arg4.length
        require idx < arg4.length
        require idx < arg4.length
        if mem[(32 * idx) + 128] <= 0:
            revert with 0, 'Library: INSUFF_INPUT_AMNT'
        if address(cd[((32 * idx) + arg4 + 36)]) < address(cd[((32 * idx + 1) + arg4 + 36)]):
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'Library: INSUFF_LIQU'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'Library: INSUFF_LIQU'
            require idx < arg4.length
            if 997 * mem[(32 * idx) + 128] / 997 != mem[(32 * idx) + 128]:
                revert with 0, 'ds-math-mul-overflow'
            if not Mask(112, 0, ext_call.return_data[32]):
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
                require idx + 1 < arg4.length
                mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
            else:
                require Mask(112, 0, ext_call.return_data[32])
                if 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + 128]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
                require idx + 1 < arg4.length
                mem[(32 * idx + 1) + 128] = 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
            if idx:
                idx = idx + 1
                s = s
                continue 
            require 1 < arg4.length
            if not mem[160]:
                require 1 < arg4.length
                if Mask(112, 0, ext_call.return_data[32]) - mem[160] > Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-sub-underflow'
                if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[160]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[160]:
                    revert with 0, 'ds-math-mul-overflow'
                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[160])
                if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[160])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[160]):
                    revert with 0, 'ds-math-add-overflow'
                idx = idx + 1
                s = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[160])) + 1
                continue 
            require mem[160]
            if Mask(112, 0, ext_call.return_data[0]) * mem[160] / mem[160] != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[160] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[160]:
                revert with 0, 'ds-math-mul-overflow'
            require 1 < arg4.length
            if Mask(112, 0, ext_call.return_data[32]) - mem[160] > Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-sub-underflow'
            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[160]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[160]:
                revert with 0, 'ds-math-mul-overflow'
            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[160])
            if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[160] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[160])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[160] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[160]):
                revert with 0, 'ds-math-add-overflow'
            idx = idx + 1
            s = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[160] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[160])) + 1
            continue 
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'Library: INSUFF_LIQU'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'Library: INSUFF_LIQU'
        require idx < arg4.length
        if 997 * mem[(32 * idx) + 128] / 997 != mem[(32 * idx) + 128]:
            revert with 0, 'ds-math-mul-overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
            require idx + 1 < arg4.length
            mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
        else:
            require Mask(112, 0, ext_call.return_data[0])
            if 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + 128]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
            require idx + 1 < arg4.length
            mem[(32 * idx + 1) + 128] = 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
        if idx:
            idx = idx + 1
            s = s
            continue 
        require 1 < arg4.length
        if not mem[160]:
            require 1 < arg4.length
            if Mask(112, 0, ext_call.return_data[0]) - mem[160] > Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-sub-underflow'
            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[160]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[160]:
                revert with 0, 'ds-math-mul-overflow'
            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[160])
            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[160])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[160]):
                revert with 0, 'ds-math-add-overflow'
            idx = idx + 1
            s = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[160])) + 1
            continue 
        require mem[160]
        if Mask(112, 0, ext_call.return_data[32]) * mem[160] / mem[160] != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[160] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[160]:
            revert with 0, 'ds-math-mul-overflow'
        require 1 < arg4.length
        if Mask(112, 0, ext_call.return_data[0]) - mem[160] > Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'ds-math-sub-underflow'
        if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[160]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[160]:
            revert with 0, 'ds-math-mul-overflow'
        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[160])
        if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[160] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[160])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[160] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[160]):
            revert with 0, 'ds-math-add-overflow'
        idx = idx + 1
        s = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[160] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[160])) + 1
        continue 
    require arg4.length - 1 < arg4.length
    if mem[(32 * arg4.length - 1) + 128] <= arg1 + arg2:
        revert with 0, 'F1'
    stor2 = arg5
    require 0 < arg3.length
    stor3 = address(cd[(arg3 + 36)])
    mem[(32 * arg4.length) + 160] = s
    mem[(32 * arg4.length) + 192] = 128
    mem[(32 * arg4.length) + 288] = arg3.length
    mem[(32 * arg4.length) + 320 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + 320] = 0
    mem[(32 * arg4.length) + 224] = floor32(arg3.length) + 160
    mem[(32 * arg4.length) + floor32(arg3.length) + 320] = arg4.length
    mem[(32 * arg4.length) + floor32(arg3.length) + 352 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(64 * arg4.length) + floor32(arg3.length) + 352] = 0
    mem[(32 * arg4.length) + 256] = floor32(arg3.length) + floor32(arg4.length) + 192
    mem[(32 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + 352] = arg4.length
    mem[(32 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + 384 len floor32(arg4.length)] = mem[128 len floor32(arg4.length)]
    require 0 < arg4.length
    require ext_code.size(stor3)
    staticcall stor3.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < arg4.length
    mem[(64 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    if ext_call.return_data[12 len 20] != address(cd[(arg4 + 36)]):
        mem[(64 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + 388] = mem[160]
        mem[(64 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + 420] = 0
    else:
        mem[(64 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + 388] = 0
        mem[(64 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + 420] = mem[160]
    mem[(64 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + 452] = this.address
    mem[(64 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + 484] = 128
    mem[(64 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + 516] = mem[(32 * arg4.length) + 128]
    mem[(64 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + 548 len ceil32(mem[(32 * arg4.length) + 128])] = mem[(32 * arg4.length) + 160 len ceil32(mem[(32 * arg4.length) + 128])]
    if not mem[(32 * arg4.length) + 128] % 32:
        require ext_code.size(stor3)
        call stor3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[(64 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + 388 len mem[(32 * arg4.length) + 128] + (127 * arg4.length) + 160]
    else:
        mem[floor32(mem[(32 * arg4.length) + 128]) + (64 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + 548] = mem[floor32(mem[(32 * arg4.length) + 128]) + (64 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + -(mem[(32 * arg4.length) + 128] % 32) + 580 len mem[(32 * arg4.length) + 128] % 32]
        require ext_code.size(stor3)
        call stor3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[(64 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + 388 len floor32(mem[(32 * arg4.length) + 128]) + (127 * arg4.length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor3 != msg.sender:
        revert with 0, 'Unauthorized'
    if not arg2:
        require arg4.length >= 128
        require cd[(arg4 + 68)] <= 4294967296
        require cd[(arg4 + 68)] + 68 <= arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= 4294967296 and cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
        mem[96] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[128 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]]
        require cd[(arg4 + 100)] <= 4294967296
        require cd[(arg4 + 100)] + 68 <= arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= 4294967296 and cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]
        require cd[(arg4 + 132)] <= 4294967296
        require cd[(arg4 + 132)] + 68 <= arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
        require 0 < cd[(arg4 + cd[(arg4 + 100)] + 36)]
        require 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 196] = mem[172 len 20]
        if address(ext_call.return_data[0]) == mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
            if not arg2:
                mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[172 len 20], arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 1
                while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                    if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                        revert with 0, 'Library: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                        if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            revert with 0, 'Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                        _1125 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1270 = mem[(32 * idx) + 128]
                                _1334 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1334 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1334 + 36] = 0
                                mem[_1334 + 68] = _1125
                                mem[_1334 + 100] = this.address
                                mem[_1334 + 132] = 128
                                mem[_1334 + 164] = mem[_1334]
                                s = 0
                                while s < mem[_1334]:
                                    mem[_1334 + s + 196] = mem[_1334 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1334] % 32:
                                    require ext_code.size(address(_1270))
                                    call address(_1270).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1125, address(this.address), 128, mem[_1334 + 164 len mem[_1334] + 32]
                                else:
                                    mem[floor32(mem[_1334]) + _1334 + 196] = mem[floor32(mem[_1334]) + _1334 + -(mem[_1334] % 32) + 228 len mem[_1334] % 32]
                                    require ext_code.size(address(_1270))
                                    call address(_1270).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1125, address(this.address), 128, mem[_1334], mem[_1334 + 196 len floor32(mem[_1334]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1205 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1333 = mem[(32 * idx) + 128]
                                _1397 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1397 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1397 + 36] = 0
                                mem[_1397 + 68] = _1125
                                mem[_1397 + 100] = address(_1205)
                                mem[_1397 + 132] = 128
                                mem[_1397 + 164] = mem[_1397]
                                s = 0
                                while s < mem[_1397]:
                                    mem[_1397 + s + 196] = mem[_1397 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1397] % 32:
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1125, address(_1205), 128, mem[_1397 + 164 len mem[_1397] + 32]
                                else:
                                    mem[floor32(mem[_1397]) + _1397 + 196] = mem[floor32(mem[_1397]) + _1397 + -(mem[_1397] % 32) + 228 len mem[_1397] % 32]
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1125, address(_1205), 128, mem[_1397], mem[_1397 + 196 len floor32(mem[_1397]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1272 = mem[(32 * idx) + 128]
                                _1336 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1336 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1336 + 36] = _1125
                                mem[_1336 + 68] = 0
                                mem[_1336 + 100] = this.address
                                mem[_1336 + 132] = 128
                                mem[_1336 + 164] = mem[_1336]
                                s = 0
                                while s < mem[_1336]:
                                    mem[_1336 + s + 196] = mem[_1336 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1336] % 32:
                                    require ext_code.size(address(_1272))
                                    call address(_1272).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1125, 0, address(this.address), 128, mem[_1336 + 164 len mem[_1336] + 32]
                                else:
                                    mem[floor32(mem[_1336]) + _1336 + 196] = mem[floor32(mem[_1336]) + _1336 + -(mem[_1336] % 32) + 228 len mem[_1336] % 32]
                                    require ext_code.size(address(_1272))
                                    call address(_1272).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1125, 0, address(this.address), 128, mem[_1336], mem[_1336 + 196 len floor32(mem[_1336]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1207 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1335 = mem[(32 * idx) + 128]
                                _1401 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1401 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1401 + 36] = _1125
                                mem[_1401 + 68] = 0
                                mem[_1401 + 100] = address(_1207)
                                mem[_1401 + 132] = 128
                                mem[_1401 + 164] = mem[_1401]
                                s = 0
                                while s < mem[_1401]:
                                    mem[_1401 + s + 196] = mem[_1401 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1401] % 32:
                                    require ext_code.size(address(_1335))
                                    call address(_1335).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1125, 0, address(_1207), 128, mem[_1401 + 164 len mem[_1401] + 32]
                                else:
                                    mem[floor32(mem[_1401]) + _1401 + 196] = mem[floor32(mem[_1401]) + _1401 + -(mem[_1401] % 32) + 228 len mem[_1401] % 32]
                                    require ext_code.size(address(_1335))
                                    call address(_1335).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1125, 0, address(_1207), 128, mem[_1401], mem[_1401 + 196 len floor32(mem[_1401]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            revert with 0, 'Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                        _1126 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1274 = mem[(32 * idx) + 128]
                                _1338 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1338 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1338 + 36] = 0
                                mem[_1338 + 68] = _1126
                                mem[_1338 + 100] = this.address
                                mem[_1338 + 132] = 128
                                mem[_1338 + 164] = mem[_1338]
                                s = 0
                                while s < mem[_1338]:
                                    mem[_1338 + s + 196] = mem[_1338 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1338] % 32:
                                    require ext_code.size(address(_1274))
                                    call address(_1274).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1126, address(this.address), 128, mem[_1338 + 164 len mem[_1338] + 32]
                                else:
                                    mem[floor32(mem[_1338]) + _1338 + 196] = mem[floor32(mem[_1338]) + _1338 + -(mem[_1338] % 32) + 228 len mem[_1338] % 32]
                                    require ext_code.size(address(_1274))
                                    call address(_1274).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1126, address(this.address), 128, mem[_1338], mem[_1338 + 196 len floor32(mem[_1338]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1209 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1337 = mem[(32 * idx) + 128]
                                _1405 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1405 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1405 + 36] = 0
                                mem[_1405 + 68] = _1126
                                mem[_1405 + 100] = address(_1209)
                                mem[_1405 + 132] = 128
                                mem[_1405 + 164] = mem[_1405]
                                s = 0
                                while s < mem[_1405]:
                                    mem[_1405 + s + 196] = mem[_1405 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1405] % 32:
                                    require ext_code.size(address(_1337))
                                    call address(_1337).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1126, address(_1209), 128, mem[_1405 + 164 len mem[_1405] + 32]
                                else:
                                    mem[floor32(mem[_1405]) + _1405 + 196] = mem[floor32(mem[_1405]) + _1405 + -(mem[_1405] % 32) + 228 len mem[_1405] % 32]
                                    require ext_code.size(address(_1337))
                                    call address(_1337).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1126, address(_1209), 128, mem[_1405], mem[_1405 + 196 len floor32(mem[_1405]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1276 = mem[(32 * idx) + 128]
                                _1340 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1340 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1340 + 36] = _1126
                                mem[_1340 + 68] = 0
                                mem[_1340 + 100] = this.address
                                mem[_1340 + 132] = 128
                                mem[_1340 + 164] = mem[_1340]
                                s = 0
                                while s < mem[_1340]:
                                    mem[_1340 + s + 196] = mem[_1340 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1340] % 32:
                                    require ext_code.size(address(_1276))
                                    call address(_1276).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1126, 0, address(this.address), 128, mem[_1340 + 164 len mem[_1340] + 32]
                                else:
                                    mem[floor32(mem[_1340]) + _1340 + 196] = mem[floor32(mem[_1340]) + _1340 + -(mem[_1340] % 32) + 228 len mem[_1340] % 32]
                                    require ext_code.size(address(_1276))
                                    call address(_1276).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1126, 0, address(this.address), 128, mem[_1340], mem[_1340 + 196 len floor32(mem[_1340]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1211 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1339 = mem[(32 * idx) + 128]
                                _1409 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1409 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1409 + 36] = _1126
                                mem[_1409 + 68] = 0
                                mem[_1409 + 100] = address(_1211)
                                mem[_1409 + 132] = 128
                                mem[_1409 + 164] = mem[_1409]
                                s = 0
                                while s < mem[_1409]:
                                    mem[_1409 + s + 196] = mem[_1409 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1409] % 32:
                                    require ext_code.size(address(_1339))
                                    call address(_1339).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1126, 0, address(_1211), 128, mem[_1409 + 164 len mem[_1409] + 32]
                                else:
                                    mem[floor32(mem[_1409]) + _1409 + 196] = mem[floor32(mem[_1409]) + _1409 + -(mem[_1409] % 32) + 228 len mem[_1409] % 32]
                                    require ext_code.size(address(_1339))
                                    call address(_1339).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1126, 0, address(_1211), 128, mem[_1409], mem[_1409 + 196 len floor32(mem[_1409]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[172 len 20], arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 1
                while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                    if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                        revert with 0, 'Library: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                        if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            revert with 0, 'Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                        _1127 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1278 = mem[(32 * idx) + 128]
                                _1342 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1342 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1342 + 36] = 0
                                mem[_1342 + 68] = _1127
                                mem[_1342 + 100] = this.address
                                mem[_1342 + 132] = 128
                                mem[_1342 + 164] = mem[_1342]
                                s = 0
                                while s < mem[_1342]:
                                    mem[_1342 + s + 196] = mem[_1342 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1342] % 32:
                                    require ext_code.size(address(_1278))
                                    call address(_1278).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1127, address(this.address), 128, mem[_1342 + 164 len mem[_1342] + 32]
                                else:
                                    mem[floor32(mem[_1342]) + _1342 + 196] = mem[floor32(mem[_1342]) + _1342 + -(mem[_1342] % 32) + 228 len mem[_1342] % 32]
                                    require ext_code.size(address(_1278))
                                    call address(_1278).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1127, address(this.address), 128, mem[_1342], mem[_1342 + 196 len floor32(mem[_1342]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1213 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1341 = mem[(32 * idx) + 128]
                                _1413 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1413 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1413 + 36] = 0
                                mem[_1413 + 68] = _1127
                                mem[_1413 + 100] = address(_1213)
                                mem[_1413 + 132] = 128
                                mem[_1413 + 164] = mem[_1413]
                                s = 0
                                while s < mem[_1413]:
                                    mem[_1413 + s + 196] = mem[_1413 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1413] % 32:
                                    require ext_code.size(address(_1341))
                                    call address(_1341).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1127, address(_1213), 128, mem[_1413 + 164 len mem[_1413] + 32]
                                else:
                                    mem[floor32(mem[_1413]) + _1413 + 196] = mem[floor32(mem[_1413]) + _1413 + -(mem[_1413] % 32) + 228 len mem[_1413] % 32]
                                    require ext_code.size(address(_1341))
                                    call address(_1341).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1127, address(_1213), 128, mem[_1413], mem[_1413 + 196 len floor32(mem[_1413]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1280 = mem[(32 * idx) + 128]
                                _1344 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1344 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1344 + 36] = _1127
                                mem[_1344 + 68] = 0
                                mem[_1344 + 100] = this.address
                                mem[_1344 + 132] = 128
                                mem[_1344 + 164] = mem[_1344]
                                s = 0
                                while s < mem[_1344]:
                                    mem[_1344 + s + 196] = mem[_1344 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1344] % 32:
                                    require ext_code.size(address(_1280))
                                    call address(_1280).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1127, 0, address(this.address), 128, mem[_1344 + 164 len mem[_1344] + 32]
                                else:
                                    mem[floor32(mem[_1344]) + _1344 + 196] = mem[floor32(mem[_1344]) + _1344 + -(mem[_1344] % 32) + 228 len mem[_1344] % 32]
                                    require ext_code.size(address(_1280))
                                    call address(_1280).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1127, 0, address(this.address), 128, mem[_1344], mem[_1344 + 196 len floor32(mem[_1344]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1215 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1343 = mem[(32 * idx) + 128]
                                _1417 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1417 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1417 + 36] = _1127
                                mem[_1417 + 68] = 0
                                mem[_1417 + 100] = address(_1215)
                                mem[_1417 + 132] = 128
                                mem[_1417 + 164] = mem[_1417]
                                s = 0
                                while s < mem[_1417]:
                                    mem[_1417 + s + 196] = mem[_1417 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1417] % 32:
                                    require ext_code.size(address(_1343))
                                    call address(_1343).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1127, 0, address(_1215), 128, mem[_1417 + 164 len mem[_1417] + 32]
                                else:
                                    mem[floor32(mem[_1417]) + _1417 + 196] = mem[floor32(mem[_1417]) + _1417 + -(mem[_1417] % 32) + 228 len mem[_1417] % 32]
                                    require ext_code.size(address(_1343))
                                    call address(_1343).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1127, 0, address(_1215), 128, mem[_1417], mem[_1417 + 196 len floor32(mem[_1417]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            revert with 0, 'Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                        _1128 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1282 = mem[(32 * idx) + 128]
                                _1346 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1346 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1346 + 36] = 0
                                mem[_1346 + 68] = _1128
                                mem[_1346 + 100] = this.address
                                mem[_1346 + 132] = 128
                                mem[_1346 + 164] = mem[_1346]
                                s = 0
                                while s < mem[_1346]:
                                    mem[_1346 + s + 196] = mem[_1346 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1346] % 32:
                                    require ext_code.size(address(_1282))
                                    call address(_1282).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1128, address(this.address), 128, mem[_1346 + 164 len mem[_1346] + 32]
                                else:
                                    mem[floor32(mem[_1346]) + _1346 + 196] = mem[floor32(mem[_1346]) + _1346 + -(mem[_1346] % 32) + 228 len mem[_1346] % 32]
                                    require ext_code.size(address(_1282))
                                    call address(_1282).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1128, address(this.address), 128, mem[_1346], mem[_1346 + 196 len floor32(mem[_1346]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1217 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1345 = mem[(32 * idx) + 128]
                                _1421 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1421 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1421 + 36] = 0
                                mem[_1421 + 68] = _1128
                                mem[_1421 + 100] = address(_1217)
                                mem[_1421 + 132] = 128
                                mem[_1421 + 164] = mem[_1421]
                                s = 0
                                while s < mem[_1421]:
                                    mem[_1421 + s + 196] = mem[_1421 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1421] % 32:
                                    require ext_code.size(address(_1345))
                                    call address(_1345).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1128, address(_1217), 128, mem[_1421 + 164 len mem[_1421] + 32]
                                else:
                                    mem[floor32(mem[_1421]) + _1421 + 196] = mem[floor32(mem[_1421]) + _1421 + -(mem[_1421] % 32) + 228 len mem[_1421] % 32]
                                    require ext_code.size(address(_1345))
                                    call address(_1345).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1128, address(_1217), 128, mem[_1421], mem[_1421 + 196 len floor32(mem[_1421]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1284 = mem[(32 * idx) + 128]
                                _1348 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1348 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1348 + 36] = _1128
                                mem[_1348 + 68] = 0
                                mem[_1348 + 100] = this.address
                                mem[_1348 + 132] = 128
                                mem[_1348 + 164] = mem[_1348]
                                s = 0
                                while s < mem[_1348]:
                                    mem[_1348 + s + 196] = mem[_1348 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1348] % 32:
                                    require ext_code.size(address(_1284))
                                    call address(_1284).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1128, 0, address(this.address), 128, mem[_1348 + 164 len mem[_1348] + 32]
                                else:
                                    mem[floor32(mem[_1348]) + _1348 + 196] = mem[floor32(mem[_1348]) + _1348 + -(mem[_1348] % 32) + 228 len mem[_1348] % 32]
                                    require ext_code.size(address(_1284))
                                    call address(_1284).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1128, 0, address(this.address), 128, mem[_1348], mem[_1348 + 196 len floor32(mem[_1348]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1219 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1347 = mem[(32 * idx) + 128]
                                _1425 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1425 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1425 + 36] = _1128
                                mem[_1425 + 68] = 0
                                mem[_1425 + 100] = address(_1219)
                                mem[_1425 + 132] = 128
                                mem[_1425 + 164] = mem[_1425]
                                s = 0
                                while s < mem[_1425]:
                                    mem[_1425 + s + 196] = mem[_1425 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1425] % 32:
                                    require ext_code.size(address(_1347))
                                    call address(_1347).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1128, 0, address(_1219), 128, mem[_1425 + 164 len mem[_1425] + 32]
                                else:
                                    mem[floor32(mem[_1425]) + _1425 + 196] = mem[floor32(mem[_1425]) + _1425 + -(mem[_1425] % 32) + 228 len mem[_1425] % 32]
                                    require ext_code.size(address(_1347))
                                    call address(_1347).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1128, 0, address(_1219), 128, mem[_1425], mem[_1425 + 196 len floor32(mem[_1425]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            if not arg2:
                mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[172 len 20], arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 1
                while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                    if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                        revert with 0, 'Library: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                        if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            revert with 0, 'Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                        _1129 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1286 = mem[(32 * idx) + 128]
                                _1350 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1350 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1350 + 36] = 0
                                mem[_1350 + 68] = _1129
                                mem[_1350 + 100] = this.address
                                mem[_1350 + 132] = 128
                                mem[_1350 + 164] = mem[_1350]
                                s = 0
                                while s < mem[_1350]:
                                    mem[_1350 + s + 196] = mem[_1350 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1350] % 32:
                                    require ext_code.size(address(_1286))
                                    call address(_1286).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1129, address(this.address), 128, mem[_1350 + 164 len mem[_1350] + 32]
                                else:
                                    mem[floor32(mem[_1350]) + _1350 + 196] = mem[floor32(mem[_1350]) + _1350 + -(mem[_1350] % 32) + 228 len mem[_1350] % 32]
                                    require ext_code.size(address(_1286))
                                    call address(_1286).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1129, address(this.address), 128, mem[_1350], mem[_1350 + 196 len floor32(mem[_1350]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1221 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1349 = mem[(32 * idx) + 128]
                                _1429 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1429 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1429 + 36] = 0
                                mem[_1429 + 68] = _1129
                                mem[_1429 + 100] = address(_1221)
                                mem[_1429 + 132] = 128
                                mem[_1429 + 164] = mem[_1429]
                                s = 0
                                while s < mem[_1429]:
                                    mem[_1429 + s + 196] = mem[_1429 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1429] % 32:
                                    require ext_code.size(address(_1349))
                                    call address(_1349).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1129, address(_1221), 128, mem[_1429 + 164 len mem[_1429] + 32]
                                else:
                                    mem[floor32(mem[_1429]) + _1429 + 196] = mem[floor32(mem[_1429]) + _1429 + -(mem[_1429] % 32) + 228 len mem[_1429] % 32]
                                    require ext_code.size(address(_1349))
                                    call address(_1349).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1129, address(_1221), 128, mem[_1429], mem[_1429 + 196 len floor32(mem[_1429]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1288 = mem[(32 * idx) + 128]
                                _1352 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1352 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1352 + 36] = _1129
                                mem[_1352 + 68] = 0
                                mem[_1352 + 100] = this.address
                                mem[_1352 + 132] = 128
                                mem[_1352 + 164] = mem[_1352]
                                s = 0
                                while s < mem[_1352]:
                                    mem[_1352 + s + 196] = mem[_1352 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1352] % 32:
                                    require ext_code.size(address(_1288))
                                    call address(_1288).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1129, 0, address(this.address), 128, mem[_1352 + 164 len mem[_1352] + 32]
                                else:
                                    mem[floor32(mem[_1352]) + _1352 + 196] = mem[floor32(mem[_1352]) + _1352 + -(mem[_1352] % 32) + 228 len mem[_1352] % 32]
                                    require ext_code.size(address(_1288))
                                    call address(_1288).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1129, 0, address(this.address), 128, mem[_1352], mem[_1352 + 196 len floor32(mem[_1352]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1223 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1351 = mem[(32 * idx) + 128]
                                _1433 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1433 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1433 + 36] = _1129
                                mem[_1433 + 68] = 0
                                mem[_1433 + 100] = address(_1223)
                                mem[_1433 + 132] = 128
                                mem[_1433 + 164] = mem[_1433]
                                s = 0
                                while s < mem[_1433]:
                                    mem[_1433 + s + 196] = mem[_1433 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1433] % 32:
                                    require ext_code.size(address(_1351))
                                    call address(_1351).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1129, 0, address(_1223), 128, mem[_1433 + 164 len mem[_1433] + 32]
                                else:
                                    mem[floor32(mem[_1433]) + _1433 + 196] = mem[floor32(mem[_1433]) + _1433 + -(mem[_1433] % 32) + 228 len mem[_1433] % 32]
                                    require ext_code.size(address(_1351))
                                    call address(_1351).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1129, 0, address(_1223), 128, mem[_1433], mem[_1433 + 196 len floor32(mem[_1433]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            revert with 0, 'Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                        _1130 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1290 = mem[(32 * idx) + 128]
                                _1354 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1354 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1354 + 36] = 0
                                mem[_1354 + 68] = _1130
                                mem[_1354 + 100] = this.address
                                mem[_1354 + 132] = 128
                                mem[_1354 + 164] = mem[_1354]
                                s = 0
                                while s < mem[_1354]:
                                    mem[_1354 + s + 196] = mem[_1354 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1354] % 32:
                                    require ext_code.size(address(_1290))
                                    call address(_1290).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1130, address(this.address), 128, mem[_1354 + 164 len mem[_1354] + 32]
                                else:
                                    mem[floor32(mem[_1354]) + _1354 + 196] = mem[floor32(mem[_1354]) + _1354 + -(mem[_1354] % 32) + 228 len mem[_1354] % 32]
                                    require ext_code.size(address(_1290))
                                    call address(_1290).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1130, address(this.address), 128, mem[_1354], mem[_1354 + 196 len floor32(mem[_1354]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1225 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1353 = mem[(32 * idx) + 128]
                                _1437 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1437 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1437 + 36] = 0
                                mem[_1437 + 68] = _1130
                                mem[_1437 + 100] = address(_1225)
                                mem[_1437 + 132] = 128
                                mem[_1437 + 164] = mem[_1437]
                                s = 0
                                while s < mem[_1437]:
                                    mem[_1437 + s + 196] = mem[_1437 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1437] % 32:
                                    require ext_code.size(address(_1353))
                                    call address(_1353).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1130, address(_1225), 128, mem[_1437 + 164 len mem[_1437] + 32]
                                else:
                                    mem[floor32(mem[_1437]) + _1437 + 196] = mem[floor32(mem[_1437]) + _1437 + -(mem[_1437] % 32) + 228 len mem[_1437] % 32]
                                    require ext_code.size(address(_1353))
                                    call address(_1353).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1130, address(_1225), 128, mem[_1437], mem[_1437 + 196 len floor32(mem[_1437]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1292 = mem[(32 * idx) + 128]
                                _1356 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1356 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1356 + 36] = _1130
                                mem[_1356 + 68] = 0
                                mem[_1356 + 100] = this.address
                                mem[_1356 + 132] = 128
                                mem[_1356 + 164] = mem[_1356]
                                s = 0
                                while s < mem[_1356]:
                                    mem[_1356 + s + 196] = mem[_1356 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1356] % 32:
                                    require ext_code.size(address(_1292))
                                    call address(_1292).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1130, 0, address(this.address), 128, mem[_1356 + 164 len mem[_1356] + 32]
                                else:
                                    mem[floor32(mem[_1356]) + _1356 + 196] = mem[floor32(mem[_1356]) + _1356 + -(mem[_1356] % 32) + 228 len mem[_1356] % 32]
                                    require ext_code.size(address(_1292))
                                    call address(_1292).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1130, 0, address(this.address), 128, mem[_1356], mem[_1356 + 196 len floor32(mem[_1356]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1227 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1355 = mem[(32 * idx) + 128]
                                _1441 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1441 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1441 + 36] = _1130
                                mem[_1441 + 68] = 0
                                mem[_1441 + 100] = address(_1227)
                                mem[_1441 + 132] = 128
                                mem[_1441 + 164] = mem[_1441]
                                s = 0
                                while s < mem[_1441]:
                                    mem[_1441 + s + 196] = mem[_1441 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1441] % 32:
                                    require ext_code.size(address(_1355))
                                    call address(_1355).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1130, 0, address(_1227), 128, mem[_1441 + 164 len mem[_1441] + 32]
                                else:
                                    mem[floor32(mem[_1441]) + _1441 + 196] = mem[floor32(mem[_1441]) + _1441 + -(mem[_1441] % 32) + 228 len mem[_1441] % 32]
                                    require ext_code.size(address(_1355))
                                    call address(_1355).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1130, 0, address(_1227), 128, mem[_1441], mem[_1441 + 196 len floor32(mem[_1441]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[172 len 20], arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 1
                while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                    if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                        revert with 0, 'Library: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                        if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            revert with 0, 'Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                        _1131 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1294 = mem[(32 * idx) + 128]
                                _1358 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1358 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1358 + 36] = 0
                                mem[_1358 + 68] = _1131
                                mem[_1358 + 100] = this.address
                                mem[_1358 + 132] = 128
                                mem[_1358 + 164] = mem[_1358]
                                s = 0
                                while s < mem[_1358]:
                                    mem[_1358 + s + 196] = mem[_1358 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1358] % 32:
                                    require ext_code.size(address(_1294))
                                    call address(_1294).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1131, address(this.address), 128, mem[_1358 + 164 len mem[_1358] + 32]
                                else:
                                    mem[floor32(mem[_1358]) + _1358 + 196] = mem[floor32(mem[_1358]) + _1358 + -(mem[_1358] % 32) + 228 len mem[_1358] % 32]
                                    require ext_code.size(address(_1294))
                                    call address(_1294).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1131, address(this.address), 128, mem[_1358], mem[_1358 + 196 len floor32(mem[_1358]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1229 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1357 = mem[(32 * idx) + 128]
                                _1445 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1445 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1445 + 36] = 0
                                mem[_1445 + 68] = _1131
                                mem[_1445 + 100] = address(_1229)
                                mem[_1445 + 132] = 128
                                mem[_1445 + 164] = mem[_1445]
                                s = 0
                                while s < mem[_1445]:
                                    mem[_1445 + s + 196] = mem[_1445 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1445] % 32:
                                    require ext_code.size(address(_1357))
                                    call address(_1357).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1131, address(_1229), 128, mem[_1445 + 164 len mem[_1445] + 32]
                                else:
                                    mem[floor32(mem[_1445]) + _1445 + 196] = mem[floor32(mem[_1445]) + _1445 + -(mem[_1445] % 32) + 228 len mem[_1445] % 32]
                                    require ext_code.size(address(_1357))
                                    call address(_1357).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1131, address(_1229), 128, mem[_1445], mem[_1445 + 196 len floor32(mem[_1445]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1296 = mem[(32 * idx) + 128]
                                _1360 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1360 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1360 + 36] = _1131
                                mem[_1360 + 68] = 0
                                mem[_1360 + 100] = this.address
                                mem[_1360 + 132] = 128
                                mem[_1360 + 164] = mem[_1360]
                                s = 0
                                while s < mem[_1360]:
                                    mem[_1360 + s + 196] = mem[_1360 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1360] % 32:
                                    require ext_code.size(address(_1296))
                                    call address(_1296).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1131, 0, address(this.address), 128, mem[_1360 + 164 len mem[_1360] + 32]
                                else:
                                    mem[floor32(mem[_1360]) + _1360 + 196] = mem[floor32(mem[_1360]) + _1360 + -(mem[_1360] % 32) + 228 len mem[_1360] % 32]
                                    require ext_code.size(address(_1296))
                                    call address(_1296).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1131, 0, address(this.address), 128, mem[_1360], mem[_1360 + 196 len floor32(mem[_1360]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1231 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1359 = mem[(32 * idx) + 128]
                                _1449 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1449 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1449 + 36] = _1131
                                mem[_1449 + 68] = 0
                                mem[_1449 + 100] = address(_1231)
                                mem[_1449 + 132] = 128
                                mem[_1449 + 164] = mem[_1449]
                                s = 0
                                while s < mem[_1449]:
                                    mem[_1449 + s + 196] = mem[_1449 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1449] % 32:
                                    require ext_code.size(address(_1359))
                                    call address(_1359).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1131, 0, address(_1231), 128, mem[_1449 + 164 len mem[_1449] + 32]
                                else:
                                    mem[floor32(mem[_1449]) + _1449 + 196] = mem[floor32(mem[_1449]) + _1449 + -(mem[_1449] % 32) + 228 len mem[_1449] % 32]
                                    require ext_code.size(address(_1359))
                                    call address(_1359).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1131, 0, address(_1231), 128, mem[_1449], mem[_1449 + 196 len floor32(mem[_1449]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            revert with 0, 'Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                        _1132 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1298 = mem[(32 * idx) + 128]
                                _1362 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1362 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1362 + 36] = 0
                                mem[_1362 + 68] = _1132
                                mem[_1362 + 100] = this.address
                                mem[_1362 + 132] = 128
                                mem[_1362 + 164] = mem[_1362]
                                s = 0
                                while s < mem[_1362]:
                                    mem[_1362 + s + 196] = mem[_1362 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1362] % 32:
                                    require ext_code.size(address(_1298))
                                    call address(_1298).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1132, address(this.address), 128, mem[_1362 + 164 len mem[_1362] + 32]
                                else:
                                    mem[floor32(mem[_1362]) + _1362 + 196] = mem[floor32(mem[_1362]) + _1362 + -(mem[_1362] % 32) + 228 len mem[_1362] % 32]
                                    require ext_code.size(address(_1298))
                                    call address(_1298).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1132, address(this.address), 128, mem[_1362], mem[_1362 + 196 len floor32(mem[_1362]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1233 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1361 = mem[(32 * idx) + 128]
                                _1453 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1453 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1453 + 36] = 0
                                mem[_1453 + 68] = _1132
                                mem[_1453 + 100] = address(_1233)
                                mem[_1453 + 132] = 128
                                mem[_1453 + 164] = mem[_1453]
                                s = 0
                                while s < mem[_1453]:
                                    mem[_1453 + s + 196] = mem[_1453 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1453] % 32:
                                    require ext_code.size(address(_1361))
                                    call address(_1361).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1132, address(_1233), 128, mem[_1453 + 164 len mem[_1453] + 32]
                                else:
                                    mem[floor32(mem[_1453]) + _1453 + 196] = mem[floor32(mem[_1453]) + _1453 + -(mem[_1453] % 32) + 228 len mem[_1453] % 32]
                                    require ext_code.size(address(_1361))
                                    call address(_1361).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1132, address(_1233), 128, mem[_1453], mem[_1453 + 196 len floor32(mem[_1453]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1300 = mem[(32 * idx) + 128]
                                _1364 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1364 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1364 + 36] = _1132
                                mem[_1364 + 68] = 0
                                mem[_1364 + 100] = this.address
                                mem[_1364 + 132] = 128
                                mem[_1364 + 164] = mem[_1364]
                                s = 0
                                while s < mem[_1364]:
                                    mem[_1364 + s + 196] = mem[_1364 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1364] % 32:
                                    require ext_code.size(address(_1300))
                                    call address(_1300).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1132, 0, address(this.address), 128, mem[_1364 + 164 len mem[_1364] + 32]
                                else:
                                    mem[floor32(mem[_1364]) + _1364 + 196] = mem[floor32(mem[_1364]) + _1364 + -(mem[_1364] % 32) + 228 len mem[_1364] % 32]
                                    require ext_code.size(address(_1300))
                                    call address(_1300).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1132, 0, address(this.address), 128, mem[_1364], mem[_1364 + 196 len floor32(mem[_1364]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1235 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1363 = mem[(32 * idx) + 128]
                                _1457 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1457 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1457 + 36] = _1132
                                mem[_1457 + 68] = 0
                                mem[_1457 + 100] = address(_1235)
                                mem[_1457 + 132] = 128
                                mem[_1457 + 164] = mem[_1457]
                                s = 0
                                while s < mem[_1457]:
                                    mem[_1457 + s + 196] = mem[_1457 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1457] % 32:
                                    require ext_code.size(address(_1363))
                                    call address(_1363).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1132, 0, address(_1235), 128, mem[_1457 + 164 len mem[_1457] + 32]
                                else:
                                    mem[floor32(mem[_1457]) + _1457 + 196] = mem[floor32(mem[_1457]) + _1457 + -(mem[_1457] % 32) + 228 len mem[_1457] % 32]
                                    require ext_code.size(address(_1363))
                                    call address(_1363).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1132, 0, address(_1235), 128, mem[_1457], mem[_1457 + 196 len floor32(mem[_1457]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    else:
        require not arg3
        require arg4.length >= 128
        require cd[(arg4 + 68)] <= 4294967296
        require cd[(arg4 + 68)] + 68 <= arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= 4294967296 and cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
        mem[96] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[128 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]]
        require cd[(arg4 + 100)] <= 4294967296
        require cd[(arg4 + 100)] + 68 <= arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= 4294967296 and cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]
        require cd[(arg4 + 132)] <= 4294967296
        require cd[(arg4 + 132)] + 68 <= arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
        require 0 < cd[(arg4 + cd[(arg4 + 100)] + 36)]
        require 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 196] = mem[172 len 20]
        if address(ext_call.return_data[0]) == mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
            if not arg2:
                mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[172 len 20], arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 1
                while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                    if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                        revert with 0, 'Library: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                        if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            revert with 0, 'Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                        _1133 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1302 = mem[(32 * idx) + 128]
                                _1366 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1366 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1366 + 36] = 0
                                mem[_1366 + 68] = _1133
                                mem[_1366 + 100] = this.address
                                mem[_1366 + 132] = 128
                                mem[_1366 + 164] = mem[_1366]
                                s = 0
                                while s < mem[_1366]:
                                    mem[_1366 + s + 196] = mem[_1366 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1366] % 32:
                                    require ext_code.size(address(_1302))
                                    call address(_1302).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1133, address(this.address), 128, mem[_1366 + 164 len mem[_1366] + 32]
                                else:
                                    mem[floor32(mem[_1366]) + _1366 + 196] = mem[floor32(mem[_1366]) + _1366 + -(mem[_1366] % 32) + 228 len mem[_1366] % 32]
                                    require ext_code.size(address(_1302))
                                    call address(_1302).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1133, address(this.address), 128, mem[_1366], mem[_1366 + 196 len floor32(mem[_1366]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1237 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1365 = mem[(32 * idx) + 128]
                                _1461 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1461 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1461 + 36] = 0
                                mem[_1461 + 68] = _1133
                                mem[_1461 + 100] = address(_1237)
                                mem[_1461 + 132] = 128
                                mem[_1461 + 164] = mem[_1461]
                                s = 0
                                while s < mem[_1461]:
                                    mem[_1461 + s + 196] = mem[_1461 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1461] % 32:
                                    require ext_code.size(address(_1365))
                                    call address(_1365).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1133, address(_1237), 128, mem[_1461 + 164 len mem[_1461] + 32]
                                else:
                                    mem[floor32(mem[_1461]) + _1461 + 196] = mem[floor32(mem[_1461]) + _1461 + -(mem[_1461] % 32) + 228 len mem[_1461] % 32]
                                    require ext_code.size(address(_1365))
                                    call address(_1365).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1133, address(_1237), 128, mem[_1461], mem[_1461 + 196 len floor32(mem[_1461]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1304 = mem[(32 * idx) + 128]
                                _1368 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1368 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1368 + 36] = _1133
                                mem[_1368 + 68] = 0
                                mem[_1368 + 100] = this.address
                                mem[_1368 + 132] = 128
                                mem[_1368 + 164] = mem[_1368]
                                s = 0
                                while s < mem[_1368]:
                                    mem[_1368 + s + 196] = mem[_1368 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1368] % 32:
                                    require ext_code.size(address(_1304))
                                    call address(_1304).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1133, 0, address(this.address), 128, mem[_1368 + 164 len mem[_1368] + 32]
                                else:
                                    mem[floor32(mem[_1368]) + _1368 + 196] = mem[floor32(mem[_1368]) + _1368 + -(mem[_1368] % 32) + 228 len mem[_1368] % 32]
                                    require ext_code.size(address(_1304))
                                    call address(_1304).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1133, 0, address(this.address), 128, mem[_1368], mem[_1368 + 196 len floor32(mem[_1368]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1239 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1367 = mem[(32 * idx) + 128]
                                _1465 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1465 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1465 + 36] = _1133
                                mem[_1465 + 68] = 0
                                mem[_1465 + 100] = address(_1239)
                                mem[_1465 + 132] = 128
                                mem[_1465 + 164] = mem[_1465]
                                s = 0
                                while s < mem[_1465]:
                                    mem[_1465 + s + 196] = mem[_1465 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1465] % 32:
                                    require ext_code.size(address(_1367))
                                    call address(_1367).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1133, 0, address(_1239), 128, mem[_1465 + 164 len mem[_1465] + 32]
                                else:
                                    mem[floor32(mem[_1465]) + _1465 + 196] = mem[floor32(mem[_1465]) + _1465 + -(mem[_1465] % 32) + 228 len mem[_1465] % 32]
                                    require ext_code.size(address(_1367))
                                    call address(_1367).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1133, 0, address(_1239), 128, mem[_1465], mem[_1465 + 196 len floor32(mem[_1465]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            revert with 0, 'Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                        _1134 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1306 = mem[(32 * idx) + 128]
                                _1370 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1370 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1370 + 36] = 0
                                mem[_1370 + 68] = _1134
                                mem[_1370 + 100] = this.address
                                mem[_1370 + 132] = 128
                                mem[_1370 + 164] = mem[_1370]
                                s = 0
                                while s < mem[_1370]:
                                    mem[_1370 + s + 196] = mem[_1370 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1370] % 32:
                                    require ext_code.size(address(_1306))
                                    call address(_1306).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1134, address(this.address), 128, mem[_1370 + 164 len mem[_1370] + 32]
                                else:
                                    mem[floor32(mem[_1370]) + _1370 + 196] = mem[floor32(mem[_1370]) + _1370 + -(mem[_1370] % 32) + 228 len mem[_1370] % 32]
                                    require ext_code.size(address(_1306))
                                    call address(_1306).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1134, address(this.address), 128, mem[_1370], mem[_1370 + 196 len floor32(mem[_1370]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1241 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1369 = mem[(32 * idx) + 128]
                                _1469 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1469 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1469 + 36] = 0
                                mem[_1469 + 68] = _1134
                                mem[_1469 + 100] = address(_1241)
                                mem[_1469 + 132] = 128
                                mem[_1469 + 164] = mem[_1469]
                                s = 0
                                while s < mem[_1469]:
                                    mem[_1469 + s + 196] = mem[_1469 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1469] % 32:
                                    require ext_code.size(address(_1369))
                                    call address(_1369).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1134, address(_1241), 128, mem[_1469 + 164 len mem[_1469] + 32]
                                else:
                                    mem[floor32(mem[_1469]) + _1469 + 196] = mem[floor32(mem[_1469]) + _1469 + -(mem[_1469] % 32) + 228 len mem[_1469] % 32]
                                    require ext_code.size(address(_1369))
                                    call address(_1369).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1134, address(_1241), 128, mem[_1469], mem[_1469 + 196 len floor32(mem[_1469]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1308 = mem[(32 * idx) + 128]
                                _1372 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1372 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1372 + 36] = _1134
                                mem[_1372 + 68] = 0
                                mem[_1372 + 100] = this.address
                                mem[_1372 + 132] = 128
                                mem[_1372 + 164] = mem[_1372]
                                s = 0
                                while s < mem[_1372]:
                                    mem[_1372 + s + 196] = mem[_1372 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1372] % 32:
                                    require ext_code.size(address(_1308))
                                    call address(_1308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1134, 0, address(this.address), 128, mem[_1372 + 164 len mem[_1372] + 32]
                                else:
                                    mem[floor32(mem[_1372]) + _1372 + 196] = mem[floor32(mem[_1372]) + _1372 + -(mem[_1372] % 32) + 228 len mem[_1372] % 32]
                                    require ext_code.size(address(_1308))
                                    call address(_1308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1134, 0, address(this.address), 128, mem[_1372], mem[_1372 + 196 len floor32(mem[_1372]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1243 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1371 = mem[(32 * idx) + 128]
                                _1473 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1473 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1473 + 36] = _1134
                                mem[_1473 + 68] = 0
                                mem[_1473 + 100] = address(_1243)
                                mem[_1473 + 132] = 128
                                mem[_1473 + 164] = mem[_1473]
                                s = 0
                                while s < mem[_1473]:
                                    mem[_1473 + s + 196] = mem[_1473 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1473] % 32:
                                    require ext_code.size(address(_1371))
                                    call address(_1371).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1134, 0, address(_1243), 128, mem[_1473 + 164 len mem[_1473] + 32]
                                else:
                                    mem[floor32(mem[_1473]) + _1473 + 196] = mem[floor32(mem[_1473]) + _1473 + -(mem[_1473] % 32) + 228 len mem[_1473] % 32]
                                    require ext_code.size(address(_1371))
                                    call address(_1371).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1134, 0, address(_1243), 128, mem[_1473], mem[_1473 + 196 len floor32(mem[_1473]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[172 len 20], arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 1
                while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                    if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                        revert with 0, 'Library: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                        if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            revert with 0, 'Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                        _1135 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1310 = mem[(32 * idx) + 128]
                                _1374 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1374 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1374 + 36] = 0
                                mem[_1374 + 68] = _1135
                                mem[_1374 + 100] = this.address
                                mem[_1374 + 132] = 128
                                mem[_1374 + 164] = mem[_1374]
                                s = 0
                                while s < mem[_1374]:
                                    mem[_1374 + s + 196] = mem[_1374 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1374] % 32:
                                    require ext_code.size(address(_1310))
                                    call address(_1310).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1135, address(this.address), 128, mem[_1374 + 164 len mem[_1374] + 32]
                                else:
                                    mem[floor32(mem[_1374]) + _1374 + 196] = mem[floor32(mem[_1374]) + _1374 + -(mem[_1374] % 32) + 228 len mem[_1374] % 32]
                                    require ext_code.size(address(_1310))
                                    call address(_1310).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1135, address(this.address), 128, mem[_1374], mem[_1374 + 196 len floor32(mem[_1374]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1245 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1373 = mem[(32 * idx) + 128]
                                _1477 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1477 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1477 + 36] = 0
                                mem[_1477 + 68] = _1135
                                mem[_1477 + 100] = address(_1245)
                                mem[_1477 + 132] = 128
                                mem[_1477 + 164] = mem[_1477]
                                s = 0
                                while s < mem[_1477]:
                                    mem[_1477 + s + 196] = mem[_1477 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1477] % 32:
                                    require ext_code.size(address(_1373))
                                    call address(_1373).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1135, address(_1245), 128, mem[_1477 + 164 len mem[_1477] + 32]
                                else:
                                    mem[floor32(mem[_1477]) + _1477 + 196] = mem[floor32(mem[_1477]) + _1477 + -(mem[_1477] % 32) + 228 len mem[_1477] % 32]
                                    require ext_code.size(address(_1373))
                                    call address(_1373).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1135, address(_1245), 128, mem[_1477], mem[_1477 + 196 len floor32(mem[_1477]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1312 = mem[(32 * idx) + 128]
                                _1376 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1376 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1376 + 36] = _1135
                                mem[_1376 + 68] = 0
                                mem[_1376 + 100] = this.address
                                mem[_1376 + 132] = 128
                                mem[_1376 + 164] = mem[_1376]
                                s = 0
                                while s < mem[_1376]:
                                    mem[_1376 + s + 196] = mem[_1376 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1376] % 32:
                                    require ext_code.size(address(_1312))
                                    call address(_1312).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1135, 0, address(this.address), 128, mem[_1376 + 164 len mem[_1376] + 32]
                                else:
                                    mem[floor32(mem[_1376]) + _1376 + 196] = mem[floor32(mem[_1376]) + _1376 + -(mem[_1376] % 32) + 228 len mem[_1376] % 32]
                                    require ext_code.size(address(_1312))
                                    call address(_1312).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1135, 0, address(this.address), 128, mem[_1376], mem[_1376 + 196 len floor32(mem[_1376]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1247 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1375 = mem[(32 * idx) + 128]
                                _1481 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1481 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1481 + 36] = _1135
                                mem[_1481 + 68] = 0
                                mem[_1481 + 100] = address(_1247)
                                mem[_1481 + 132] = 128
                                mem[_1481 + 164] = mem[_1481]
                                s = 0
                                while s < mem[_1481]:
                                    mem[_1481 + s + 196] = mem[_1481 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1481] % 32:
                                    require ext_code.size(address(_1375))
                                    call address(_1375).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1135, 0, address(_1247), 128, mem[_1481 + 164 len mem[_1481] + 32]
                                else:
                                    mem[floor32(mem[_1481]) + _1481 + 196] = mem[floor32(mem[_1481]) + _1481 + -(mem[_1481] % 32) + 228 len mem[_1481] % 32]
                                    require ext_code.size(address(_1375))
                                    call address(_1375).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1135, 0, address(_1247), 128, mem[_1481], mem[_1481 + 196 len floor32(mem[_1481]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            revert with 0, 'Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                        _1136 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1314 = mem[(32 * idx) + 128]
                                _1378 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1378 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1378 + 36] = 0
                                mem[_1378 + 68] = _1136
                                mem[_1378 + 100] = this.address
                                mem[_1378 + 132] = 128
                                mem[_1378 + 164] = mem[_1378]
                                s = 0
                                while s < mem[_1378]:
                                    mem[_1378 + s + 196] = mem[_1378 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1378] % 32:
                                    require ext_code.size(address(_1314))
                                    call address(_1314).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1136, address(this.address), 128, mem[_1378 + 164 len mem[_1378] + 32]
                                else:
                                    mem[floor32(mem[_1378]) + _1378 + 196] = mem[floor32(mem[_1378]) + _1378 + -(mem[_1378] % 32) + 228 len mem[_1378] % 32]
                                    require ext_code.size(address(_1314))
                                    call address(_1314).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1136, address(this.address), 128, mem[_1378], mem[_1378 + 196 len floor32(mem[_1378]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1249 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1377 = mem[(32 * idx) + 128]
                                _1485 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1485 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1485 + 36] = 0
                                mem[_1485 + 68] = _1136
                                mem[_1485 + 100] = address(_1249)
                                mem[_1485 + 132] = 128
                                mem[_1485 + 164] = mem[_1485]
                                s = 0
                                while s < mem[_1485]:
                                    mem[_1485 + s + 196] = mem[_1485 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1485] % 32:
                                    require ext_code.size(address(_1377))
                                    call address(_1377).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1136, address(_1249), 128, mem[_1485 + 164 len mem[_1485] + 32]
                                else:
                                    mem[floor32(mem[_1485]) + _1485 + 196] = mem[floor32(mem[_1485]) + _1485 + -(mem[_1485] % 32) + 228 len mem[_1485] % 32]
                                    require ext_code.size(address(_1377))
                                    call address(_1377).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1136, address(_1249), 128, mem[_1485], mem[_1485 + 196 len floor32(mem[_1485]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1316 = mem[(32 * idx) + 128]
                                _1380 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1380 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1380 + 36] = _1136
                                mem[_1380 + 68] = 0
                                mem[_1380 + 100] = this.address
                                mem[_1380 + 132] = 128
                                mem[_1380 + 164] = mem[_1380]
                                s = 0
                                while s < mem[_1380]:
                                    mem[_1380 + s + 196] = mem[_1380 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1380] % 32:
                                    require ext_code.size(address(_1316))
                                    call address(_1316).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1136, 0, address(this.address), 128, mem[_1380 + 164 len mem[_1380] + 32]
                                else:
                                    mem[floor32(mem[_1380]) + _1380 + 196] = mem[floor32(mem[_1380]) + _1380 + -(mem[_1380] % 32) + 228 len mem[_1380] % 32]
                                    require ext_code.size(address(_1316))
                                    call address(_1316).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1136, 0, address(this.address), 128, mem[_1380], mem[_1380 + 196 len floor32(mem[_1380]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1251 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1379 = mem[(32 * idx) + 128]
                                _1489 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1489 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1489 + 36] = _1136
                                mem[_1489 + 68] = 0
                                mem[_1489 + 100] = address(_1251)
                                mem[_1489 + 132] = 128
                                mem[_1489 + 164] = mem[_1489]
                                s = 0
                                while s < mem[_1489]:
                                    mem[_1489 + s + 196] = mem[_1489 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1489] % 32:
                                    require ext_code.size(address(_1379))
                                    call address(_1379).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1136, 0, address(_1251), 128, mem[_1489 + 164 len mem[_1489] + 32]
                                else:
                                    mem[floor32(mem[_1489]) + _1489 + 196] = mem[floor32(mem[_1489]) + _1489 + -(mem[_1489] % 32) + 228 len mem[_1489] % 32]
                                    require ext_code.size(address(_1379))
                                    call address(_1379).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1136, 0, address(_1251), 128, mem[_1489], mem[_1489 + 196 len floor32(mem[_1489]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            if not arg2:
                mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[172 len 20], arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 1
                while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                    if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                        revert with 0, 'Library: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                        if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            revert with 0, 'Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                        _1137 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1318 = mem[(32 * idx) + 128]
                                _1382 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1382 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1382 + 36] = 0
                                mem[_1382 + 68] = _1137
                                mem[_1382 + 100] = this.address
                                mem[_1382 + 132] = 128
                                mem[_1382 + 164] = mem[_1382]
                                s = 0
                                while s < mem[_1382]:
                                    mem[_1382 + s + 196] = mem[_1382 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1382] % 32:
                                    require ext_code.size(address(_1318))
                                    call address(_1318).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1137, address(this.address), 128, mem[_1382 + 164 len mem[_1382] + 32]
                                else:
                                    mem[floor32(mem[_1382]) + _1382 + 196] = mem[floor32(mem[_1382]) + _1382 + -(mem[_1382] % 32) + 228 len mem[_1382] % 32]
                                    require ext_code.size(address(_1318))
                                    call address(_1318).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1137, address(this.address), 128, mem[_1382], mem[_1382 + 196 len floor32(mem[_1382]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1253 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1381 = mem[(32 * idx) + 128]
                                _1493 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1493 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1493 + 36] = 0
                                mem[_1493 + 68] = _1137
                                mem[_1493 + 100] = address(_1253)
                                mem[_1493 + 132] = 128
                                mem[_1493 + 164] = mem[_1493]
                                s = 0
                                while s < mem[_1493]:
                                    mem[_1493 + s + 196] = mem[_1493 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1493] % 32:
                                    require ext_code.size(address(_1381))
                                    call address(_1381).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1137, address(_1253), 128, mem[_1493 + 164 len mem[_1493] + 32]
                                else:
                                    mem[floor32(mem[_1493]) + _1493 + 196] = mem[floor32(mem[_1493]) + _1493 + -(mem[_1493] % 32) + 228 len mem[_1493] % 32]
                                    require ext_code.size(address(_1381))
                                    call address(_1381).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1137, address(_1253), 128, mem[_1493], mem[_1493 + 196 len floor32(mem[_1493]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1320 = mem[(32 * idx) + 128]
                                _1384 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1384 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1384 + 36] = _1137
                                mem[_1384 + 68] = 0
                                mem[_1384 + 100] = this.address
                                mem[_1384 + 132] = 128
                                mem[_1384 + 164] = mem[_1384]
                                s = 0
                                while s < mem[_1384]:
                                    mem[_1384 + s + 196] = mem[_1384 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1384] % 32:
                                    require ext_code.size(address(_1320))
                                    call address(_1320).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1137, 0, address(this.address), 128, mem[_1384 + 164 len mem[_1384] + 32]
                                else:
                                    mem[floor32(mem[_1384]) + _1384 + 196] = mem[floor32(mem[_1384]) + _1384 + -(mem[_1384] % 32) + 228 len mem[_1384] % 32]
                                    require ext_code.size(address(_1320))
                                    call address(_1320).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1137, 0, address(this.address), 128, mem[_1384], mem[_1384 + 196 len floor32(mem[_1384]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1255 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1383 = mem[(32 * idx) + 128]
                                _1497 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1497 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1497 + 36] = _1137
                                mem[_1497 + 68] = 0
                                mem[_1497 + 100] = address(_1255)
                                mem[_1497 + 132] = 128
                                mem[_1497 + 164] = mem[_1497]
                                s = 0
                                while s < mem[_1497]:
                                    mem[_1497 + s + 196] = mem[_1497 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1497] % 32:
                                    require ext_code.size(address(_1383))
                                    call address(_1383).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1137, 0, address(_1255), 128, mem[_1497 + 164 len mem[_1497] + 32]
                                else:
                                    mem[floor32(mem[_1497]) + _1497 + 196] = mem[floor32(mem[_1497]) + _1497 + -(mem[_1497] % 32) + 228 len mem[_1497] % 32]
                                    require ext_code.size(address(_1383))
                                    call address(_1383).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1137, 0, address(_1255), 128, mem[_1497], mem[_1497 + 196 len floor32(mem[_1497]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            revert with 0, 'Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                        _1138 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1322 = mem[(32 * idx) + 128]
                                _1386 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1386 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1386 + 36] = 0
                                mem[_1386 + 68] = _1138
                                mem[_1386 + 100] = this.address
                                mem[_1386 + 132] = 128
                                mem[_1386 + 164] = mem[_1386]
                                s = 0
                                while s < mem[_1386]:
                                    mem[_1386 + s + 196] = mem[_1386 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1386] % 32:
                                    require ext_code.size(address(_1322))
                                    call address(_1322).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1138, address(this.address), 128, mem[_1386 + 164 len mem[_1386] + 32]
                                else:
                                    mem[floor32(mem[_1386]) + _1386 + 196] = mem[floor32(mem[_1386]) + _1386 + -(mem[_1386] % 32) + 228 len mem[_1386] % 32]
                                    require ext_code.size(address(_1322))
                                    call address(_1322).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1138, address(this.address), 128, mem[_1386], mem[_1386 + 196 len floor32(mem[_1386]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1257 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1385 = mem[(32 * idx) + 128]
                                _1501 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1501 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1501 + 36] = 0
                                mem[_1501 + 68] = _1138
                                mem[_1501 + 100] = address(_1257)
                                mem[_1501 + 132] = 128
                                mem[_1501 + 164] = mem[_1501]
                                s = 0
                                while s < mem[_1501]:
                                    mem[_1501 + s + 196] = mem[_1501 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1501] % 32:
                                    require ext_code.size(address(_1385))
                                    call address(_1385).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1138, address(_1257), 128, mem[_1501 + 164 len mem[_1501] + 32]
                                else:
                                    mem[floor32(mem[_1501]) + _1501 + 196] = mem[floor32(mem[_1501]) + _1501 + -(mem[_1501] % 32) + 228 len mem[_1501] % 32]
                                    require ext_code.size(address(_1385))
                                    call address(_1385).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1138, address(_1257), 128, mem[_1501], mem[_1501 + 196 len floor32(mem[_1501]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1324 = mem[(32 * idx) + 128]
                                _1388 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1388 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1388 + 36] = _1138
                                mem[_1388 + 68] = 0
                                mem[_1388 + 100] = this.address
                                mem[_1388 + 132] = 128
                                mem[_1388 + 164] = mem[_1388]
                                s = 0
                                while s < mem[_1388]:
                                    mem[_1388 + s + 196] = mem[_1388 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1388] % 32:
                                    require ext_code.size(address(_1324))
                                    call address(_1324).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1138, 0, address(this.address), 128, mem[_1388 + 164 len mem[_1388] + 32]
                                else:
                                    mem[floor32(mem[_1388]) + _1388 + 196] = mem[floor32(mem[_1388]) + _1388 + -(mem[_1388] % 32) + 228 len mem[_1388] % 32]
                                    require ext_code.size(address(_1324))
                                    call address(_1324).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1138, 0, address(this.address), 128, mem[_1388], mem[_1388 + 196 len floor32(mem[_1388]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1259 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1387 = mem[(32 * idx) + 128]
                                _1505 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1505 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1505 + 36] = _1138
                                mem[_1505 + 68] = 0
                                mem[_1505 + 100] = address(_1259)
                                mem[_1505 + 132] = 128
                                mem[_1505 + 164] = mem[_1505]
                                s = 0
                                while s < mem[_1505]:
                                    mem[_1505 + s + 196] = mem[_1505 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1505] % 32:
                                    require ext_code.size(address(_1387))
                                    call address(_1387).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1138, 0, address(_1259), 128, mem[_1505 + 164 len mem[_1505] + 32]
                                else:
                                    mem[floor32(mem[_1505]) + _1505 + 196] = mem[floor32(mem[_1505]) + _1505 + -(mem[_1505] % 32) + 228 len mem[_1505] % 32]
                                    require ext_code.size(address(_1387))
                                    call address(_1387).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1138, 0, address(_1259), 128, mem[_1505], mem[_1505 + 196 len floor32(mem[_1505]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[172 len 20], arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 1
                while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                    if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                        revert with 0, 'Library: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                        if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            revert with 0, 'Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                        _1139 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1326 = mem[(32 * idx) + 128]
                                _1390 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1390 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1390 + 36] = 0
                                mem[_1390 + 68] = _1139
                                mem[_1390 + 100] = this.address
                                mem[_1390 + 132] = 128
                                mem[_1390 + 164] = mem[_1390]
                                s = 0
                                while s < mem[_1390]:
                                    mem[_1390 + s + 196] = mem[_1390 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1390] % 32:
                                    require ext_code.size(address(_1326))
                                    call address(_1326).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1139, address(this.address), 128, mem[_1390 + 164 len mem[_1390] + 32]
                                else:
                                    mem[floor32(mem[_1390]) + _1390 + 196] = mem[floor32(mem[_1390]) + _1390 + -(mem[_1390] % 32) + 228 len mem[_1390] % 32]
                                    require ext_code.size(address(_1326))
                                    call address(_1326).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1139, address(this.address), 128, mem[_1390], mem[_1390 + 196 len floor32(mem[_1390]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1261 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1389 = mem[(32 * idx) + 128]
                                _1509 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1509 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1509 + 36] = 0
                                mem[_1509 + 68] = _1139
                                mem[_1509 + 100] = address(_1261)
                                mem[_1509 + 132] = 128
                                mem[_1509 + 164] = mem[_1509]
                                s = 0
                                while s < mem[_1509]:
                                    mem[_1509 + s + 196] = mem[_1509 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1509] % 32:
                                    require ext_code.size(address(_1389))
                                    call address(_1389).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1139, address(_1261), 128, mem[_1509 + 164 len mem[_1509] + 32]
                                else:
                                    mem[floor32(mem[_1509]) + _1509 + 196] = mem[floor32(mem[_1509]) + _1509 + -(mem[_1509] % 32) + 228 len mem[_1509] % 32]
                                    require ext_code.size(address(_1389))
                                    call address(_1389).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1139, address(_1261), 128, mem[_1509], mem[_1509 + 196 len floor32(mem[_1509]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1328 = mem[(32 * idx) + 128]
                                _1392 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1392 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1392 + 36] = _1139
                                mem[_1392 + 68] = 0
                                mem[_1392 + 100] = this.address
                                mem[_1392 + 132] = 128
                                mem[_1392 + 164] = mem[_1392]
                                s = 0
                                while s < mem[_1392]:
                                    mem[_1392 + s + 196] = mem[_1392 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1392] % 32:
                                    require ext_code.size(address(_1328))
                                    call address(_1328).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1139, 0, address(this.address), 128, mem[_1392 + 164 len mem[_1392] + 32]
                                else:
                                    mem[floor32(mem[_1392]) + _1392 + 196] = mem[floor32(mem[_1392]) + _1392 + -(mem[_1392] % 32) + 228 len mem[_1392] % 32]
                                    require ext_code.size(address(_1328))
                                    call address(_1328).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1139, 0, address(this.address), 128, mem[_1392], mem[_1392 + 196 len floor32(mem[_1392]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1263 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1391 = mem[(32 * idx) + 128]
                                _1513 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1513 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1513 + 36] = _1139
                                mem[_1513 + 68] = 0
                                mem[_1513 + 100] = address(_1263)
                                mem[_1513 + 132] = 128
                                mem[_1513 + 164] = mem[_1513]
                                s = 0
                                while s < mem[_1513]:
                                    mem[_1513 + s + 196] = mem[_1513 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1513] % 32:
                                    require ext_code.size(address(_1391))
                                    call address(_1391).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1139, 0, address(_1263), 128, mem[_1513 + 164 len mem[_1513] + 32]
                                else:
                                    mem[floor32(mem[_1513]) + _1513 + 196] = mem[floor32(mem[_1513]) + _1513 + -(mem[_1513] % 32) + 228 len mem[_1513] % 32]
                                    require ext_code.size(address(_1391))
                                    call address(_1391).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1139, 0, address(_1263), 128, mem[_1513], mem[_1513 + 196 len floor32(mem[_1513]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            revert with 0, 'Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                        _1140 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1330 = mem[(32 * idx) + 128]
                                _1394 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1394 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1394 + 36] = 0
                                mem[_1394 + 68] = _1140
                                mem[_1394 + 100] = this.address
                                mem[_1394 + 132] = 128
                                mem[_1394 + 164] = mem[_1394]
                                s = 0
                                while s < mem[_1394]:
                                    mem[_1394 + s + 196] = mem[_1394 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1394] % 32:
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1140, address(this.address), 128, mem[_1394 + 164 len mem[_1394] + 32]
                                else:
                                    mem[floor32(mem[_1394]) + _1394 + 196] = mem[floor32(mem[_1394]) + _1394 + -(mem[_1394] % 32) + 228 len mem[_1394] % 32]
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1140, address(this.address), 128, mem[_1394], mem[_1394 + 196 len floor32(mem[_1394]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1265 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1393 = mem[(32 * idx) + 128]
                                _1517 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1517 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1517 + 36] = 0
                                mem[_1517 + 68] = _1140
                                mem[_1517 + 100] = address(_1265)
                                mem[_1517 + 132] = 128
                                mem[_1517 + 164] = mem[_1517]
                                s = 0
                                while s < mem[_1517]:
                                    mem[_1517 + s + 196] = mem[_1517 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1517] % 32:
                                    require ext_code.size(address(_1393))
                                    call address(_1393).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1140, address(_1265), 128, mem[_1517 + 164 len mem[_1517] + 32]
                                else:
                                    mem[floor32(mem[_1517]) + _1517 + 196] = mem[floor32(mem[_1517]) + _1517 + -(mem[_1517] % 32) + 228 len mem[_1517] % 32]
                                    require ext_code.size(address(_1393))
                                    call address(_1393).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1140, address(_1265), 128, mem[_1517], mem[_1517 + 196 len floor32(mem[_1517]) + 32]
                        else:
                            if idx >= mem[96] - 1:
                                require idx < mem[96]
                                _1332 = mem[(32 * idx) + 128]
                                _1396 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1396 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1396 + 36] = _1140
                                mem[_1396 + 68] = 0
                                mem[_1396 + 100] = this.address
                                mem[_1396 + 132] = 128
                                mem[_1396 + 164] = mem[_1396]
                                s = 0
                                while s < mem[_1396]:
                                    mem[_1396 + s + 196] = mem[_1396 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1396] % 32:
                                    require ext_code.size(address(_1332))
                                    call address(_1332).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1140, 0, address(this.address), 128, mem[_1396 + 164 len mem[_1396] + 32]
                                else:
                                    mem[floor32(mem[_1396]) + _1396 + 196] = mem[floor32(mem[_1396]) + _1396 + -(mem[_1396] % 32) + 228 len mem[_1396] % 32]
                                    require ext_code.size(address(_1332))
                                    call address(_1332).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1140, 0, address(this.address), 128, mem[_1396], mem[_1396 + 196 len floor32(mem[_1396]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1267 = mem[(32 * idx + 1) + 128]
                                require idx < mem[96]
                                _1395 = mem[(32 * idx) + 128]
                                _1521 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1521 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1521 + 36] = _1140
                                mem[_1521 + 68] = 0
                                mem[_1521 + 100] = address(_1267)
                                mem[_1521 + 132] = 128
                                mem[_1521 + 164] = mem[_1521]
                                s = 0
                                while s < mem[_1521]:
                                    mem[_1521 + s + 196] = mem[_1521 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1521] % 32:
                                    require ext_code.size(address(_1395))
                                    call address(_1395).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1140, 0, address(_1267), 128, mem[_1521 + 164 len mem[_1521] + 32]
                                else:
                                    mem[floor32(mem[_1521]) + _1521 + 196] = mem[floor32(mem[_1521]) + _1521 + -(mem[_1521] % 32) + 228 len mem[_1521] % 32]
                                    require ext_code.size(address(_1395))
                                    call address(_1395).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1140, 0, address(_1267), 128, mem[_1521], mem[_1521 + 196 len floor32(mem[_1521]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
    require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20])
    call mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20].0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, cd[(arg4 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
