contract main {




// =====================  Runtime code  =====================


#
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;
uint256 stor1;
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
    call arg1.transfer(address rg1, uint256 rg2) with:
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
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
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
    require msg.sender == stor0
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
        if arg1 <= 0:
            revert with 0, 'Library: INSUFF_INPUT_AMNT'
        if address(cd[((32 * idx) + arg4 + 36)]) < address(cd[((32 * idx + 1) + arg4 + 36)]):
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'Library: INSUFF_LIQU'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'Library: INSUFF_LIQU'
            if 997 * arg1 / 997 != arg1:
                revert with 0, 'ds-math-mul-overflow'
            if not Mask(112, 0, ext_call.return_data[32]):
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
                require idx + 1 < arg4.length
                mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
            else:
                require Mask(112, 0, ext_call.return_data[32])
                if 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * arg1:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
                require idx + 1 < arg4.length
                mem[(32 * idx + 1) + 128] = 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
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
        if 997 * arg1 / 997 != arg1:
            revert with 0, 'ds-math-mul-overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
            require idx + 1 < arg4.length
            mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
        else:
            require Mask(112, 0, ext_call.return_data[0])
            if 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * arg1:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
            require idx + 1 < arg4.length
            mem[(32 * idx + 1) + 128] = 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
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
    stor1 = arg5
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
    require ext_code.size(stor3)
    staticcall stor3.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < arg4.length
    mem[(64 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    if ext_call.return_data[12 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
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
        call stor3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args mem[(64 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + 388 len mem[(32 * arg4.length) + 128] + (127 * arg4.length) + 160]
    else:
        mem[floor32(mem[(32 * arg4.length) + 128]) + (64 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + 548] = mem[floor32(mem[(32 * arg4.length) + 128]) + (64 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + -(mem[(32 * arg4.length) + 128] % 32) + 580 len mem[(32 * arg4.length) + 128] % 32]
        require ext_code.size(stor3)
        call stor3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args mem[(64 * arg4.length) + floor32(arg3.length) + floor32(arg4.length) + 388 len floor32(mem[(32 * arg4.length) + 128]) + (127 * arg4.length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
