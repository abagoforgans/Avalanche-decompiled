contract main {




// =====================  Runtime code  =====================


const name = 'AaveV2-v1'


function _fallback() payable {
    revert
}

function swapBorrowRateMode(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
    staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getLendingPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
    staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if arg2 == 1:
        if ext_call.return_data[64] > 0:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x94ba89a2 with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_call.return_data[32] > 0:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x94ba89a2 with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return 64, 128, 32, 'LogSwapRateMode(address,uint256)', 64, address(arg1), arg2
}

function enableCollateral(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length <= 0:
        revert with 0, '0-tokens-not-allowed'
    require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
    staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getLendingPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < arg1.length:
        require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
        staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + arg1 + 36)]), this.address
        mem[96 len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 288
        if ext_call.return_data[0] > 0:
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + arg1 + 36)]), this.address
            mem[96 len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            if not ext_call.return_data[256]:
                mem[96] = 0x5a3b74b900000000000000000000000000000000000000000000000000000000
                mem[100] = address(cd[((32 * idx) + arg1 + 36)])
                mem[132] = 1
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address rg1, bool rg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + arg1 + 36)]), 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    mem[192] = 32
    mem[224] = arg1.length
    mem[256 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 256] = 0
    mem[floor32(arg1.length) + 256] = 64
    mem[floor32(arg1.length) + 320] = 30
    mem[floor32(arg1.length) + 352] = Mask(240, 0, 'LogEnableCollateral(address[])')
    mem[floor32(arg1.length) + 288] = 128
    mem[floor32(arg1.length) + 384] = mem[160]
    mem[floor32(arg1.length) + 416 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
    if not mem[160] % 32:
        return 64, 128, 30, 65536 * 'LogEnableCollateral(address[])', mem[floor32(arg1.length) + 384 len mem[160] + 32]
    mem[floor32(mem[160]) + floor32(arg1.length) + 416] = mem[floor32(mem[160]) + floor32(arg1.length) + -(mem[160] % 32) + 448 len mem[160] % 32]
    return 64, 
           128,
           30,
           65536 * 'LogEnableCollateral(address[])',
           mem[160],
           mem[floor32(arg1.length) + 416 len floor32(mem[160]) + 32]
}

function borrow(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if not arg4:
        require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
        staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getLendingPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            call address(ext_call.return_data[0]).borrow(address rg1, uint256 rg2, uint256 rg3, uint16 rg4, address rg5) with:
                 gas gas_remaining wei
                args 0, 2247976647, arg2, arg3, 3228, address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg2
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if not ext_call.success:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            call address(ext_call.return_data[0]).borrow(address rg1, uint256 rg2, uint256 rg3, uint16 rg4, address rg5) with:
                 gas gas_remaining wei
                args 0, 0, arg2, arg3, 3228, address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg2
                require ext_code.size(arg1)
                if not ext_call.success:
                    call arg1.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if arg5:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg5, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               50,
               0x294c6f67426f72726f7728616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
               Mask(112, 32, arg3) >> 32,
               0,
               160,
               address(arg1),
               arg2,
               arg3,
               arg4,
               arg5
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
    staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getLendingPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        call address(ext_call.return_data[0]).borrow(address rg1, uint256 rg2, uint256 rg3, uint16 rg4, address rg5) with:
             gas gas_remaining wei
            args 0, 2247976647, ext_call.return_data[0], arg3, 3228, address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            if not ext_call.success:
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(ext_call.return_data[0]).borrow(address rg1, uint256 rg2, uint256 rg3, uint16 rg4, address rg5) with:
             gas gas_remaining wei
            args 0, 0, ext_call.return_data[0], arg3, 3228, address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            require ext_code.size(arg1)
            if not ext_call.success:
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call arg1.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if arg5:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg5, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           50,
           0x294c6f67426f72726f7728616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
           Mask(112, 32, arg3) >> 32,
           0,
           160,
           address(arg1),
           ext_call.return_data[0],
           arg3,
           arg4,
           arg5
}

function withdraw(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if not arg3:
        require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
        staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getLendingPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).withdraw(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if not ext_call.success:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).withdraw(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args address(arg1), arg2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), 0
                require ext_code.size(arg1)
                if not ext_call.success:
                    call arg1.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
        staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getLendingPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).withdraw(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if not ext_call.success:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).withdraw(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), 0
                require ext_code.size(arg1)
                if not ext_call.success:
                    call arg1.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    if arg4:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg4, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           44,
           0x294c6f67576974686472617728616464726573732c75696e743235362c75696e743235362c75696e74323536,
           Mask(96, 0, this.address) << 64,
           0,
           128,
           address(arg1),
           0,
           arg3,
           arg4
}

