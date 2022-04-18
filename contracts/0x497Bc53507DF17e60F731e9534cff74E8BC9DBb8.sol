contract main {




// =====================  Runtime code  =====================


const name = 'WAVAX-v1.0'


function _fallback() payable {
    revert
}

function withdraw(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        if arg1 != -1:
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg1
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
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg3:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg3, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   36,
                   0xfe4c6f6757697468647261772875696e743235362c75696e743235362c75696e74323536,
                   mem[164 len 28],
                   mem[220 len 4],
                   96,
                   arg1,
                   arg2,
                   arg3
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] == -1:
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg3, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           36,
           0xfe4c6f6757697468647261772875696e743235362c75696e743235362c75696e74323536,
           mem[164 len 28],
           mem[220 len 4],
           96,
           ext_call.return_data[0],
           arg2,
           arg3
}

function deposit(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        if arg1 == -1:
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not arg3:
                return 64, 
                       160,
                       35,
                       0x294c6f674465706f7369742875696e743235362c75696e743235362c75696e74323536,
                       mem[163 len 29],
                       mem[221 len 3],
                       96,
                       eth.balance(this.address),
                       arg2,
                       arg3
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg3, eth.balance(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   35,
                   0x294c6f674465706f7369742875696e743235362c75696e743235362c75696e74323536,
                   uint8(eth.balance(this.address)),
                   mem[164 len 28],
                   mem[221 len 3],
                   96,
                   eth.balance(this.address),
                   arg2,
                   arg3
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
           value arg1 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg3:
            return 64, 
                   160,
                   35,
                   0x294c6f674465706f7369742875696e743235362c75696e743235362c75696e74323536,
                   mem[163 len 29],
                   mem[221 len 3],
                   96,
                   arg1,
                   arg2,
                   arg3
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg3, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               35,
               0x294c6f674465706f7369742875696e743235362c75696e743235362c75696e74323536,
               uint8(arg1),
               mem[164 len 28],
               mem[221 len 3],
               96,
               arg1,
               arg2,
               arg3
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    if ext_call.return_data[0] == -1:
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg3:
            return 64, 
                   160,
                   35,
                   0x294c6f674465706f7369742875696e743235362c75696e743235362c75696e74323536,
                   mem[163 len 29],
                   mem[221 len 3],
                   96,
                   eth.balance(this.address),
                   arg2,
                   arg3
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg3, eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               35,
               0x294c6f674465706f7369742875696e743235362c75696e743235362c75696e74323536,
               uint8(eth.balance(this.address)),
               mem[164 len 28],
               mem[221 len 3],
               96,
               eth.balance(this.address),
               arg2,
               arg3
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg3:
        return 64, 
               160,
               35,
               0x294c6f674465706f7369742875696e743235362c75696e743235362c75696e74323536,
               mem[163 len 29],
               mem[221 len 3],
               96,
               ext_call.return_data[0],
               arg2,
               arg3
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           35,
           0x294c6f674465706f7369742875696e743235362c75696e743235362c75696e74323536,
           ext_call.return_data[31 len 1],
           mem[164 len 28],
           mem[221 len 3],
           96,
           ext_call.return_data[0],
           arg2,
           arg3
}



}
