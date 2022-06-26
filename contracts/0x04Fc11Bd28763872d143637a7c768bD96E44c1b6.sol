contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_575157e4(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg3.length <= test266151307()
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg3.length
    if not arg3.length:
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            _42 = mem[(32 * idx) + (32 * arg2.length) + 160]
            require idx < arg2.length
            _49 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + (64 * arg3.length) + 196] = arg1
            mem[(32 * arg2.length) + (64 * arg3.length) + 228] = address(_49)
            require ext_code.size(address(_42))
            staticcall address(_42).depositBalances(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), address(_49)
            mem[(32 * arg2.length) + (64 * arg3.length) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
            mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            _47 = mem[(32 * idx) + (32 * arg2.length) + 160]
            require idx < arg2.length
            _52 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + (64 * arg3.length) + 196] = arg1
            mem[(32 * arg2.length) + (64 * arg3.length) + 228] = address(_52)
            require ext_code.size(address(_47))
            staticcall address(_47).depositBalances(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), address(_52)
            mem[(32 * arg2.length) + (64 * arg3.length) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
            mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(32 * arg2.length) + (64 * arg3.length) + 192] = 32
    mem[(32 * arg2.length) + (64 * arg3.length) + 224] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
    mem[(32 * arg2.length) + (64 * arg3.length) + 256 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
    return 32, mem[(32 * arg2.length) + (64 * arg3.length) + 224 len (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 32], 
}

function sub_937a0be8(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require 5 * arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = 5 * arg2.length
    if not 5 * arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _81 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].claimable(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 5 * idx < 5 * arg2.length
            mem[(32 * 5 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].tokensPerInterval() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (5 * idx) + 1 < 5 * arg2.length
            mem[(32 * (5 * idx) + 1) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].averageStakedAmounts(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (5 * idx) + 2 < 5 * arg2.length
            mem[(32 * (5 * idx) + 2) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            mem[(32 * arg2.length) + (32 * 5 * arg2.length) + 164] = arg1
            require ext_code.size(address(_81))
            staticcall address(_81).cumulativeRewards(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(32 * arg2.length) + (32 * 5 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (5 * idx) + 3 < 5 * arg2.length
            mem[(32 * (5 * idx) + 3) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require idx < arg2.length
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x18160ddd with:
                    gas gas_remaining wei
            mem[(32 * arg2.length) + (32 * 5 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (5 * idx) + 4 < 5 * arg2.length
            mem[(32 * (5 * idx) + 4) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + 160 len 32 * 5 * arg2.length] = call.data[calldata.size len 32 * 5 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _87 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].claimable(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 5 * idx < 5 * arg2.length
            mem[(32 * 5 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].tokensPerInterval() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (5 * idx) + 1 < 5 * arg2.length
            mem[(32 * (5 * idx) + 1) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].averageStakedAmounts(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (5 * idx) + 2 < 5 * arg2.length
            mem[(32 * (5 * idx) + 2) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            mem[(32 * arg2.length) + (32 * 5 * arg2.length) + 164] = arg1
            require ext_code.size(address(_87))
            staticcall address(_87).cumulativeRewards(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(32 * arg2.length) + (32 * 5 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (5 * idx) + 3 < 5 * arg2.length
            mem[(32 * (5 * idx) + 3) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require idx < arg2.length
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x18160ddd with:
                    gas gas_remaining wei
            mem[(32 * arg2.length) + (32 * 5 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (5 * idx) + 4 < 5 * arg2.length
            mem[(32 * (5 * idx) + 4) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(32 * arg2.length) + (32 * 5 * arg2.length) + 224 len floor32(5 * arg2.length)] = mem[(32 * arg2.length) + 160 len floor32(5 * arg2.length)]
    return Array(len=5 * arg2.length, data=mem[(32 * arg2.length) + 160 len floor32(5 * arg2.length)], mem[(32 * arg2.length) + (32 * 5 * arg2.length) + floor32(5 * arg2.length) + 224 len (32 * 5 * arg2.length) - floor32(5 * arg2.length)]), 
}

function sub_e1fc2a38(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require 12 * arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = 12 * arg2.length
    if not 12 * arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _159 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x6bcb411a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].pairAmounts(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 12 * idx < 12 * arg2.length
            mem[(32 * 12 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            mem[(32 * arg2.length) + (32 * 12 * arg2.length) + 164] = arg1
            require ext_code.size(address(_159))
            staticcall address(_159).getVestedAmount(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(32 * arg2.length) + (32 * 12 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 1 < 12 * arg2.length
            mem[(32 * (12 * idx) + 1) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require idx < arg2.length
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 2 < 12 * arg2.length
            mem[(32 * (12 * idx) + 2) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_159))
            staticcall address(_159).claimedAmounts(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 3 < 12 * arg2.length
            mem[(32 * (12 * idx) + 3) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_159))
            staticcall address(_159).claimable(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 4 < 12 * arg2.length
            mem[(32 * (12 * idx) + 4) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_159))
            staticcall address(_159).getMaxVestableAmount(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 5 < 12 * arg2.length
            mem[(32 * (12 * idx) + 5) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_159))
            staticcall address(_159).getCombinedAverageStakedAmount(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 6 < 12 * arg2.length
            mem[(32 * (12 * idx) + 6) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).cumulativeRewards(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 7 < 12 * arg2.length
            mem[(32 * (12 * idx) + 7) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_159))
            staticcall address(_159).transferredCumulativeRewards(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 8 < 12 * arg2.length
            mem[(32 * (12 * idx) + 8) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_159))
            staticcall address(_159).bonusRewards(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 9 < 12 * arg2.length
            mem[(32 * (12 * idx) + 9) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).averageStakedAmounts(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 10 < 12 * arg2.length
            mem[(32 * (12 * idx) + 10) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            mem[(32 * arg2.length) + (32 * 12 * arg2.length) + 164] = arg1
            require ext_code.size(address(_159))
            staticcall address(_159).transferredAverageStakedAmounts(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(32 * arg2.length) + (32 * 12 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 11 < 12 * arg2.length
            mem[(32 * (12 * idx) + 11) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + 160 len 32 * 12 * arg2.length] = call.data[calldata.size len 32 * 12 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _165 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x6bcb411a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].pairAmounts(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 12 * idx < 12 * arg2.length
            mem[(32 * 12 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            mem[(32 * arg2.length) + (32 * 12 * arg2.length) + 164] = arg1
            require ext_code.size(address(_165))
            staticcall address(_165).getVestedAmount(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(32 * arg2.length) + (32 * 12 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 1 < 12 * arg2.length
            mem[(32 * (12 * idx) + 1) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require idx < arg2.length
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 2 < 12 * arg2.length
            mem[(32 * (12 * idx) + 2) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_165))
            staticcall address(_165).claimedAmounts(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 3 < 12 * arg2.length
            mem[(32 * (12 * idx) + 3) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_165))
            staticcall address(_165).claimable(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 4 < 12 * arg2.length
            mem[(32 * (12 * idx) + 4) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_165))
            staticcall address(_165).getMaxVestableAmount(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 5 < 12 * arg2.length
            mem[(32 * (12 * idx) + 5) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_165))
            staticcall address(_165).getCombinedAverageStakedAmount(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 6 < 12 * arg2.length
            mem[(32 * (12 * idx) + 6) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).cumulativeRewards(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 7 < 12 * arg2.length
            mem[(32 * (12 * idx) + 7) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_165))
            staticcall address(_165).transferredCumulativeRewards(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 8 < 12 * arg2.length
            mem[(32 * (12 * idx) + 8) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_165))
            staticcall address(_165).bonusRewards(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 9 < 12 * arg2.length
            mem[(32 * (12 * idx) + 9) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).averageStakedAmounts(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 10 < 12 * arg2.length
            mem[(32 * (12 * idx) + 10) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            mem[(32 * arg2.length) + (32 * 12 * arg2.length) + 164] = arg1
            require ext_code.size(address(_165))
            staticcall address(_165).transferredAverageStakedAmounts(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(32 * arg2.length) + (32 * 12 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 11 < 12 * arg2.length
            mem[(32 * (12 * idx) + 11) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(32 * arg2.length) + (32 * 12 * arg2.length) + 224 len floor32(12 * arg2.length)] = mem[(32 * arg2.length) + 160 len floor32(12 * arg2.length)]
    return Array(len=12 * arg2.length, data=mem[(32 * arg2.length) + 160 len floor32(12 * arg2.length)], mem[(32 * arg2.length) + (32 * 12 * arg2.length) + floor32(12 * arg2.length) + 224 len (32 * 12 * arg2.length) - floor32(12 * arg2.length)]), 
}



}