function deposit(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if not arg3:
        require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
        staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getLendingPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            if arg2 == -1:
                if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), eth.balance(this.address)
                if not ext_call.success:
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), eth.balance(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, address rg3, uint16 rg4) with:
                     gas gas_remaining wei
                    args 0, 2247976647, eth.balance(this.address), address(this.address), 3228
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 288
                if not ext_call.return_data[256]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address rg1, bool rg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg4:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg4, eth.balance(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       43,
                       0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536,
                       ext_call.return_data[75 len 21],
                       Mask(88, -256, ext_call.return_data[75 len 21]) << 424,
                       128,
                       address(arg1),
                       eth.balance(this.address),
                       arg3,
                       arg4
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                   value arg2 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg2
            if not ext_call.success:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, address rg3, uint16 rg4) with:
                 gas gas_remaining wei
                args 0, 2247976647, arg2, address(this.address), 3228
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            if not ext_call.return_data[256]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address rg1, bool rg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg4:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg4, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   43,
                   0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536,
                   ext_call.return_data[75 len 21],
                   Mask(88, -256, ext_call.return_data[75 len 21]) << 424,
                   128,
                   address(arg1),
                   arg2,
                   arg3,
                   arg4
        require ext_code.size(arg1)
        if arg2 != -1:
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg2
            if not ext_call.success:
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, address rg3, uint16 rg4) with:
                 gas gas_remaining wei
                args 0, 0, arg2, address(this.address), 3228
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            if not ext_call.return_data[256]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address rg1, bool rg2) with:
                     gas gas_remaining wei
                    args address(arg1), 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg4:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg4, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   43,
                   0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536,
                   ext_call.return_data[75 len 21],
                   Mask(88, -256, ext_call.return_data[75 len 21]) << 424,
                   128,
                   address(arg1),
                   arg2,
                   arg3,
                   arg4
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, address rg3, uint16 rg4) with:
             gas gas_remaining wei
            args 0, 0, ext_call.return_data[0], address(this.address), 3228
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
        staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 288
        if not ext_call.return_data[256]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address rg1, bool rg2) with:
                 gas gas_remaining wei
                args address(arg1), 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
        staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getLendingPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            if ext_call.return_data[0] == -1:
                if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), eth.balance(this.address)
                if not ext_call.success:
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), eth.balance(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, address rg3, uint16 rg4) with:
                     gas gas_remaining wei
                    args 0, 2247976647, eth.balance(this.address), address(this.address), 3228
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 288
                if not ext_call.return_data[256]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address rg1, bool rg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg4:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg4, eth.balance(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       43,
                       0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536,
                       ext_call.return_data[75 len 21],
                       Mask(88, -256, ext_call.return_data[75 len 21]) << 424,
                       128,
                       address(arg1),
                       eth.balance(this.address),
                       arg3,
                       arg4
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0]
            if not ext_call.success:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, address rg3, uint16 rg4) with:
                 gas gas_remaining wei
                args 0, 2247976647, ext_call.return_data[0], address(this.address), 3228
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            if not ext_call.return_data[256]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address rg1, bool rg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            if ext_call.return_data[0] == -1:
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0]
            if not ext_call.success:
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, address rg3, uint16 rg4) with:
                 gas gas_remaining wei
                args 0, 0, ext_call.return_data[0], address(this.address), 3228
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            if not ext_call.return_data[256]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address rg1, bool rg2) with:
                     gas gas_remaining wei
                    args address(arg1), 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    if arg4:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           43,
           0xfe4c6f674465706f73697428616464726573732c75696e743235362c75696e743235362c75696e74323536,
           ext_call.return_data[75 len 21],
           Mask(88, -256, ext_call.return_data[75 len 21]) << 424,
           128,
           address(arg1),
           ext_call.return_data[0],
           arg3,
           arg4
}

function payback(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if not arg4:
        require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
        staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getLendingPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if arg2 != -1:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                       value arg2 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2
                if not ext_call.success:
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).repay(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
                     gas gas_remaining wei
                    args 0, 2247976647, arg2, arg3, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       51,
                       0x294c6f675061796261636b28616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       Mask(104, 32, arg3) >> 32,
                       0,
                       160,
                       address(arg1),
                       arg2,
                       arg3,
                       arg4,
                       arg5
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            if arg3 == 1:
                if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                       value ext_call.return_data[32] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[32]
                if not ext_call.success:
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).repay(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
                     gas gas_remaining wei
                    args 0, 2247976647, ext_call.return_data[32], arg3, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       51,
                       0x294c6f675061796261636b28616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       Mask(104, 32, arg3) >> 32,
                       0,
                       160,
                       address(arg1),
                       ext_call.return_data[32],
                       arg3,
                       arg4,
                       arg5
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                   value ext_call.return_data[64] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[64]
            if not ext_call.success:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).repay(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
                 gas gas_remaining wei
                args 0, 2247976647, ext_call.return_data[64], arg3, this.address
        else:
            if arg2 != -1:
                require ext_code.size(arg1)
                if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    call arg1.0xd0e30db0 with:
                       value arg2 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2
                if not ext_call.success:
                    require ext_code.size(arg1)
                    call arg1.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).repay(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
                     gas gas_remaining wei
                    args 0, 0, arg2, arg3, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       51,
                       0x294c6f675061796261636b28616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       Mask(104, 32, arg3) >> 32,
                       0,
                       160,
                       address(arg1),
                       arg2,
                       arg3,
                       arg4,
                       arg5
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            require ext_code.size(arg1)
            if arg3 == 1:
                if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    call arg1.0xd0e30db0 with:
                       value ext_call.return_data[32] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[32]
                if not ext_call.success:
                    require ext_code.size(arg1)
                    call arg1.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).repay(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
                     gas gas_remaining wei
                    args 0, 0, ext_call.return_data[32], arg3, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       51,
                       0x294c6f675061796261636b28616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       Mask(104, 32, arg3) >> 32,
                       0,
                       160,
                       address(arg1),
                       ext_call.return_data[32],
                       arg3,
                       arg4,
                       arg5
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                call arg1.0xd0e30db0 with:
                   value ext_call.return_data[64] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[64]
            if not ext_call.success:
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).repay(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
                 gas gas_remaining wei
                args 0, 0, ext_call.return_data[64], arg3, this.address
    else:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
             gas gas_remaining wei
            args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
        staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getLendingPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if ext_call.return_data[0] != -1:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0]
                if not ext_call.success:
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).repay(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
                     gas gas_remaining wei
                    args 0, 2247976647, ext_call.return_data[0], arg3, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       51,
                       0x294c6f675061796261636b28616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       Mask(104, 32, arg3) >> 32,
                       0,
                       160,
                       address(arg1),
                       ext_call.return_data[0],
                       arg3,
                       arg4,
                       arg5
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            if arg3 == 1:
                if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                       value ext_call.return_data[32] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[32]
                if not ext_call.success:
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).repay(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
                     gas gas_remaining wei
                    args 0, 2247976647, ext_call.return_data[32], arg3, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       51,
                       0x294c6f675061796261636b28616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       Mask(104, 32, arg3) >> 32,
                       0,
                       160,
                       address(arg1),
                       ext_call.return_data[32],
                       arg3,
                       arg4,
                       arg5
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                   value ext_call.return_data[64] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[64]
            if not ext_call.success:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).repay(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
                 gas gas_remaining wei
                args 0, 2247976647, ext_call.return_data[64], arg3, this.address
        else:
            if ext_call.return_data[0] != -1:
                require ext_code.size(arg1)
                if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    call arg1.0xd0e30db0 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0]
                if not ext_call.success:
                    require ext_code.size(arg1)
                    call arg1.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).repay(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
                     gas gas_remaining wei
                    args 0, 0, ext_call.return_data[0], arg3, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       51,
                       0x294c6f675061796261636b28616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       Mask(104, 32, arg3) >> 32,
                       0,
                       160,
                       address(arg1),
                       ext_call.return_data[0],
                       arg3,
                       arg4,
                       arg5
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            require ext_code.size(arg1)
            if arg3 == 1:
                if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    call arg1.0xd0e30db0 with:
                       value ext_call.return_data[32] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[32]
                if not ext_call.success:
                    require ext_code.size(arg1)
                    call arg1.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).repay(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
                     gas gas_remaining wei
                    args 0, 0, ext_call.return_data[32], arg3, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       51,
                       0x294c6f675061796261636b28616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       Mask(104, 32, arg3) >> 32,
                       0,
                       160,
                       address(arg1),
                       ext_call.return_data[32],
                       arg3,
                       arg4,
                       arg5
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                call arg1.0xd0e30db0 with:
                   value ext_call.return_data[64] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[64]
            if not ext_call.success:
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).repay(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
                 gas gas_remaining wei
                args 0, 0, ext_call.return_data[64], arg3, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg5:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg5, ext_call.return_data[64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           51,
           0x294c6f675061796261636b28616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
           Mask(104, 32, arg3) >> 32,
           0,
           160,
           address(arg1),
           ext_call.return_data[64],
           arg3,
           arg4,
           arg5
}



}
