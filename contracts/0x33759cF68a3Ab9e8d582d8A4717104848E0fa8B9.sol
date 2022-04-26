contract main {




// =====================  Runtime code  =====================


#
#  - deposit(string arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#
array of uint256 name;

function name() {
    return name[0 len name.length]
}

function _fallback() payable {
    revert
}

function withdrawRaw(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not arg4:
        if not arg1:
            revert with 0, 'invalid token/qitoken address'
        if not arg2:
            revert with 0, 'invalid token/qitoken address'
        if arg3 != -1:
            require ext_code.size(arg2)
            call arg2.redeemUnderlying(uint256 rg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'withdraw-failed'
            if arg5:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg5, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   52,
                   0x294c6f67576974686472617728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[ceil32(return_data.size) + 180 len 12] >> 160,
                   0,
                   160,
                   address(arg1),
                   address(arg2),
                   arg3,
                   arg4,
                   arg5
    else:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
             gas gas_remaining wei
            args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1:
            revert with 0, 'invalid token/qitoken address'
        if not arg2:
            revert with 0, 'invalid token/qitoken address'
        if ext_call.return_data[0] != -1:
            require ext_code.size(arg2)
            call arg2.redeemUnderlying(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'withdraw-failed'
            if arg5:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg5, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   52,
                   0x294c6f67576974686472617728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[ceil32(return_data.size) + 180 len 12] >> 160,
                   0,
                   160,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   arg4,
                   arg5
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg2)
        call arg2.redeem(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'full-withdraw-failed'
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if arg5:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg5, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   52,
                   0x294c6f67576974686472617728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(2 * ceil32(return_data.size)) + 180 len 12] >> 160,
                   0,
                   160,
                   address(arg1),
                   address(arg2),
                   0,
                   arg4,
                   arg5
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if arg5:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg5, ext_call.return_data[0] - eth.balance(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               52,
               0x294c6f67576974686472617728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160,
               0,
               160,
               address(arg1),
               address(arg2),
               ext_call.return_data[0] - eth.balance(this.address),
               arg4,
               arg5
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.redeem(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        revert with 0, 'full-withdraw-failed'
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if arg5:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg5, eth.balance(this.address) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               52,
               0x294c6f67576974686472617728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160,
               0,
               160,
               address(arg1),
               address(arg2),
               eth.balance(this.address) - ext_call.return_data[0],
               arg4,
               arg5
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg5:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg5, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           52,
           0x294c6f67576974686472617728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(6 * ceil32(return_data.size)) + 180 len 12] >> 160,
           0,
           160,
           address(arg1),
           address(arg2),
           0,
           arg4,
           arg5
}

function paybackRaw(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not arg4:
        if not arg1:
            revert with 0, 'invalid token/qitoken address'
        if not arg2:
            revert with 0, 'invalid token/qitoken address'
        if arg3 != -1:
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if eth.balance(this.address) < arg3:
                    revert with 0, 'not-enough-avax'
                require ext_code.size(arg2)
                call arg2.repayBorrow() with:
                   value arg3 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       51,
                       0x294c6f675061796261636b28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[179 len 13] >> 152,
                       0,
                       160,
                       address(arg1),
                       address(arg2),
                       arg3,
                       arg4,
                       arg5
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < arg3:
                revert with 0, 'not-enough-token'
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg2), arg3
            if not ext_call.success:
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg2), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.repayBorrow(uint256 rg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'repay-failed.'
            if arg5:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg5, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   51,
                   0x294c6f675061796261636b28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(2 * ceil32(return_data.size)) + 179 len 13] >> 152,
                   0,
                   160,
                   address(arg1),
                   address(arg2),
                   arg3,
                   arg4,
                   arg5
    else:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
             gas gas_remaining wei
            args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1:
            revert with 0, 'invalid token/qitoken address'
        if not arg2:
            revert with 0, 'invalid token/qitoken address'
        if ext_call.return_data[0] != -1:
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if eth.balance(this.address) < ext_call.return_data[0]:
                    revert with 0, 'not-enough-avax'
                require ext_code.size(arg2)
                call arg2.repayBorrow() with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
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
                       0x294c6f675061796261636b28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[179 len 13] >> 152,
                       0,
                       160,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0],
                       arg4,
                       arg5
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'not-enough-token'
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0]
            if not ext_call.success:
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg2), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg2), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.repayBorrow(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'repay-failed.'
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
                   0x294c6f675061796261636b28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(2 * ceil32(return_data.size)) + 179 len 13] >> 152,
                   0,
                   160,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   arg4,
                   arg5
    require ext_code.size(arg2)
    call arg2.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if eth.balance(this.address) < ext_call.return_data[0]:
            revert with 0, 'not-enough-avax'
        require ext_code.size(arg2)
        call arg2.repayBorrow() with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
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
               0x294c6f675061796261636b28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[ceil32(return_data.size) + 179 len 13] >> 152,
               0,
               160,
               address(arg1),
               address(arg2),
               ext_call.return_data[0],
               arg4,
               arg5
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'not-enough-token'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    call arg2.repayBorrow(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        revert with 0, 'repay-failed.'
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
           0x294c6f675061796261636b28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 179 len 13] >> 152,
           0,
           160,
           address(arg1),
           address(arg2),
           ext_call.return_data[0],
           arg4,
           arg5
}

function withdraw(string arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    mem[164 len arg1.length] = arg1[all]
    mem[arg1.length + 164] = 0
    require ext_code.size(0x1f882522df99820df8e586b6df8baae2b91a782d)
    staticcall 0x1f882522df99820df8e586b6df8baae2b91a782d.0x11f45e9c with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if not arg3:
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'invalid token/qitoken address'
        if not ext_call.return_data[44 len 20]:
            revert with 0, 'invalid token/qitoken address'
        if arg2 != -1:
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).redeemUnderlying(uint256 rg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'withdraw-failed'
            if arg4:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg4, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   52,
                   0x294c6f67576974686472617728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(2 * ceil32(return_data.size)) + 180 len 12] >> 160,
                   0,
                   160,
                   address(ext_call.return_data[0]),
                   address(ext_call.return_data[32]),
                   arg2,
                   arg3,
                   arg4
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_code.size(address(ext_call.return_data[32]))
            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'full-withdraw-failed'
            if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if arg4:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg4, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       52,
                       0x294c6f67576974686472617728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160,
                       0,
                       160,
                       address(ext_call.return_data[0]),
                       address(ext_call.return_data[32]),
                       0,
                       arg3,
                       arg4
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if arg4:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg4, ext_call.return_data[0] - eth.balance(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   52,
                   0x294c6f67576974686472617728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(6 * ceil32(return_data.size)) + 180 len 12] >> 160,
                   0,
                   160,
                   address(ext_call.return_data[0]),
                   address(ext_call.return_data[32]),
                   ext_call.return_data[0] - eth.balance(this.address),
                   arg3,
                   arg4
    else:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            revert with 0, 'invalid token/qitoken address'
        if not address(ext_call.return_data[32]):
            revert with 0, 'invalid token/qitoken address'
        if ext_call.return_data[0] != -1:
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).redeemUnderlying(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'withdraw-failed'
            if arg4:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg4, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   52,
                   0x294c6f67576974686472617728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(2 * ceil32(return_data.size)) + 180 len 12] >> 160,
                   0,
                   160,
                   address(ext_call.return_data[0]),
                   address(ext_call.return_data[32]),
                   ext_call.return_data[0],
                   arg3,
                   arg4
        if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_code.size(address(ext_call.return_data[32]))
            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'full-withdraw-failed'
            if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if arg4:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg4, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       52,
                       0x294c6f67576974686472617728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160,
                       0,
                       160,
                       address(ext_call.return_data[0]),
                       address(ext_call.return_data[32]),
                       0,
                       arg3,
                       arg4
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if arg4:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg4, ext_call.return_data[0] - eth.balance(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   52,
                   0x294c6f67576974686472617728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(6 * ceil32(return_data.size)) + 180 len 12] >> 160,
                   0,
                   160,
                   address(ext_call.return_data[0]),
                   address(ext_call.return_data[32]),
                   ext_call.return_data[0] - eth.balance(this.address),
                   arg3,
                   arg4
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[32]))
    staticcall address(ext_call.return_data[32]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).redeem(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        revert with 0, 'full-withdraw-failed'
    if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if arg4:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg4, eth.balance(this.address) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               52,
               0x294c6f67576974686472617728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(6 * ceil32(return_data.size)) + 180 len 12] >> 160,
               0,
               160,
               address(ext_call.return_data[0]),
               address(ext_call.return_data[32]),
               eth.balance(this.address) - ext_call.return_data[0],
               arg3,
               arg4
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg4:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg4, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           52,
           0x294c6f67576974686472617728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(7 * ceil32(return_data.size)) + 180 len 12] >> 160,
           0,
           160,
           address(ext_call.return_data[0]),
           address(ext_call.return_data[32]),
           0,
           arg3,
           arg4
}

function payback(string arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    mem[164 len arg1.length] = arg1[all]
    mem[arg1.length + 164] = 0
    require ext_code.size(0x1f882522df99820df8e586b6df8baae2b91a782d)
    staticcall 0x1f882522df99820df8e586b6df8baae2b91a782d.0x11f45e9c with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if not arg3:
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'invalid token/qitoken address'
        if not ext_call.return_data[44 len 20]:
            revert with 0, 'invalid token/qitoken address'
        if arg2 != -1:
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if eth.balance(this.address) < arg2:
                    revert with 0, 'not-enough-avax'
                require ext_code.size(address(ext_call.return_data[32]))
                call address(ext_call.return_data[32]).repayBorrow() with:
                   value arg2 wei
                     gas gas_remaining wei
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
                       51,
                       0x294c6f675061796261636b28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[ceil32(return_data.size) + 179 len 13] >> 152,
                       0,
                       160,
                       address(ext_call.return_data[0]),
                       address(ext_call.return_data[32]),
                       arg2,
                       arg3,
                       arg4
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < arg2:
                revert with 0, 'not-enough-token'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[32]), arg2
            if not ext_call.success:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[32]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[32]), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).repayBorrow(uint256 rg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'repay-failed.'
            if arg4:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg4, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   51,
                   0x294c6f675061796261636b28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 179 len 13] >> 152,
                   0,
                   160,
                   address(ext_call.return_data[0]),
                   address(ext_call.return_data[32]),
                   arg2,
                   arg3,
                   arg4
    else:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            revert with 0, 'invalid token/qitoken address'
        if not address(ext_call.return_data[32]):
            revert with 0, 'invalid token/qitoken address'
        if ext_call.return_data[0] != -1:
            if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if eth.balance(this.address) < ext_call.return_data[0]:
                    revert with 0, 'not-enough-avax'
                require ext_code.size(address(ext_call.return_data[32]))
                call address(ext_call.return_data[32]).repayBorrow() with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
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
                       51,
                       0x294c6f675061796261636b28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[ceil32(return_data.size) + 179 len 13] >> 152,
                       0,
                       160,
                       address(ext_call.return_data[0]),
                       address(ext_call.return_data[32]),
                       ext_call.return_data[0],
                       arg3,
                       arg4
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'not-enough-token'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[32]), ext_call.return_data[0]
            if not ext_call.success:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[32]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[32]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).repayBorrow(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'repay-failed.'
            if arg4:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg4, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   51,
                   0x294c6f675061796261636b28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 179 len 13] >> 152,
                   0,
                   160,
                   address(ext_call.return_data[0]),
                   address(ext_call.return_data[32]),
                   ext_call.return_data[0],
                   arg3,
                   arg4
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if eth.balance(this.address) < ext_call.return_data[0]:
            revert with 0, 'not-enough-avax'
        require ext_code.size(address(ext_call.return_data[32]))
        call address(ext_call.return_data[32]).repayBorrow() with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
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
               51,
               0x294c6f675061796261636b28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(2 * ceil32(return_data.size)) + 179 len 13] >> 152,
               0,
               160,
               address(ext_call.return_data[0]),
               address(ext_call.return_data[32]),
               ext_call.return_data[0],
               arg3,
               arg4
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'not-enough-token'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[32]), ext_call.return_data[0]
    if not ext_call.success:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[32]), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[32]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).repayBorrow(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        revert with 0, 'repay-failed.'
    if arg4:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           51,
           0x294c6f675061796261636b28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(6 * ceil32(return_data.size)) + 179 len 13] >> 152,
           0,
           160,
           address(ext_call.return_data[0]),
           address(ext_call.return_data[32]),
           ext_call.return_data[0],
           arg3,
           arg4
}

function liquidateRaw(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8) payable {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    if not arg7:
        if not arg2:
            revert with 0, 'invalid token/qitoken address'
        if not arg3:
            revert with 0, 'invalid token/qitoken address'
        if not arg4:
            revert with 0, 'invalid token/qitoken address'
        if not arg5:
            revert with 0, 'invalid token/qitoken address'
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.getAccountLiquidity(address rg1) with:
                gas gas_remaining wei
               args arg1
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        if not ext_call.return_data[64]:
            revert with 0, 'account-cannot-be-liquidated'
        if arg6 != -1:
            if arg2 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if eth.balance(this.address) < arg6:
                    revert with 0, 'not-enough-avax'
                require ext_code.size(arg3)
                call arg3.liquidateBorrow(address rg1, address rg2) with:
                   value arg6 wei
                     gas gas_remaining wei
                    args address(arg1), arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg8:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg8, arg6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       61,
                       0x294c6f674c697175696461746528616464726573732c616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[ceil32(return_data.size) + 189 len 3] >> 232,
                       0,
                       192,
                       address(this.address),
                       address(arg2),
                       address(arg4),
                       arg6,
                       arg7,
                       arg8
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < arg6:
                revert with 0, 'not-enough-token'
            require ext_code.size(arg2)
            call arg2.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg3), arg6
            if not ext_call.success:
                require ext_code.size(arg2)
                call arg2.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg3), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg2)
                call arg2.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg3), arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 164] = arg5
            require ext_code.size(arg3)
            call arg3.liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args address(arg1), arg6, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidate-failed'
            if arg8:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg8, arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   61,
                   0x294c6f674c697175696461746528616464726573732c616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 189 len 3] >> 232,
                   0,
                   192,
                   address(this.address),
                   address(arg2),
                   address(arg4),
                   arg6,
                   arg7,
                   arg8
    else:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
             gas gas_remaining wei
            args arg7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg2:
            revert with 0, 'invalid token/qitoken address'
        if not arg3:
            revert with 0, 'invalid token/qitoken address'
        if not arg4:
            revert with 0, 'invalid token/qitoken address'
        if not arg5:
            revert with 0, 'invalid token/qitoken address'
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.getAccountLiquidity(address rg1) with:
                gas gas_remaining wei
               args arg1
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        if not ext_call.return_data[64]:
            revert with 0, 'account-cannot-be-liquidated'
        if ext_call.return_data[0] != -1:
            if arg2 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if eth.balance(this.address) < ext_call.return_data[0]:
                    revert with 0, 'not-enough-avax'
                require ext_code.size(arg3)
                call arg3.liquidateBorrow(address rg1, address rg2) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args address(arg1), arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg8:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg8, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       61,
                       0x294c6f674c697175696461746528616464726573732c616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[ceil32(return_data.size) + 189 len 3] >> 232,
                       0,
                       192,
                       address(this.address),
                       address(arg2),
                       address(arg4),
                       ext_call.return_data[0],
                       arg7,
                       arg8
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'not-enough-token'
            require ext_code.size(arg2)
            call arg2.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg3), ext_call.return_data[0]
            if not ext_call.success:
                require ext_code.size(arg2)
                call arg2.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg3), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg2)
                call arg2.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg3), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 164] = arg5
            require ext_code.size(arg3)
            call arg3.liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0], arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidate-failed'
            if arg8:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg8, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   61,
                   0x294c6f674c697175696461746528616464726573732c616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 189 len 3] >> 232,
                   0,
                   192,
                   address(this.address),
                   address(arg2),
                   address(arg4),
                   ext_call.return_data[0],
                   arg7,
                   arg8
    require ext_code.size(arg3)
    call arg3.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if eth.balance(this.address) < ext_call.return_data[0]:
            revert with 0, 'not-enough-avax'
        require ext_code.size(arg3)
        call arg3.liquidateBorrow(address rg1, address rg2) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args address(arg1), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg8:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg8, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               61,
               0x294c6f674c697175696461746528616464726573732c616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(2 * ceil32(return_data.size)) + 189 len 3] >> 232,
               0,
               192,
               address(this.address),
               address(arg2),
               address(arg4),
               ext_call.return_data[0],
               arg7,
               arg8
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'not-enough-token'
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg3), ext_call.return_data[0]
    if not ext_call.success:
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg3), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg3), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 164] = arg5
    require ext_code.size(arg3)
    call arg3.liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0], arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        revert with 0, 'liquidate-failed'
    if arg8:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg8, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           61,
           0x294c6f674c697175696461746528616464726573732c616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(6 * ceil32(return_data.size)) + 189 len 3] >> 232,
           0,
           192,
           address(this.address),
           address(arg2),
           address(arg4),
           ext_call.return_data[0],
           arg7,
           arg8
}

function liquidate(address arg1, string arg2, string arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    mem[164 len arg2.length] = arg2[all]
    mem[arg2.length + 164] = 0
    require ext_code.size(0x1f882522df99820df8e586b6df8baae2b91a782d)
    staticcall 0x1f882522df99820df8e586b6df8baae2b91a782d.0x11f45e9c with:
            gas gas_remaining wei
           args Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    mem[ceil32(return_data.size) + 164 len arg3.length] = arg3[all]
    mem[ceil32(return_data.size) + arg3.length + 164] = 0
    require ext_code.size(0x1f882522df99820df8e586b6df8baae2b91a782d)
    staticcall 0x1f882522df99820df8e586b6df8baae2b91a782d.0x11f45e9c with:
            gas gas_remaining wei
           args Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if not arg5:
        if not address(ext_call.return_data[0]):
            revert with 0, 'invalid token/qitoken address'
        if not address(ext_call.return_data[32]):
            revert with 0, 'invalid token/qitoken address'
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'invalid token/qitoken address'
        if not ext_call.return_data[44 len 20]:
            revert with 0, 'invalid token/qitoken address'
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.getAccountLiquidity(address rg1) with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        if not ext_call.return_data[64]:
            revert with 0, 'account-cannot-be-liquidated'
        if arg4 != -1:
            if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if eth.balance(this.address) < arg4:
                    revert with 0, 'not-enough-avax'
                require ext_code.size(address(ext_call.return_data[32]))
                call address(ext_call.return_data[32]).liquidateBorrow(address rg1, address rg2) with:
                   value arg4 wei
                     gas gas_remaining wei
                    args address(arg1), address(ext_call.return_data[32])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg6, arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       61,
                       0x294c6f674c697175696461746528616464726573732c616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 189 len 3] >> 232,
                       0,
                       192,
                       address(this.address),
                       address(ext_call.return_data[0]),
                       address(ext_call.return_data[0]),
                       arg4,
                       arg5,
                       arg6
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < arg4:
                revert with 0, 'not-enough-token'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[32]), arg4
            if not ext_call.success:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[32]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[32]), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[32])
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args address(arg1), arg4, address(ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidate-failed'
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg6, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   61,
                   0x294c6f674c697175696461746528616464726573732c616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(7 * ceil32(return_data.size)) + 189 len 3] >> 232,
                   0,
                   192,
                   address(this.address),
                   address(ext_call.return_data[0]),
                   address(ext_call.return_data[0]),
                   arg4,
                   arg5,
                   arg6
    else:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
             gas gas_remaining wei
            args arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            revert with 0, 'invalid token/qitoken address'
        if not address(ext_call.return_data[32]):
            revert with 0, 'invalid token/qitoken address'
        if not address(ext_call.return_data[0]):
            revert with 0, 'invalid token/qitoken address'
        if not address(ext_call.return_data[32]):
            revert with 0, 'invalid token/qitoken address'
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.getAccountLiquidity(address rg1) with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        if not ext_call.return_data[64]:
            revert with 0, 'account-cannot-be-liquidated'
        if ext_call.return_data[0] != -1:
            if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if eth.balance(this.address) < ext_call.return_data[0]:
                    revert with 0, 'not-enough-avax'
                require ext_code.size(address(ext_call.return_data[32]))
                call address(ext_call.return_data[32]).liquidateBorrow(address rg1, address rg2) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args address(arg1), address(ext_call.return_data[32])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg6, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       61,
                       0x294c6f674c697175696461746528616464726573732c616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 189 len 3] >> 232,
                       0,
                       192,
                       address(this.address),
                       address(ext_call.return_data[0]),
                       address(ext_call.return_data[0]),
                       ext_call.return_data[0],
                       arg5,
                       arg6
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'not-enough-token'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[32]), ext_call.return_data[0]
            if not ext_call.success:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[32]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[32]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[32])
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0], address(ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidate-failed'
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg6, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   61,
                   0x294c6f674c697175696461746528616464726573732c616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(7 * ceil32(return_data.size)) + 189 len 3] >> 232,
                   0,
                   192,
                   address(this.address),
                   address(ext_call.return_data[0]),
                   address(ext_call.return_data[0]),
                   ext_call.return_data[0],
                   arg5,
                   arg6
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if eth.balance(this.address) < ext_call.return_data[0]:
            revert with 0, 'not-enough-avax'
        require ext_code.size(address(ext_call.return_data[32]))
        call address(ext_call.return_data[32]).liquidateBorrow(address rg1, address rg2) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args address(arg1), address(ext_call.return_data[32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg6:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg6, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               61,
               0x294c6f674c697175696461746528616464726573732c616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(6 * ceil32(return_data.size)) + 189 len 3] >> 232,
               0,
               192,
               address(this.address),
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               ext_call.return_data[0],
               arg5,
               arg6
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'not-enough-token'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[32]), ext_call.return_data[0]
    if not ext_call.success:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[32]), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[32]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[32])
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0], address(ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        revert with 0, 'liquidate-failed'
    if arg6:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg6, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           61,
           0x294c6f674c697175696461746528616464726573732c616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(8 * ceil32(return_data.size)) + 189 len 3] >> 232,
           0,
           192,
           address(this.address),
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0]),
           ext_call.return_data[0],
           arg5,
           arg6
}

function withdrawQiTokenRaw(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not arg4:
        if not arg1:
            revert with 0, 'invalid token/qitoken address'
        if not arg2:
            revert with 0, 'invalid token/qitoken address'
        if arg3 != -1:
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(arg2)
                call arg2.redeem(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    revert with 0, 'redeem-failed'
                if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg5:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args arg5, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           192,
                           67,
                           0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[ceil32(return_data.size) + 195 len 29] >> 280,
                           0,
                           192,
                           address(arg1),
                           address(arg2),
                           0,
                           arg3,
                           arg4,
                           arg5
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if eth.balance(this.address) > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, ext_call.return_data[0] - eth.balance(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       192,
                       67,
                       0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(2 * ceil32(return_data.size)) + 195 len 29] >> 280,
                       0,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0] - eth.balance(this.address),
                       arg3,
                       arg4,
                       arg5
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(arg2)
            call arg2.redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'redeem-failed'
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if ext_call.return_data[0] > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, eth.balance(this.address) - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       192,
                       67,
                       0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(2 * ceil32(return_data.size)) + 195 len 29] >> 280,
                       0,
                       192,
                       address(arg1),
                       address(arg2),
                       eth.balance(this.address) - ext_call.return_data[0],
                       arg3,
                       arg4,
                       arg5
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg5:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg5, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   192,
                   67,
                   0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 195 len 29] >> 280,
                   0,
                   192,
                   address(arg1),
                   address(arg2),
                   0,
                   arg3,
                   arg4,
                   arg5
    else:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
             gas gas_remaining wei
            args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1:
            revert with 0, 'invalid token/qitoken address'
        if not arg2:
            revert with 0, 'invalid token/qitoken address'
        if ext_call.return_data[0] != -1:
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(arg2)
                call arg2.redeem(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    revert with 0, 'redeem-failed'
                if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg5:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args arg5, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           192,
                           67,
                           0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[ceil32(return_data.size) + 195 len 29] >> 280,
                           0,
                           192,
                           address(arg1),
                           address(arg2),
                           0,
                           ext_call.return_data[0],
                           arg4,
                           arg5
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if eth.balance(this.address) > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, ext_call.return_data[0] - eth.balance(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       192,
                       67,
                       0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(2 * ceil32(return_data.size)) + 195 len 29] >> 280,
                       0,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0] - eth.balance(this.address),
                       ext_call.return_data[0],
                       arg4,
                       arg5
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(arg2)
            call arg2.redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'redeem-failed'
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if ext_call.return_data[0] > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, eth.balance(this.address) - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       192,
                       67,
                       0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(2 * ceil32(return_data.size)) + 195 len 29] >> 280,
                       0,
                       192,
                       address(arg1),
                       address(arg2),
                       eth.balance(this.address) - ext_call.return_data[0],
                       ext_call.return_data[0],
                       arg4,
                       arg5
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg5:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg5, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   192,
                   67,
                   0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 195 len 29] >> 280,
                   0,
                   192,
                   address(arg1),
                   address(arg2),
                   0,
                   ext_call.return_data[0],
                   arg4,
                   arg5
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        require ext_code.size(arg2)
        call arg2.redeem(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'redeem-failed'
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if eth.balance(this.address) > eth.balance(this.address):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg5:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg5, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   192,
                   67,
                   0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(2 * ceil32(return_data.size)) + 195 len 29] >> 280,
                   0,
                   192,
                   address(arg1),
                   address(arg2),
                   0,
                   ext_call.return_data[0],
                   arg4,
                   arg5
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if eth.balance(this.address) > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg5:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg5, ext_call.return_data[0] - eth.balance(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               192,
               67,
               0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 195 len 29] >> 280,
               0,
               192,
               address(arg1),
               address(arg2),
               ext_call.return_data[0] - eth.balance(this.address),
               ext_call.return_data[0],
               arg4,
               arg5
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.redeem(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        revert with 0, 'redeem-failed'
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if ext_call.return_data[0] > eth.balance(this.address):
            revert with 0, 'SafeMath: subtraction overflow'
        if arg5:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg5, eth.balance(this.address) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               192,
               67,
               0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 195 len 29] >> 280,
               0,
               192,
               address(arg1),
               address(arg2),
               eth.balance(this.address) - ext_call.return_data[0],
               ext_call.return_data[0],
               arg4,
               arg5
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg5:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg5, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           192,
           67,
           0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(6 * ceil32(return_data.size)) + 195 len 29] >> 280,
           0,
           192,
           address(arg1),
           address(arg2),
           0,
           ext_call.return_data[0],
           arg4,
           arg5
}

function borrowRaw(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not arg4:
        if not arg1:
            revert with 0, 'invalid token/qitoken address'
        if not arg2:
            revert with 0, 'invalid token/qitoken address'
        mem[96] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.getAssetsIn(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _12 = mem[96 len 4], address(this.address) << 64
        require mem[96 len 4], address(this.address) << 64 <= 4294967296
        require mem[96 len 4], address(this.address) << 64 + 32 <= return_data.size
        require mem[mem[96 len 4], address(this.address) << 64 + 96] <= 4294967296 and mem[96 len 4], address(this.address) << 64 + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(this.address) << 64 + 96]
        _20 = mem[_12 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_12 + 96])] = mem[_12 + 128 len floor32(mem[_12 + 96])]
        idx = 0
        s = 0
        while idx < mem[ceil32(return_data.size) + 96]:
            require idx < mem[ceil32(return_data.size) + 96]
            if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != arg2:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 1
            continue 
        if s:
            mem[(32 * _20) + ceil32(return_data.size) + 132] = arg3
            require ext_code.size(arg2)
            call arg2.borrow(uint256 rg1) with:
                 gas gas_remaining wei
                args arg3
            mem[(32 * _20) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132] = 32
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 164] = 13
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 196] = 'borrow-failed'
                revert with memory
                  from (32 * _20) + (2 * ceil32(return_data.size)) + 128
                   len ceil32(return_data.size) + 100
            if arg5:
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132] = arg5
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 164] = arg3
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 256] = arg1
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 288] = arg2
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 320] = arg3
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 352] = arg4
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 384] = arg5
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 416] = 64
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 480] = 50
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 512 len 64] = 0xfe4c6f67426f72726f7728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _20) + (2 * ceil32(return_data.size)) + 210 len 14]
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 562] = 0
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 448] = 160
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 576] = ceil32(return_data.size) + 160
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 608 len ceil32(ceil32(return_data.size)) + 5] = mem[(32 * _20) + (2 * ceil32(return_data.size)) + 256 len ceil32(ceil32(return_data.size)) + 5]
            if ceil32(ceil32(return_data.size)) + 5 > ceil32(return_data.size) + 160:
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 768] = 0
            return 64, 
                   160,
                   50,
                   0xfe4c6f67426f72726f7728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _20) + (2 * ceil32(return_data.size)) + 210 len 14] >> 144,
                   0,
                   ceil32(return_data.size) + 160,
                   mem[(32 * _20) + (2 * ceil32(return_data.size)) + 608 len ceil32(ceil32(return_data.size)) + 5]
        mem[(32 * _20) + ceil32(return_data.size) + 160] = arg2
        mem[(32 * _20) + ceil32(return_data.size) + 192] = 0xc299823800000000000000000000000000000000000000000000000000000000
        mem[(32 * _20) + ceil32(return_data.size) + 196] = 32
        mem[(32 * _20) + ceil32(return_data.size) + 228] = 1
        mem[(32 * _20) + ceil32(return_data.size) + 260 len 0] = None
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.enterMarkets(address[] rg1) with:
             gas gas_remaining wei
            args Array(len=1, data=mem[(32 * _20) + ceil32(return_data.size) + 260])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _20) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _20) + (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _425 = mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0
        require mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0 <= 4294967296
        require mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0 + 32 <= return_data.size
        require mem[mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0 + (32 * _20) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0 + (32 * mem[mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0 + (32 * _20) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
        mem[(32 * _20) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0 + (32 * _20) + ceil32(return_data.size) + 192]
        _431 = mem[_425 + (32 * _20) + ceil32(return_data.size) + 192]
        mem[(32 * _20) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_425 + (32 * _20) + ceil32(return_data.size) + 192])] = mem[_425 + (32 * _20) + ceil32(return_data.size) + 224 len floor32(mem[_425 + (32 * _20) + ceil32(return_data.size) + 192])]
        mem[(32 * _431) + (32 * _20) + (2 * ceil32(return_data.size)) + 228] = arg3
        require ext_code.size(arg2)
        call arg2.borrow(uint256 rg1) with:
             gas gas_remaining wei
            args arg3
        mem[(32 * _431) + (32 * _20) + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 228] = 32
            mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 260] = 13
            mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 292] = 'borrow-failed'
            revert with memory
              from (32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 224
               len ceil32(return_data.size) + 100
        if arg5:
            mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 228] = arg5
            mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 260] = arg3
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 352] = arg1
        mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 384] = arg2
        mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 416] = arg3
        mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 448] = arg4
        mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 480] = arg5
        mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 512] = 64
        mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 576] = 50
        mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 608 len 64] = 0xfe4c6f67426f72726f7728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 306 len 14]
        mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 658] = 0
        mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 544] = 160
        mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 672] = ceil32(return_data.size) + 160
        mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 704 len ceil32(ceil32(return_data.size)) + 5] = mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 352 len ceil32(ceil32(return_data.size)) + 5]
        return 64, 
               160,
               50,
               0xfe4c6f67426f72726f7728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 306 len 14] >> 144,
               0,
               ceil32(return_data.size) + 160,
               mem[(32 * _431) + (32 * _20) + (4 * ceil32(return_data.size)) + 704 len ceil32(ceil32(return_data.size)) + 5]
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        revert with 0, 'invalid token/qitoken address'
    if not arg2:
        revert with 0, 'invalid token/qitoken address'
    mem[96] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.getAssetsIn(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _21 = mem[96 len 4], address(this.address) << 64
    require mem[96 len 4], address(this.address) << 64 <= 4294967296
    require mem[96 len 4], address(this.address) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(this.address) << 64 + 96] <= 4294967296 and mem[96 len 4], address(this.address) << 64 + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(this.address) << 64 + 96]
    _28 = mem[_21 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_21 + 96])] = mem[_21 + 128 len floor32(mem[_21 + 96])]
    idx = 0
    s = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        require idx < mem[ceil32(return_data.size) + 96]
        if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != arg2:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if s:
        mem[(32 * _28) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(arg2)
        call arg2.borrow(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(32 * _28) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132] = 32
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 164] = 13
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 196] = 'borrow-failed'
            revert with memory
              from (32 * _28) + (2 * ceil32(return_data.size)) + 128
               len ceil32(return_data.size) + 100
        if arg5:
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132] = arg5
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 256] = arg1
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 288] = arg2
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 352] = arg4
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 384] = arg5
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 416] = 64
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 480] = 50
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 512 len 64] = 0xfe4c6f67426f72726f7728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _28) + (2 * ceil32(return_data.size)) + 210 len 14]
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 562] = 0
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 448] = 160
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 576] = ceil32(return_data.size) + 160
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 608 len ceil32(ceil32(return_data.size)) + 5] = mem[(32 * _28) + (2 * ceil32(return_data.size)) + 256 len ceil32(ceil32(return_data.size)) + 5]
        if ceil32(ceil32(return_data.size)) + 5 > ceil32(return_data.size) + 160:
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 768] = 0
        return 64, 
               160,
               50,
               0xfe4c6f67426f72726f7728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _28) + (2 * ceil32(return_data.size)) + 210 len 14] >> 144,
               0,
               ceil32(return_data.size) + 160,
               mem[(32 * _28) + (2 * ceil32(return_data.size)) + 608 len ceil32(ceil32(return_data.size)) + 5]
    mem[(32 * _28) + ceil32(return_data.size) + 160] = arg2
    mem[(32 * _28) + ceil32(return_data.size) + 192] = 0xc299823800000000000000000000000000000000000000000000000000000000
    mem[(32 * _28) + ceil32(return_data.size) + 196] = 32
    mem[(32 * _28) + ceil32(return_data.size) + 228] = 1
    mem[(32 * _28) + ceil32(return_data.size) + 260 len 0] = None
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.enterMarkets(address[] rg1) with:
         gas gas_remaining wei
        args Array(len=1, data=mem[(32 * _28) + ceil32(return_data.size) + 260])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _28) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _28) + (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _427 = mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0
    require mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0 <= 4294967296
    require mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0 + 32 <= return_data.size
    require mem[mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0 + (32 * _28) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0 + (32 * mem[mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0 + (32 * _28) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
    mem[(32 * _28) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0 + (32 * _28) + ceil32(return_data.size) + 192]
    _432 = mem[_427 + (32 * _28) + ceil32(return_data.size) + 192]
    mem[(32 * _28) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_427 + (32 * _28) + ceil32(return_data.size) + 192])] = mem[_427 + (32 * _28) + ceil32(return_data.size) + 224 len floor32(mem[_427 + (32 * _28) + ceil32(return_data.size) + 192])]
    mem[(32 * _432) + (32 * _28) + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.borrow(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    mem[(32 * _432) + (32 * _28) + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 228] = 32
        mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 260] = 13
        mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 292] = 'borrow-failed'
        revert with memory
          from (32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 224
           len ceil32(return_data.size) + 100
    if arg5:
        mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 228] = arg5
        mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 352] = arg1
    mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 384] = arg2
    mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
    mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 448] = arg4
    mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 480] = arg5
    mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 512] = 64
    mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 576] = 50
    mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 608 len 64] = 0xfe4c6f67426f72726f7728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 306 len 14]
    mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 658] = 0
    mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 544] = 160
    mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 672] = ceil32(return_data.size) + 160
    mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 704 len ceil32(ceil32(return_data.size)) + 5] = mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 352 len ceil32(ceil32(return_data.size)) + 5]
    return 64, 
           160,
           50,
           0xfe4c6f67426f72726f7728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 306 len 14] >> 144,
           0,
           ceil32(return_data.size) + 160,
           mem[(32 * _432) + (32 * _28) + (4 * ceil32(return_data.size)) + 704 len ceil32(ceil32(return_data.size)) + 5]
}

function withdrawQiToken(string arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    mem[164 len arg1.length] = arg1[all]
    mem[arg1.length + 164] = 0
    require ext_code.size(0x1f882522df99820df8e586b6df8baae2b91a782d)
    staticcall 0x1f882522df99820df8e586b6df8baae2b91a782d.0x11f45e9c with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if not arg3:
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'invalid token/qitoken address'
        if not ext_call.return_data[44 len 20]:
            revert with 0, 'invalid token/qitoken address'
        if arg2 != -1:
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(address(ext_call.return_data[32]))
                call address(ext_call.return_data[32]).redeem(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    revert with 0, 'redeem-failed'
                if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg4:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args arg4, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           192,
                           67,
                           0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(2 * ceil32(return_data.size)) + 195 len 29] >> 280,
                           0,
                           192,
                           address(ext_call.return_data[0]),
                           address(ext_call.return_data[32]),
                           0,
                           arg2,
                           arg3,
                           arg4
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if eth.balance(this.address) > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg4:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg4, ext_call.return_data[0] - eth.balance(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       192,
                       67,
                       0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 195 len 29] >> 280,
                       0,
                       192,
                       address(ext_call.return_data[0]),
                       address(ext_call.return_data[32]),
                       ext_call.return_data[0] - eth.balance(this.address),
                       arg2,
                       arg3,
                       arg4
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'redeem-failed'
            if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if ext_call.return_data[0] > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg4:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg4, eth.balance(this.address) - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       192,
                       67,
                       0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 195 len 29] >> 280,
                       0,
                       192,
                       address(ext_call.return_data[0]),
                       address(ext_call.return_data[32]),
                       eth.balance(this.address) - ext_call.return_data[0],
                       arg2,
                       arg3,
                       arg4
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg4:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg4, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   192,
                   67,
                   0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(6 * ceil32(return_data.size)) + 195 len 29] >> 280,
                   0,
                   192,
                   address(ext_call.return_data[0]),
                   address(ext_call.return_data[32]),
                   0,
                   arg2,
                   arg3,
                   arg4
    else:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            revert with 0, 'invalid token/qitoken address'
        if not address(ext_call.return_data[32]):
            revert with 0, 'invalid token/qitoken address'
        if ext_call.return_data[0] != -1:
            if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(address(ext_call.return_data[32]))
                call address(ext_call.return_data[32]).redeem(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    revert with 0, 'redeem-failed'
                if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg4:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args arg4, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           192,
                           67,
                           0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(2 * ceil32(return_data.size)) + 195 len 29] >> 280,
                           0,
                           192,
                           address(ext_call.return_data[0]),
                           address(ext_call.return_data[32]),
                           0,
                           ext_call.return_data[0],
                           arg3,
                           arg4
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if eth.balance(this.address) > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg4:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg4, ext_call.return_data[0] - eth.balance(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       192,
                       67,
                       0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 195 len 29] >> 280,
                       0,
                       192,
                       address(ext_call.return_data[0]),
                       address(ext_call.return_data[32]),
                       ext_call.return_data[0] - eth.balance(this.address),
                       ext_call.return_data[0],
                       arg3,
                       arg4
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'redeem-failed'
            if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if ext_call.return_data[0] > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg4:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg4, eth.balance(this.address) - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       192,
                       67,
                       0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 195 len 29] >> 280,
                       0,
                       192,
                       address(ext_call.return_data[0]),
                       address(ext_call.return_data[32]),
                       eth.balance(this.address) - ext_call.return_data[0],
                       ext_call.return_data[0],
                       arg3,
                       arg4
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg4:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg4, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   192,
                   67,
                   0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(6 * ceil32(return_data.size)) + 195 len 29] >> 280,
                   0,
                   192,
                   address(ext_call.return_data[0]),
                   address(ext_call.return_data[32]),
                   0,
                   ext_call.return_data[0],
                   arg3,
                   arg4
    require ext_code.size(address(ext_call.return_data[32]))
    staticcall address(ext_call.return_data[32]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        require ext_code.size(address(ext_call.return_data[32]))
        call address(ext_call.return_data[32]).redeem(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'redeem-failed'
        if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if eth.balance(this.address) > eth.balance(this.address):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg4:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg4, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   192,
                   67,
                   0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(4 * ceil32(return_data.size)) + 195 len 29] >> 280,
                   0,
                   192,
                   address(ext_call.return_data[0]),
                   address(ext_call.return_data[32]),
                   0,
                   ext_call.return_data[0],
                   arg3,
                   arg4
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if eth.balance(this.address) > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg4:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg4, ext_call.return_data[0] - eth.balance(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               192,
               67,
               0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(6 * ceil32(return_data.size)) + 195 len 29] >> 280,
               0,
               192,
               address(ext_call.return_data[0]),
               address(ext_call.return_data[32]),
               ext_call.return_data[0] - eth.balance(this.address),
               ext_call.return_data[0],
               arg3,
               arg4
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).redeem(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        revert with 0, 'redeem-failed'
    if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if ext_call.return_data[0] > eth.balance(this.address):
            revert with 0, 'SafeMath: subtraction overflow'
        if arg4:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg4, eth.balance(this.address) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               192,
               67,
               0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(6 * ceil32(return_data.size)) + 195 len 29] >> 280,
               0,
               192,
               address(ext_call.return_data[0]),
               address(ext_call.return_data[32]),
               eth.balance(this.address) - ext_call.return_data[0],
               ext_call.return_data[0],
               arg3,
               arg4
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg4:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg4, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           192,
           67,
           0x294c6f6757697468647261775169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(7 * ceil32(return_data.size)) + 195 len 29] >> 280,
           0,
           192,
           address(ext_call.return_data[0]),
           address(ext_call.return_data[32]),
           0,
           ext_call.return_data[0],
           arg3,
           arg4
}

function borrow(string arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    mem[132] = arg1.length
    mem[164 len arg1.length] = arg1[all]
    mem[arg1.length + 164] = 0
    require ext_code.size(0x1f882522df99820df8e586b6df8baae2b91a782d)
    staticcall 0x1f882522df99820df8e586b6df8baae2b91a782d.0x11f45e9c with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if not arg3:
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'invalid token/qitoken address'
        if not ext_call.return_data[44 len 20]:
            revert with 0, 'invalid token/qitoken address'
        mem[ceil32(return_data.size) + 96] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.getAssetsIn(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _17 = mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64
        require mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 <= 4294967296
        require mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + 32 <= return_data.size
        require mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + (32 * mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + 96]) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 96] = mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + 96]
        _25 = mem[_17 + ceil32(return_data.size) + 96]
        mem[(2 * ceil32(return_data.size)) + 128 len floor32(mem[_17 + ceil32(return_data.size) + 96])] = mem[_17 + ceil32(return_data.size) + 128 len floor32(mem[_17 + ceil32(return_data.size) + 96])]
        idx = 0
        s = 0
        while idx < mem[(2 * ceil32(return_data.size)) + 96]:
            require idx < mem[(2 * ceil32(return_data.size)) + 96]
            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20] != address(ext_call.return_data[32]):
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 1
            continue 
        if s:
            mem[(32 * _25) + (2 * ceil32(return_data.size)) + 132] = arg2
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).borrow(uint256 rg1) with:
                 gas gas_remaining wei
                args arg2
            mem[(32 * _25) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = 32
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 164] = 13
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 196] = 'borrow-failed'
                revert with memory
                  from (32 * _25) + (4 * ceil32(return_data.size)) + 128
                   len (5 * ceil32(return_data.size)) + 100
            if arg4:
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = arg4
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 164] = arg2
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _25) + (4 * ceil32(return_data.size)) + 256] = address(ext_call.return_data[0])
            mem[(32 * _25) + (4 * ceil32(return_data.size)) + 288] = address(ext_call.return_data[32])
            mem[(32 * _25) + (4 * ceil32(return_data.size)) + 320] = arg2
            mem[(32 * _25) + (4 * ceil32(return_data.size)) + 352] = arg3
            mem[(32 * _25) + (4 * ceil32(return_data.size)) + 384] = arg4
            mem[(32 * _25) + (4 * ceil32(return_data.size)) + 416] = 64
            mem[(32 * _25) + (4 * ceil32(return_data.size)) + 480] = 50
            mem[(32 * _25) + (4 * ceil32(return_data.size)) + 512 len 64] = 0xfe4c6f67426f72726f7728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _25) + (4 * ceil32(return_data.size)) + 210 len 14]
            mem[(32 * _25) + (4 * ceil32(return_data.size)) + 562] = 0
            mem[(32 * _25) + (4 * ceil32(return_data.size)) + 448] = 160
            mem[(32 * _25) + (4 * ceil32(return_data.size)) + 576] = (5 * ceil32(return_data.size)) + 160
            mem[(32 * _25) + (4 * ceil32(return_data.size)) + 608 len ceil32(5 * ceil32(return_data.size)) + 5] = mem[(32 * _25) + (4 * ceil32(return_data.size)) + 256 len ceil32(5 * ceil32(return_data.size)) + 5]
            return 64, 
                   160,
                   50,
                   0xfe4c6f67426f72726f7728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _25) + (4 * ceil32(return_data.size)) + 210 len 14] >> 144,
                   0,
                   (5 * ceil32(return_data.size)) + 160,
                   mem[(32 * _25) + (4 * ceil32(return_data.size)) + 608 len ceil32(5 * ceil32(return_data.size)) + 5]
        mem[(32 * _25) + (2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[32])
        mem[(32 * _25) + (2 * ceil32(return_data.size)) + 192] = 0xc299823800000000000000000000000000000000000000000000000000000000
        mem[(32 * _25) + (2 * ceil32(return_data.size)) + 196] = 32
        mem[(32 * _25) + (2 * ceil32(return_data.size)) + 228] = 1
        mem[(32 * _25) + (2 * ceil32(return_data.size)) + 260 len 0] = None
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.enterMarkets(address[] rg1) with:
             gas gas_remaining wei
            args Array(len=1, data=mem[(32 * _25) + (2 * ceil32(return_data.size)) + 260])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _25) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _25) + (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _430 = mem[(32 * _25) + (2 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(32 * _25) + (2 * ceil32(return_data.size)) + 192 len 4], 0 <= 4294967296
        require mem[(32 * _25) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + 32 <= return_data.size
        require mem[mem[(32 * _25) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * _25) + (2 * ceil32(return_data.size)) + 192] <= 4294967296 and mem[(32 * _25) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * mem[mem[(32 * _25) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * _25) + (2 * ceil32(return_data.size)) + 192]) + 32 <= return_data.size
        mem[(32 * _25) + (4 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _25) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * _25) + (2 * ceil32(return_data.size)) + 192]
        _436 = mem[_430 + (32 * _25) + (2 * ceil32(return_data.size)) + 192]
        mem[(32 * _25) + (4 * ceil32(return_data.size)) + 224 len floor32(mem[_430 + (32 * _25) + (2 * ceil32(return_data.size)) + 192])] = mem[_430 + (32 * _25) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_430 + (32 * _25) + (2 * ceil32(return_data.size)) + 192])]
        require ext_code.size(address(ext_call.return_data[32]))
        call address(ext_call.return_data[32]).borrow(uint256 rg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 228] = 32
            mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 260] = 13
            mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 292] = 'borrow-failed'
            revert with memory
              from (32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 224
               len ceil32(return_data.size) + 100
        if arg4:
            mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 228] = arg4
            mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 260] = arg2
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 352] = address(ext_call.return_data[0])
        mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 384] = address(ext_call.return_data[32])
        mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 416] = arg2
        mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 448] = arg3
        mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 480] = arg4
        mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 512] = 64
        mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 576] = 50
        mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 608 len 64] = 0xfe4c6f67426f72726f7728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 306 len 14]
        mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 658] = 0
        mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 544] = 160
        mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 672] = ceil32(return_data.size) + 160
        mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 704 len ceil32(ceil32(return_data.size)) + 5] = mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 352 len ceil32(ceil32(return_data.size)) + 5]
        if ceil32(ceil32(return_data.size)) + 5 > ceil32(return_data.size) + 160:
            mem[(32 * _436) + (32 * _25) + (8 * ceil32(return_data.size)) + 864] = 0
        return 64, 
               160,
               50,
               0xfe4c6f67426f72726f7728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 306 len 14] >> 144,
               0,
               ceil32(return_data.size) + 160,
               mem[(32 * _436) + (32 * _25) + (4 * ceil32(return_data.size)) + 704 len ceil32(ceil32(return_data.size)) + 5]
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        revert with 0, 'invalid token/qitoken address'
    if not address(ext_call.return_data[32]):
        revert with 0, 'invalid token/qitoken address'
    mem[ceil32(return_data.size) + 96] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.getAssetsIn(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _26 = mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64
    require mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 <= 4294967296
    require mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + 32 <= return_data.size
    require mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + (32 * mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + 96]) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 96] = mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + 96]
    _33 = mem[_26 + ceil32(return_data.size) + 96]
    mem[(2 * ceil32(return_data.size)) + 128 len floor32(mem[_26 + ceil32(return_data.size) + 96])] = mem[_26 + ceil32(return_data.size) + 128 len floor32(mem[_26 + ceil32(return_data.size) + 96])]
    idx = 0
    s = 0
    while idx < mem[(2 * ceil32(return_data.size)) + 96]:
        require idx < mem[(2 * ceil32(return_data.size)) + 96]
        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20] != address(ext_call.return_data[32]):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if s:
        mem[(32 * _33) + (2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[32]))
        call address(ext_call.return_data[32]).borrow(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(32 * _33) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = 32
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 164] = 13
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 196] = 'borrow-failed'
            revert with memory
              from (32 * _33) + (4 * ceil32(return_data.size)) + 128
               len (5 * ceil32(return_data.size)) + 100
        if arg4:
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = arg4
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _33) + (4 * ceil32(return_data.size)) + 256] = address(ext_call.return_data[0])
        mem[(32 * _33) + (4 * ceil32(return_data.size)) + 288] = address(ext_call.return_data[32])
        mem[(32 * _33) + (4 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        mem[(32 * _33) + (4 * ceil32(return_data.size)) + 352] = arg3
        mem[(32 * _33) + (4 * ceil32(return_data.size)) + 384] = arg4
        mem[(32 * _33) + (4 * ceil32(return_data.size)) + 416] = 64
        mem[(32 * _33) + (4 * ceil32(return_data.size)) + 480] = 50
        mem[(32 * _33) + (4 * ceil32(return_data.size)) + 512 len 64] = 0xfe4c6f67426f72726f7728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _33) + (4 * ceil32(return_data.size)) + 210 len 14]
        mem[(32 * _33) + (4 * ceil32(return_data.size)) + 562] = 0
        mem[(32 * _33) + (4 * ceil32(return_data.size)) + 448] = 160
        mem[(32 * _33) + (4 * ceil32(return_data.size)) + 576] = (5 * ceil32(return_data.size)) + 160
        mem[(32 * _33) + (4 * ceil32(return_data.size)) + 608 len ceil32(5 * ceil32(return_data.size)) + 5] = mem[(32 * _33) + (4 * ceil32(return_data.size)) + 256 len ceil32(5 * ceil32(return_data.size)) + 5]
        return 64, 
               160,
               50,
               0xfe4c6f67426f72726f7728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _33) + (4 * ceil32(return_data.size)) + 210 len 14] >> 144,
               0,
               (5 * ceil32(return_data.size)) + 160,
               mem[(32 * _33) + (4 * ceil32(return_data.size)) + 608 len ceil32(5 * ceil32(return_data.size)) + 5]
    mem[(32 * _33) + (2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[32])
    mem[(32 * _33) + (2 * ceil32(return_data.size)) + 192] = 0xc299823800000000000000000000000000000000000000000000000000000000
    mem[(32 * _33) + (2 * ceil32(return_data.size)) + 196] = 32
    mem[(32 * _33) + (2 * ceil32(return_data.size)) + 228] = 1
    mem[(32 * _33) + (2 * ceil32(return_data.size)) + 260 len 0] = None
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.enterMarkets(address[] rg1) with:
         gas gas_remaining wei
        args Array(len=1, data=mem[(32 * _33) + (2 * ceil32(return_data.size)) + 260])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _33) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _33) + (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _432 = mem[(32 * _33) + (2 * ceil32(return_data.size)) + 192 len 4], 0
    require mem[(32 * _33) + (2 * ceil32(return_data.size)) + 192 len 4], 0 <= 4294967296
    require mem[(32 * _33) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + 32 <= return_data.size
    require mem[mem[(32 * _33) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * _33) + (2 * ceil32(return_data.size)) + 192] <= 4294967296 and mem[(32 * _33) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * mem[mem[(32 * _33) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * _33) + (2 * ceil32(return_data.size)) + 192]) + 32 <= return_data.size
    mem[(32 * _33) + (4 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _33) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * _33) + (2 * ceil32(return_data.size)) + 192]
    _437 = mem[_432 + (32 * _33) + (2 * ceil32(return_data.size)) + 192]
    mem[(32 * _33) + (4 * ceil32(return_data.size)) + 224 len floor32(mem[_432 + (32 * _33) + (2 * ceil32(return_data.size)) + 192])] = mem[_432 + (32 * _33) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_432 + (32 * _33) + (2 * ceil32(return_data.size)) + 192])]
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).borrow(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 228] = 32
        mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 260] = 13
        mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 292] = 'borrow-failed'
        revert with memory
          from (32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 224
           len ceil32(return_data.size) + 100
    if arg4:
        mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 228] = arg4
        mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 352] = address(ext_call.return_data[0])
    mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 384] = address(ext_call.return_data[32])
    mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
    mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 448] = arg3
    mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 480] = arg4
    mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 512] = 64
    mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 576] = 50
    mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 608 len 64] = 0xfe4c6f67426f72726f7728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 306 len 14]
    mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 658] = 0
    mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 544] = 160
    mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 672] = ceil32(return_data.size) + 160
    mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 704 len ceil32(ceil32(return_data.size)) + 5] = mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 352 len ceil32(ceil32(return_data.size)) + 5]
    if ceil32(ceil32(return_data.size)) + 5 > ceil32(return_data.size) + 160:
        mem[(32 * _437) + (32 * _33) + (8 * ceil32(return_data.size)) + 864] = 0
    return 64, 
           160,
           50,
           0xfe4c6f67426f72726f7728616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 306 len 14] >> 144,
           0,
           ceil32(return_data.size) + 160,
           mem[(32 * _437) + (32 * _33) + (4 * ceil32(return_data.size)) + 704 len ceil32(ceil32(return_data.size)) + 5]
}

function depositRaw(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not arg4:
        if not arg1:
            revert with 0, 'invalid token/qitoken address'
        if not arg2:
            revert with 0, 'invalid token/qitoken address'
        mem[96] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.getAssetsIn(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _12 = mem[96 len 4], address(this.address) << 64
        require mem[96 len 4], address(this.address) << 64 <= 4294967296
        require mem[96 len 4], address(this.address) << 64 + 32 <= return_data.size
        require mem[mem[96 len 4], address(this.address) << 64 + 96] <= 4294967296 and mem[96 len 4], address(this.address) << 64 + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(this.address) << 64 + 96]
        _20 = mem[_12 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_12 + 96])] = mem[_12 + 128 len floor32(mem[_12 + 96])]
        idx = 0
        s = 0
        while idx < mem[ceil32(return_data.size) + 96]:
            require idx < mem[ceil32(return_data.size) + 96]
            if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != arg2:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 1
            continue 
        if s:
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(arg2)
                if arg3 == -1:
                    call arg2.mint() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg5:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args arg5, eth.balance(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           51,
                           0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _20) + ceil32(return_data.size) + 211 len 13] >> 152,
                           0,
                           160,
                           address(arg1),
                           address(arg2),
                           eth.balance(this.address),
                           arg4,
                           arg5
                call arg2.mint() with:
                   value arg3 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       51,
                       0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _20) + ceil32(return_data.size) + 211 len 13] >> 152,
                       0,
                       160,
                       address(arg1),
                       address(arg2),
                       arg3,
                       arg4,
                       arg5
            if arg3 != -1:
                mem[(32 * _20) + ceil32(return_data.size) + 164] = arg3
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg2), arg3
                if not ext_call.success:
                    require ext_code.size(arg1)
                    call arg1.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg2), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _20) + ceil32(return_data.size) + 164] = arg3
                    require ext_code.size(arg1)
                    call arg1.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg2), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _20) + ceil32(return_data.size) + 132] = arg3
                require ext_code.size(arg2)
                call arg2.mint(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg3
                mem[(32 * _20) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    mem[(32 * _20) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132] = 32
                    mem[(32 * _20) + (2 * ceil32(return_data.size)) + 164] = 14
                    mem[(32 * _20) + (2 * ceil32(return_data.size)) + 196] = 'deposit-failed'
                    revert with memory
                      from (32 * _20) + (2 * ceil32(return_data.size)) + 128
                       len ceil32(return_data.size) + 100
                if arg5:
                    mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132] = arg5
                    mem[(32 * _20) + (2 * ceil32(return_data.size)) + 164] = arg3
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 256] = arg1
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 288] = arg2
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 320] = arg3
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 352] = arg4
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 384] = arg5
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 416] = 64
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 480] = 51
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 512 len 64] = 0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _20) + (2 * ceil32(return_data.size)) + 211 len 13]
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 563] = 0
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 448] = 160
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 576] = ceil32(return_data.size) + 160
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 608 len ceil32(ceil32(return_data.size)) + 5] = mem[(32 * _20) + (2 * ceil32(return_data.size)) + 256 len ceil32(ceil32(return_data.size)) + 5]
                if ceil32(ceil32(return_data.size)) + 5 > ceil32(return_data.size) + 160:
                    mem[(32 * _20) + (4 * ceil32(return_data.size)) + 768] = 0
                return 64, 
                       160,
                       51,
                       0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _20) + (2 * ceil32(return_data.size)) + 211 len 13] >> 152,
                       0,
                       ceil32(return_data.size) + 160,
                       mem[(32 * _20) + (2 * ceil32(return_data.size)) + 608 len ceil32(ceil32(return_data.size)) + 5]
            mem[(32 * _20) + ceil32(return_data.size) + 132] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * _20) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132] = arg2
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132] = arg2
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132] = arg2
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(arg2)
            call arg2.mint(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 32]
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132] = 32
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 164] = 14
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 196] = 'deposit-failed'
                revert with memory
                  from (32 * _20) + (4 * ceil32(return_data.size)) + 128
                   len (5 * ceil32(return_data.size)) + 100
            if arg5:
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132] = arg5
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _20) + (4 * ceil32(return_data.size)) + 256] = arg1
            mem[(32 * _20) + (4 * ceil32(return_data.size)) + 288] = arg2
            mem[(32 * _20) + (4 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
            mem[(32 * _20) + (4 * ceil32(return_data.size)) + 352] = arg4
            mem[(32 * _20) + (4 * ceil32(return_data.size)) + 384] = arg5
            mem[(32 * _20) + (4 * ceil32(return_data.size)) + 416] = 64
            mem[(32 * _20) + (4 * ceil32(return_data.size)) + 480] = 51
            mem[(32 * _20) + (4 * ceil32(return_data.size)) + 512 len 64] = 0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _20) + (4 * ceil32(return_data.size)) + 211 len 13]
            mem[(32 * _20) + (4 * ceil32(return_data.size)) + 563] = 0
            mem[(32 * _20) + (4 * ceil32(return_data.size)) + 448] = 160
            mem[(32 * _20) + (4 * ceil32(return_data.size)) + 576] = (5 * ceil32(return_data.size)) + 160
            mem[(32 * _20) + (4 * ceil32(return_data.size)) + 608 len ceil32(5 * ceil32(return_data.size)) + 5] = mem[(32 * _20) + (4 * ceil32(return_data.size)) + 256 len ceil32(5 * ceil32(return_data.size)) + 5]
            return 64, 
                   160,
                   51,
                   0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _20) + (4 * ceil32(return_data.size)) + 211 len 13] >> 152,
                   0,
                   (5 * ceil32(return_data.size)) + 160,
                   mem[(32 * _20) + (4 * ceil32(return_data.size)) + 608 len ceil32(5 * ceil32(return_data.size)) + 5]
        mem[(32 * _20) + ceil32(return_data.size) + 160] = arg2
        mem[(32 * _20) + ceil32(return_data.size) + 192] = 0xc299823800000000000000000000000000000000000000000000000000000000
        mem[(32 * _20) + ceil32(return_data.size) + 196] = 32
        mem[(32 * _20) + ceil32(return_data.size) + 228] = 1
        mem[(32 * _20) + ceil32(return_data.size) + 260 len 0] = None
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.enterMarkets(address[] rg1) with:
             gas gas_remaining wei
            args Array(len=1, data=mem[(32 * _20) + ceil32(return_data.size) + 260])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _20) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _20) + (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _1949 = mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0
        require mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0 <= 4294967296
        require mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0 + 32 <= return_data.size
        require mem[mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0 + (32 * _20) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0 + (32 * mem[mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0 + (32 * _20) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
        mem[(32 * _20) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0 + (32 * _20) + ceil32(return_data.size) + 192]
        _1955 = mem[_1949 + (32 * _20) + ceil32(return_data.size) + 192]
        mem[(32 * _20) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1949 + (32 * _20) + ceil32(return_data.size) + 192])] = mem[_1949 + (32 * _20) + ceil32(return_data.size) + 224 len floor32(mem[_1949 + (32 * _20) + ceil32(return_data.size) + 192])]
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_code.size(arg2)
            if arg3 == -1:
                call arg2.mint() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, eth.balance(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       51,
                       0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _1955) + (32 * _20) + (2 * ceil32(return_data.size)) + 307 len 13] >> 152,
                       0,
                       160,
                       address(arg1),
                       address(arg2),
                       eth.balance(this.address),
                       arg4,
                       arg5
            call arg2.mint() with:
               value arg3 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg5:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg5, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   51,
                   0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _1955) + (32 * _20) + (2 * ceil32(return_data.size)) + 307 len 13] >> 152,
                   0,
                   160,
                   address(arg1),
                   address(arg2),
                   arg3,
                   arg4,
                   arg5
        if arg3 != -1:
            mem[(32 * _1955) + (32 * _20) + (2 * ceil32(return_data.size)) + 260] = arg3
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg2), arg3
            if not ext_call.success:
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg2), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1955) + (32 * _20) + (2 * ceil32(return_data.size)) + 260] = arg3
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1955) + (32 * _20) + (2 * ceil32(return_data.size)) + 228] = arg3
            require ext_code.size(arg2)
            call arg2.mint(uint256 rg1) with:
                 gas gas_remaining wei
                args arg3
            mem[(32 * _1955) + (32 * _20) + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 228] = 32
                mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 260] = 14
                mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 292] = 'deposit-failed'
                revert with memory
                  from (32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 224
                   len ceil32(return_data.size) + 100
            if arg5:
                mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 228] = arg5
                mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 260] = arg3
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 352] = arg1
            mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 384] = arg2
            mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 416] = arg3
            mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 448] = arg4
            mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 480] = arg5
            mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 512] = 64
            mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 576] = 51
            mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 608 len 64] = 0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 307 len 13]
            mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 659] = 0
            mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 544] = 160
            mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 672] = ceil32(return_data.size) + 160
            mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 704 len ceil32(ceil32(return_data.size)) + 5] = mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 352 len ceil32(ceil32(return_data.size)) + 5]
            return 64, 
                   160,
                   51,
                   0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 307 len 13] >> 152,
                   0,
                   ceil32(return_data.size) + 160,
                   mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 704 len ceil32(ceil32(return_data.size)) + 5]
        mem[(32 * _1955) + (32 * _20) + (2 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * _1955) + (32 * _20) + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 228] = arg2
        mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
        if not ext_call.success:
            mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 228] = arg2
            mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 260] = 0
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 228] = arg2
            mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        require ext_code.size(arg2)
        call arg2.mint(uint256 rg1) with:
             gas gas_remaining wei
            args mem[(32 * _1955) + (32 * _20) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 
                        'deposit-failed',
                        mem[(32 * _1955) + (32 * _20) + (6 * ceil32(return_data.size)) + 324 len 5 * ceil32(return_data.size)]
        if arg5:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg5, ext_call.return_data[0], mem[(32 * _1955) + (32 * _20) + (6 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1955) + (32 * _20) + (6 * ceil32(return_data.size)) + 352] = arg1
        mem[(32 * _1955) + (32 * _20) + (6 * ceil32(return_data.size)) + 384] = arg2
        mem[(32 * _1955) + (32 * _20) + (6 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        mem[(32 * _1955) + (32 * _20) + (6 * ceil32(return_data.size)) + 448] = arg4
        mem[(32 * _1955) + (32 * _20) + (6 * ceil32(return_data.size)) + 480] = arg5
        mem[(32 * _1955) + (32 * _20) + (6 * ceil32(return_data.size)) + 512] = 64
        mem[(32 * _1955) + (32 * _20) + (6 * ceil32(return_data.size)) + 576] = 51
        mem[(32 * _1955) + (32 * _20) + (6 * ceil32(return_data.size)) + 608 len 64] = 0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _1955) + (32 * _20) + (6 * ceil32(return_data.size)) + 307 len 13]
        mem[(32 * _1955) + (32 * _20) + (6 * ceil32(return_data.size)) + 659] = 0
        mem[(32 * _1955) + (32 * _20) + (6 * ceil32(return_data.size)) + 544] = 160
        mem[(32 * _1955) + (32 * _20) + (6 * ceil32(return_data.size)) + 672] = (5 * ceil32(return_data.size)) + 160
        mem[(32 * _1955) + (32 * _20) + (6 * ceil32(return_data.size)) + 704 len ceil32(5 * ceil32(return_data.size)) + 5] = mem[(32 * _1955) + (32 * _20) + (6 * ceil32(return_data.size)) + 352 len ceil32(5 * ceil32(return_data.size)) + 5]
        return 64, 
               160,
               51,
               0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _1955) + (32 * _20) + (6 * ceil32(return_data.size)) + 307 len 13] >> 152,
               0,
               (5 * ceil32(return_data.size)) + 160,
               mem[(32 * _1955) + (32 * _20) + (6 * ceil32(return_data.size)) + 704 len ceil32(5 * ceil32(return_data.size)) + 5]
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        revert with 0, 'invalid token/qitoken address'
    if not arg2:
        revert with 0, 'invalid token/qitoken address'
    mem[96] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.getAssetsIn(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _21 = mem[96 len 4], address(this.address) << 64
    require mem[96 len 4], address(this.address) << 64 <= 4294967296
    require mem[96 len 4], address(this.address) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(this.address) << 64 + 96] <= 4294967296 and mem[96 len 4], address(this.address) << 64 + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(this.address) << 64 + 96]
    _28 = mem[_21 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_21 + 96])] = mem[_21 + 128 len floor32(mem[_21 + 96])]
    idx = 0
    s = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        require idx < mem[ceil32(return_data.size) + 96]
        if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != arg2:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if s:
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_code.size(arg2)
            if ext_call.return_data[0] == -1:
                call arg2.mint() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, eth.balance(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       51,
                       0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _28) + ceil32(return_data.size) + 211 len 13] >> 152,
                       0,
                       160,
                       address(arg1),
                       address(arg2),
                       eth.balance(this.address),
                       arg4,
                       arg5
            call arg2.mint() with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
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
                   0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _28) + ceil32(return_data.size) + 211 len 13] >> 152,
                   0,
                   160,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   arg4,
                   arg5
        if ext_call.return_data[0] != -1:
            mem[(32 * _28) + ceil32(return_data.size) + 164] = ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0]
            if not ext_call.success:
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg2), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _28) + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg2), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _28) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
            require ext_code.size(arg2)
            call arg2.mint(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[(32 * _28) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                mem[(32 * _28) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132] = 32
                mem[(32 * _28) + (2 * ceil32(return_data.size)) + 164] = 14
                mem[(32 * _28) + (2 * ceil32(return_data.size)) + 196] = 'deposit-failed'
                revert with memory
                  from (32 * _28) + (2 * ceil32(return_data.size)) + 128
                   len ceil32(return_data.size) + 100
            if arg5:
                mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132] = arg5
                mem[(32 * _28) + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 256] = arg1
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 288] = arg2
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 352] = arg4
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 384] = arg5
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 416] = 64
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 480] = 51
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 512 len 64] = 0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _28) + (2 * ceil32(return_data.size)) + 211 len 13]
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 563] = 0
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 448] = 160
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 576] = ceil32(return_data.size) + 160
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 608 len ceil32(ceil32(return_data.size)) + 5] = mem[(32 * _28) + (2 * ceil32(return_data.size)) + 256 len ceil32(ceil32(return_data.size)) + 5]
            if ceil32(ceil32(return_data.size)) + 5 > ceil32(return_data.size) + 160:
                mem[(32 * _28) + (4 * ceil32(return_data.size)) + 768] = 0
            return 64, 
                   160,
                   51,
                   0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _28) + (2 * ceil32(return_data.size)) + 211 len 13] >> 152,
                   0,
                   ceil32(return_data.size) + 160,
                   mem[(32 * _28) + (2 * ceil32(return_data.size)) + 608 len ceil32(ceil32(return_data.size)) + 5]
        mem[(32 * _28) + ceil32(return_data.size) + 132] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * _28) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132] = arg2
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
        if not ext_call.success:
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132] = arg2
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 164] = 0
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132] = arg2
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(arg2)
        call arg2.mint(uint256 rg1) with:
             gas gas_remaining wei
            args mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 32]
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132] = 32
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 164] = 14
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 196] = 'deposit-failed'
            revert with memory
              from (32 * _28) + (4 * ceil32(return_data.size)) + 128
               len (5 * ceil32(return_data.size)) + 100
        if arg5:
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132] = arg5
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _28) + (4 * ceil32(return_data.size)) + 256] = arg1
        mem[(32 * _28) + (4 * ceil32(return_data.size)) + 288] = arg2
        mem[(32 * _28) + (4 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        mem[(32 * _28) + (4 * ceil32(return_data.size)) + 352] = arg4
        mem[(32 * _28) + (4 * ceil32(return_data.size)) + 384] = arg5
        mem[(32 * _28) + (4 * ceil32(return_data.size)) + 416] = 64
        mem[(32 * _28) + (4 * ceil32(return_data.size)) + 480] = 51
        mem[(32 * _28) + (4 * ceil32(return_data.size)) + 512 len 64] = 0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _28) + (4 * ceil32(return_data.size)) + 211 len 13]
        mem[(32 * _28) + (4 * ceil32(return_data.size)) + 563] = 0
        mem[(32 * _28) + (4 * ceil32(return_data.size)) + 448] = 160
        mem[(32 * _28) + (4 * ceil32(return_data.size)) + 576] = (5 * ceil32(return_data.size)) + 160
        mem[(32 * _28) + (4 * ceil32(return_data.size)) + 608 len ceil32(5 * ceil32(return_data.size)) + 5] = mem[(32 * _28) + (4 * ceil32(return_data.size)) + 256 len ceil32(5 * ceil32(return_data.size)) + 5]
        return 64, 
               160,
               51,
               0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _28) + (4 * ceil32(return_data.size)) + 211 len 13] >> 152,
               0,
               (5 * ceil32(return_data.size)) + 160,
               mem[(32 * _28) + (4 * ceil32(return_data.size)) + 608 len ceil32(5 * ceil32(return_data.size)) + 5]
    mem[(32 * _28) + ceil32(return_data.size) + 160] = arg2
    mem[(32 * _28) + ceil32(return_data.size) + 192] = 0xc299823800000000000000000000000000000000000000000000000000000000
    mem[(32 * _28) + ceil32(return_data.size) + 196] = 32
    mem[(32 * _28) + ceil32(return_data.size) + 228] = 1
    mem[(32 * _28) + ceil32(return_data.size) + 260 len 0] = None
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.enterMarkets(address[] rg1) with:
         gas gas_remaining wei
        args Array(len=1, data=mem[(32 * _28) + ceil32(return_data.size) + 260])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _28) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _28) + (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _1951 = mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0
    require mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0 <= 4294967296
    require mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0 + 32 <= return_data.size
    require mem[mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0 + (32 * _28) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0 + (32 * mem[mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0 + (32 * _28) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
    mem[(32 * _28) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0 + (32 * _28) + ceil32(return_data.size) + 192]
    _1956 = mem[_1951 + (32 * _28) + ceil32(return_data.size) + 192]
    mem[(32 * _28) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1951 + (32 * _28) + ceil32(return_data.size) + 192])] = mem[_1951 + (32 * _28) + ceil32(return_data.size) + 224 len floor32(mem[_1951 + (32 * _28) + ceil32(return_data.size) + 192])]
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        require ext_code.size(arg2)
        if ext_call.return_data[0] == -1:
            call arg2.mint() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg5:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg5, eth.balance(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   51,
                   0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _1956) + (32 * _28) + (2 * ceil32(return_data.size)) + 307 len 13] >> 152,
                   0,
                   160,
                   address(arg1),
                   address(arg2),
                   eth.balance(this.address),
                   arg4,
                   arg5
        call arg2.mint() with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
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
               0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _1956) + (32 * _28) + (2 * ceil32(return_data.size)) + 307 len 13] >> 152,
               0,
               160,
               address(arg1),
               address(arg2),
               ext_call.return_data[0],
               arg4,
               arg5
    if ext_call.return_data[0] != -1:
        mem[(32 * _1956) + (32 * _28) + (2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg2), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1956) + (32 * _28) + (2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1956) + (32 * _28) + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        require ext_code.size(arg2)
        call arg2.mint(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(32 * _1956) + (32 * _28) + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 228] = 32
            mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 260] = 14
            mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 292] = 'deposit-failed'
            revert with memory
              from (32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 224
               len ceil32(return_data.size) + 100
        if arg5:
            mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 228] = arg5
            mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 352] = arg1
        mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 384] = arg2
        mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 448] = arg4
        mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 480] = arg5
        mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 512] = 64
        mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 576] = 51
        mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 608 len 64] = 0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 307 len 13]
        mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 659] = 0
        mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 544] = 160
        mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 672] = ceil32(return_data.size) + 160
        mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 704 len ceil32(ceil32(return_data.size)) + 5] = mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 352 len ceil32(ceil32(return_data.size)) + 5]
        return 64, 
               160,
               51,
               0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 307 len 13] >> 152,
               0,
               ceil32(return_data.size) + 160,
               mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 704 len ceil32(ceil32(return_data.size)) + 5]
    mem[(32 * _1956) + (32 * _28) + (2 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(32 * _1956) + (32 * _28) + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 228] = arg2
    mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
    if not ext_call.success:
        mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 228] = arg2
        mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 260] = 0
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 228] = arg2
        mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.mint(uint256 rg1) with:
         gas gas_remaining wei
        args mem[(32 * _1956) + (32 * _28) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        revert with 0, 
                    'deposit-failed',
                    mem[(32 * _1956) + (32 * _28) + (6 * ceil32(return_data.size)) + 324 len 5 * ceil32(return_data.size)]
    if arg5:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg5, ext_call.return_data[0], mem[(32 * _1956) + (32 * _28) + (6 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _1956) + (32 * _28) + (6 * ceil32(return_data.size)) + 352] = arg1
    mem[(32 * _1956) + (32 * _28) + (6 * ceil32(return_data.size)) + 384] = arg2
    mem[(32 * _1956) + (32 * _28) + (6 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
    mem[(32 * _1956) + (32 * _28) + (6 * ceil32(return_data.size)) + 448] = arg4
    mem[(32 * _1956) + (32 * _28) + (6 * ceil32(return_data.size)) + 480] = arg5
    mem[(32 * _1956) + (32 * _28) + (6 * ceil32(return_data.size)) + 512] = 64
    mem[(32 * _1956) + (32 * _28) + (6 * ceil32(return_data.size)) + 576] = 51
    mem[(32 * _1956) + (32 * _28) + (6 * ceil32(return_data.size)) + 608 len 64] = 0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _1956) + (32 * _28) + (6 * ceil32(return_data.size)) + 307 len 13]
    mem[(32 * _1956) + (32 * _28) + (6 * ceil32(return_data.size)) + 659] = 0
    mem[(32 * _1956) + (32 * _28) + (6 * ceil32(return_data.size)) + 544] = 160
    mem[(32 * _1956) + (32 * _28) + (6 * ceil32(return_data.size)) + 672] = (5 * ceil32(return_data.size)) + 160
    mem[(32 * _1956) + (32 * _28) + (6 * ceil32(return_data.size)) + 704 len ceil32(5 * ceil32(return_data.size)) + 5] = mem[(32 * _1956) + (32 * _28) + (6 * ceil32(return_data.size)) + 352 len ceil32(5 * ceil32(return_data.size)) + 5]
    return 64, 
           160,
           51,
           0x294c6f674465706f73697428616464726573732c616464726573732c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _1956) + (32 * _28) + (6 * ceil32(return_data.size)) + 307 len 13] >> 152,
           0,
           (5 * ceil32(return_data.size)) + 160,
           mem[(32 * _1956) + (32 * _28) + (6 * ceil32(return_data.size)) + 704 len ceil32(5 * ceil32(return_data.size)) + 5]
}

function depositQiTokenRaw(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not arg4:
        if not arg1:
            revert with 0, 'invalid token/qitoken address'
        if not arg2:
            revert with 0, 'invalid token/qitoken address'
        mem[96] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.getAssetsIn(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _12 = mem[96 len 4], address(this.address) << 64
        require mem[96 len 4], address(this.address) << 64 <= 4294967296
        require mem[96 len 4], address(this.address) << 64 + 32 <= return_data.size
        require mem[mem[96 len 4], address(this.address) << 64 + 96] <= 4294967296 and mem[96 len 4], address(this.address) << 64 + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(this.address) << 64 + 96]
        _20 = mem[_12 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_12 + 96])] = mem[_12 + 128 len floor32(mem[_12 + 96])]
        idx = 0
        s = 0
        while idx < mem[ceil32(return_data.size) + 96]:
            require idx < mem[ceil32(return_data.size) + 96]
            if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != arg2:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 1
            continue 
        if s:
            mem[(32 * _20) + ceil32(return_data.size) + 132] = this.address
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * _20) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 128] = 0x1249c58b00000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg2)
                if arg3 == -1:
                    call arg2.mint() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132] = this.address
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 32]
                    mem[(32 * _20) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        mem[(32 * _20) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132] = 32
                        mem[(32 * _20) + (4 * ceil32(return_data.size)) + 164] = 30
                        mem[(32 * _20) + (4 * ceil32(return_data.size)) + 196] = 'SafeMath: subtraction overflow'
                        revert with memory
                          from (32 * _20) + (4 * ceil32(return_data.size)) + 128
                           len (5 * ceil32(return_data.size)) + 100
                    if arg5:
                        mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132] = arg5
                        mem[(32 * _20) + (4 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _20) + (4 * ceil32(return_data.size)) + 288] = arg1
                    mem[(32 * _20) + (4 * ceil32(return_data.size)) + 320] = arg2
                    mem[(32 * _20) + (4 * ceil32(return_data.size)) + 352] = eth.balance(this.address)
                else:
                    call arg2.mint() with:
                       value arg3 wei
                         gas gas_remaining wei
                        args mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132] = this.address
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 32]
                    mem[(32 * _20) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        mem[(32 * _20) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132] = 32
                        mem[(32 * _20) + (4 * ceil32(return_data.size)) + 164] = 30
                        mem[(32 * _20) + (4 * ceil32(return_data.size)) + 196] = 'SafeMath: subtraction overflow'
                        revert with memory
                          from (32 * _20) + (4 * ceil32(return_data.size)) + 128
                           len (5 * ceil32(return_data.size)) + 100
                    if arg5:
                        mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132] = arg5
                        mem[(32 * _20) + (4 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _20) + (4 * ceil32(return_data.size)) + 288] = arg1
                    mem[(32 * _20) + (4 * ceil32(return_data.size)) + 320] = arg2
                    mem[(32 * _20) + (4 * ceil32(return_data.size)) + 352] = arg3
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 384] = 0
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 416] = arg4
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 448] = arg5
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 480] = 64
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 544] = 66
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 576 len 96] = 0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _20) + (4 * ceil32(return_data.size)) + 226 len 30]
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 642] = 0
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 512] = 192
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 672] = (5 * ceil32(return_data.size)) + 192
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 704 len ceil32(5 * ceil32(return_data.size)) + 6] = mem[(32 * _20) + (4 * ceil32(return_data.size)) + 288 len ceil32(5 * ceil32(return_data.size)) + 6]
                return 64, 
                       192,
                       66,
                       0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _20) + (4 * ceil32(return_data.size)) + 226 len 30] >> 272,
                       0,
                       (5 * ceil32(return_data.size)) + 192,
                       mem[(32 * _20) + (4 * ceil32(return_data.size)) + 704 len ceil32(5 * ceil32(return_data.size)) + 6]
            if arg3 == -1:
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 32]
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132] = arg2
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132] = arg2
                    mem[(32 * _20) + (4 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(arg1)
                    call arg1.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132] = arg2
                    mem[(32 * _20) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                require ext_code.size(arg2)
                call arg2.mint(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    revert with 0, 'deposit-qitoken-failed.', mem[(32 * _20) + (6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address), mem[(32 * _20) + (6 * ceil32(return_data.size)) + 164 len 9 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       192,
                       66,
                       0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _20) + (7 * ceil32(return_data.size)) + 226 len 30] >> 272,
                       0,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0],
                       0,
                       arg4,
                       arg5
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132] = arg2
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 164] = arg3
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132] = arg2
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132] = arg2
                mem[(32 * _20) + (2 * ceil32(return_data.size)) + 164] = arg3
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132] = arg3
            require ext_code.size(arg2)
            call arg2.mint(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[(32 * _20) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 32]
            mem[(32 * _20) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132] = 32
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 164] = 23
                mem[(32 * _20) + (4 * ceil32(return_data.size)) + 196] = 'deposit-qitoken-failed.'
                revert with memory
                  from (32 * _20) + (4 * ceil32(return_data.size)) + 128
                   len (5 * ceil32(return_data.size)) + 100
            mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132] = this.address
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(32 * _20) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 
                            'SafeMath: subtraction overflow',
                            mem[(32 * _20) + (6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
            if arg5:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg5, 0, mem[(32 * _20) + (6 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _20) + (6 * ceil32(return_data.size)) + 288] = arg1
            mem[(32 * _20) + (6 * ceil32(return_data.size)) + 320] = arg2
            mem[(32 * _20) + (6 * ceil32(return_data.size)) + 352] = arg3
            mem[(32 * _20) + (6 * ceil32(return_data.size)) + 384] = 0
            mem[(32 * _20) + (6 * ceil32(return_data.size)) + 416] = arg4
            mem[(32 * _20) + (6 * ceil32(return_data.size)) + 448] = arg5
            mem[(32 * _20) + (6 * ceil32(return_data.size)) + 480] = 64
            mem[(32 * _20) + (6 * ceil32(return_data.size)) + 544] = 66
            mem[(32 * _20) + (6 * ceil32(return_data.size)) + 576 len 96] = 0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _20) + (6 * ceil32(return_data.size)) + 226 len 30]
            mem[(32 * _20) + (6 * ceil32(return_data.size)) + 642] = 0
            mem[(32 * _20) + (6 * ceil32(return_data.size)) + 512] = 192
            mem[(32 * _20) + (6 * ceil32(return_data.size)) + 672] = (8 * ceil32(return_data.size)) + 192
            mem[(32 * _20) + (6 * ceil32(return_data.size)) + 704 len ceil32(8 * ceil32(return_data.size)) + 6] = mem[(32 * _20) + (6 * ceil32(return_data.size)) + 288 len ceil32(8 * ceil32(return_data.size)) + 6]
            return 64, 
                   192,
                   66,
                   0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _20) + (6 * ceil32(return_data.size)) + 226 len 30] >> 272,
                   0,
                   (8 * ceil32(return_data.size)) + 192,
                   mem[(32 * _20) + (6 * ceil32(return_data.size)) + 704 len ceil32(8 * ceil32(return_data.size)) + 6]
        mem[(32 * _20) + ceil32(return_data.size) + 160] = arg2
        mem[(32 * _20) + ceil32(return_data.size) + 192] = 0xc299823800000000000000000000000000000000000000000000000000000000
        mem[(32 * _20) + ceil32(return_data.size) + 196] = 32
        mem[(32 * _20) + ceil32(return_data.size) + 228] = 1
        mem[(32 * _20) + ceil32(return_data.size) + 260 len 0] = None
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.enterMarkets(address[] rg1) with:
             gas gas_remaining wei
            args Array(len=1, data=mem[(32 * _20) + ceil32(return_data.size) + 260])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _20) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _20) + (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _2105 = mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0
        require mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0 <= 4294967296
        require mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0 + 32 <= return_data.size
        require mem[mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0 + (32 * _20) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0 + (32 * mem[mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0 + (32 * _20) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
        mem[(32 * _20) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _20) + ceil32(return_data.size) + 192 len 4], 0 + (32 * _20) + ceil32(return_data.size) + 192]
        _2111 = mem[_2105 + (32 * _20) + ceil32(return_data.size) + 192]
        mem[(32 * _20) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_2105 + (32 * _20) + ceil32(return_data.size) + 192])] = mem[_2105 + (32 * _20) + ceil32(return_data.size) + 224 len floor32(mem[_2105 + (32 * _20) + ceil32(return_data.size) + 192])]
        mem[(32 * _2111) + (32 * _20) + (2 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * _2111) + (32 * _20) + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 224] = 0x1249c58b00000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg2)
            if arg3 == -1:
                call arg2.mint() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 
                                'SafeMath: subtraction overflow',
                                mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 324 len 5 * ceil32(return_data.size)]
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, 0, mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 384] = arg1
                mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 416] = arg2
                mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 448] = eth.balance(this.address)
            else:
                call arg2.mint() with:
                   value arg3 wei
                     gas gas_remaining wei
                    args mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 
                                'SafeMath: subtraction overflow',
                                mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 324 len 5 * ceil32(return_data.size)]
                if arg5:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args arg5, 0, mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 384] = arg1
                mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 416] = arg2
                mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 448] = arg3
            mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 480] = 0
            mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 512] = arg4
            mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 544] = arg5
            mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 576] = 64
            mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 640] = 66
            mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 672 len 96] = 0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 322 len 30]
            mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 738] = 0
            mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 608] = 192
            mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 768] = (5 * ceil32(return_data.size)) + 192
            mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 800 len ceil32(5 * ceil32(return_data.size)) + 6] = mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 384 len ceil32(5 * ceil32(return_data.size)) + 6]
            return 64, 
                   192,
                   66,
                   0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 322 len 30] >> 272,
                   0,
                   (5 * ceil32(return_data.size)) + 192,
                   mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 800 len ceil32(5 * ceil32(return_data.size)) + 6]
        if arg3 == -1:
            mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0], mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
            if not ext_call.success:
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg2), 0, mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg2), ext_call.return_data[0], mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.mint(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 260 len 5 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 
                            'deposit-qitoken-failed.',
                            mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address), mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg5:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg5, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   192,
                   66,
                   0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2111) + (32 * _20) + (8 * ceil32(return_data.size)) + 322 len 30] >> 272,
                   0,
                   192,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   0,
                   arg4,
                   arg5
        mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 228] = arg2
        mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 260] = arg3
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
        if not ext_call.success:
            mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 228] = arg2
            mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 260] = 0
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 228] = arg2
            mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 260] = arg3
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 228] = arg3
        require ext_code.size(arg2)
        call arg2.mint(uint256 rg1) with:
             gas gas_remaining wei
            args mem[(32 * _2111) + (32 * _20) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 
                        'deposit-qitoken-failed.',
                        mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 324 len 5 * ceil32(return_data.size)]
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address), mem[(32 * _2111) + (32 * _20) + (6 * ceil32(return_data.size)) + 260 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 
                        'SafeMath: subtraction overflow',
                        mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
        if arg5:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg5, 0, mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 292 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 384] = arg1
        mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 416] = arg2
        mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 448] = arg3
        mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 480] = 0
        mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 512] = arg4
        mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 544] = arg5
        mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 576] = 64
        mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 640] = 66
        mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 672 len 96] = 0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 322 len 30]
        mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 738] = 0
        mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 608] = 192
        mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 768] = (8 * ceil32(return_data.size)) + 192
        mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 800 len ceil32(8 * ceil32(return_data.size)) + 6] = mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 384 len ceil32(8 * ceil32(return_data.size)) + 6]
        return 64, 
               192,
               66,
               0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 322 len 30] >> 272,
               0,
               (8 * ceil32(return_data.size)) + 192,
               mem[(32 * _2111) + (32 * _20) + (7 * ceil32(return_data.size)) + 800 len ceil32(8 * ceil32(return_data.size)) + 6]
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        revert with 0, 'invalid token/qitoken address'
    if not arg2:
        revert with 0, 'invalid token/qitoken address'
    mem[96] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.getAssetsIn(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _21 = mem[96 len 4], address(this.address) << 64
    require mem[96 len 4], address(this.address) << 64 <= 4294967296
    require mem[96 len 4], address(this.address) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(this.address) << 64 + 96] <= 4294967296 and mem[96 len 4], address(this.address) << 64 + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(this.address) << 64 + 96]
    _28 = mem[_21 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_21 + 96])] = mem[_21 + 128 len floor32(mem[_21 + 96])]
    idx = 0
    s = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        require idx < mem[ceil32(return_data.size) + 96]
        if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != arg2:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if s:
        mem[(32 * _28) + ceil32(return_data.size) + 132] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * _28) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 128] = 0x1249c58b00000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg2)
            if ext_call.return_data[0] == -1:
                call arg2.mint() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132] = this.address
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 32]
                mem[(32 * _28) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    mem[(32 * _28) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132] = 32
                    mem[(32 * _28) + (4 * ceil32(return_data.size)) + 164] = 30
                    mem[(32 * _28) + (4 * ceil32(return_data.size)) + 196] = 'SafeMath: subtraction overflow'
                    revert with memory
                      from (32 * _28) + (4 * ceil32(return_data.size)) + 128
                       len (5 * ceil32(return_data.size)) + 100
                if arg5:
                    mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132] = arg5
                    mem[(32 * _28) + (4 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _28) + (4 * ceil32(return_data.size)) + 288] = arg1
                mem[(32 * _28) + (4 * ceil32(return_data.size)) + 320] = arg2
                mem[(32 * _28) + (4 * ceil32(return_data.size)) + 352] = eth.balance(this.address)
            else:
                call arg2.mint() with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132] = this.address
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 32]
                mem[(32 * _28) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    mem[(32 * _28) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132] = 32
                    mem[(32 * _28) + (4 * ceil32(return_data.size)) + 164] = 30
                    mem[(32 * _28) + (4 * ceil32(return_data.size)) + 196] = 'SafeMath: subtraction overflow'
                    revert with memory
                      from (32 * _28) + (4 * ceil32(return_data.size)) + 128
                       len (5 * ceil32(return_data.size)) + 100
                if arg5:
                    mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132] = arg5
                    mem[(32 * _28) + (4 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _28) + (4 * ceil32(return_data.size)) + 288] = arg1
                mem[(32 * _28) + (4 * ceil32(return_data.size)) + 320] = arg2
                mem[(32 * _28) + (4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 384] = 0
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 416] = arg4
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 448] = arg5
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 480] = 64
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 544] = 66
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 576 len 96] = 0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _28) + (4 * ceil32(return_data.size)) + 226 len 30]
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 642] = 0
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 512] = 192
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 672] = (5 * ceil32(return_data.size)) + 192
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 704 len ceil32(5 * ceil32(return_data.size)) + 6] = mem[(32 * _28) + (4 * ceil32(return_data.size)) + 288 len ceil32(5 * ceil32(return_data.size)) + 6]
            return 64, 
                   192,
                   66,
                   0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _28) + (4 * ceil32(return_data.size)) + 226 len 30] >> 272,
                   0,
                   (5 * ceil32(return_data.size)) + 192,
                   mem[(32 * _28) + (4 * ceil32(return_data.size)) + 704 len ceil32(5 * ceil32(return_data.size)) + 6]
        if ext_call.return_data[0] == -1:
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 32]
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132] = arg2
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132] = arg2
                mem[(32 * _28) + (4 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132] = arg2
                mem[(32 * _28) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                require ext_code.size(arg1)
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(arg2)
            call arg2.mint(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'deposit-qitoken-failed.', mem[(32 * _28) + (6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address), mem[(32 * _28) + (6 * ceil32(return_data.size)) + 164 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg5:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg5, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   192,
                   66,
                   0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _28) + (7 * ceil32(return_data.size)) + 226 len 30] >> 272,
                   0,
                   192,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   0,
                   arg4,
                   arg5
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132] = arg2
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
        if not ext_call.success:
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132] = arg2
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 164] = 0
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132] = arg2
            mem[(32 * _28) + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(arg2)
        call arg2.mint(uint256 rg1) with:
             gas gas_remaining wei
            args mem[(32 * _28) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 32]
        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132] = 32
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 164] = 23
            mem[(32 * _28) + (4 * ceil32(return_data.size)) + 196] = 'deposit-qitoken-failed.'
            revert with memory
              from (32 * _28) + (4 * ceil32(return_data.size)) + 128
               len (5 * ceil32(return_data.size)) + 100
        mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args mem[(32 * _28) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 
                        'SafeMath: subtraction overflow',
                        mem[(32 * _28) + (6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
        if arg5:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg5, 0, mem[(32 * _28) + (6 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _28) + (6 * ceil32(return_data.size)) + 288] = arg1
        mem[(32 * _28) + (6 * ceil32(return_data.size)) + 320] = arg2
        mem[(32 * _28) + (6 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
        mem[(32 * _28) + (6 * ceil32(return_data.size)) + 384] = 0
        mem[(32 * _28) + (6 * ceil32(return_data.size)) + 416] = arg4
        mem[(32 * _28) + (6 * ceil32(return_data.size)) + 448] = arg5
        mem[(32 * _28) + (6 * ceil32(return_data.size)) + 480] = 64
        mem[(32 * _28) + (6 * ceil32(return_data.size)) + 544] = 66
        mem[(32 * _28) + (6 * ceil32(return_data.size)) + 576 len 96] = 0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _28) + (6 * ceil32(return_data.size)) + 226 len 30]
        mem[(32 * _28) + (6 * ceil32(return_data.size)) + 642] = 0
        mem[(32 * _28) + (6 * ceil32(return_data.size)) + 512] = 192
        mem[(32 * _28) + (6 * ceil32(return_data.size)) + 672] = (8 * ceil32(return_data.size)) + 192
        mem[(32 * _28) + (6 * ceil32(return_data.size)) + 704 len ceil32(8 * ceil32(return_data.size)) + 6] = mem[(32 * _28) + (6 * ceil32(return_data.size)) + 288 len ceil32(8 * ceil32(return_data.size)) + 6]
        return 64, 
               192,
               66,
               0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _28) + (6 * ceil32(return_data.size)) + 226 len 30] >> 272,
               0,
               (8 * ceil32(return_data.size)) + 192,
               mem[(32 * _28) + (6 * ceil32(return_data.size)) + 704 len ceil32(8 * ceil32(return_data.size)) + 6]
    mem[(32 * _28) + ceil32(return_data.size) + 160] = arg2
    mem[(32 * _28) + ceil32(return_data.size) + 192] = 0xc299823800000000000000000000000000000000000000000000000000000000
    mem[(32 * _28) + ceil32(return_data.size) + 196] = 32
    mem[(32 * _28) + ceil32(return_data.size) + 228] = 1
    mem[(32 * _28) + ceil32(return_data.size) + 260 len 0] = None
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.enterMarkets(address[] rg1) with:
         gas gas_remaining wei
        args Array(len=1, data=mem[(32 * _28) + ceil32(return_data.size) + 260])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _28) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _28) + (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _2107 = mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0
    require mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0 <= 4294967296
    require mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0 + 32 <= return_data.size
    require mem[mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0 + (32 * _28) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0 + (32 * mem[mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0 + (32 * _28) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
    mem[(32 * _28) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _28) + ceil32(return_data.size) + 192 len 4], 0 + (32 * _28) + ceil32(return_data.size) + 192]
    _2112 = mem[_2107 + (32 * _28) + ceil32(return_data.size) + 192]
    mem[(32 * _28) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_2107 + (32 * _28) + ceil32(return_data.size) + 192])] = mem[_2107 + (32 * _28) + ceil32(return_data.size) + 224 len floor32(mem[_2107 + (32 * _28) + ceil32(return_data.size) + 192])]
    mem[(32 * _2112) + (32 * _28) + (2 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(32 * _2112) + (32 * _28) + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 224] = 0x1249c58b00000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg2)
        if ext_call.return_data[0] == -1:
            call arg2.mint() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 
                            'SafeMath: subtraction overflow',
                            mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 324 len 5 * ceil32(return_data.size)]
            if arg5:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg5, 0, mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 384] = arg1
            mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 416] = arg2
            mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 448] = eth.balance(this.address)
        else:
            call arg2.mint() with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 
                            'SafeMath: subtraction overflow',
                            mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 324 len 5 * ceil32(return_data.size)]
            if arg5:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg5, 0, mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 384] = arg1
            mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 416] = arg2
            mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
        mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 480] = 0
        mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 512] = arg4
        mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 544] = arg5
        mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 576] = 64
        mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 640] = 66
        mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 672 len 96] = 0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 322 len 30]
        mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 738] = 0
        mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 608] = 192
        mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 768] = (5 * ceil32(return_data.size)) + 192
        mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 800 len ceil32(5 * ceil32(return_data.size)) + 6] = mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 384 len ceil32(5 * ceil32(return_data.size)) + 6]
        return 64, 
               192,
               66,
               0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 322 len 30] >> 272,
               0,
               (5 * ceil32(return_data.size)) + 192,
               mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 800 len ceil32(5 * ceil32(return_data.size)) + 6]
    if ext_call.return_data[0] == -1:
        mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0], mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg2), 0, mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0], mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg2)
        call arg2.mint(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0], mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 260 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 
                        'deposit-qitoken-failed.',
                        mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address), mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg5:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg5, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               192,
               66,
               0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2112) + (32 * _28) + (8 * ceil32(return_data.size)) + 322 len 30] >> 272,
               0,
               192,
               address(arg1),
               address(arg2),
               ext_call.return_data[0],
               0,
               arg4,
               arg5
    mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 228] = arg2
    mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
    if not ext_call.success:
        mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 228] = arg2
        mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 260] = 0
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 228] = arg2
        mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.mint(uint256 rg1) with:
         gas gas_remaining wei
        args mem[(32 * _2112) + (32 * _28) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        revert with 0, 
                    'deposit-qitoken-failed.',
                    mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 324 len 5 * ceil32(return_data.size)]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address), mem[(32 * _2112) + (32 * _28) + (6 * ceil32(return_data.size)) + 260 len 5 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 
                    'SafeMath: subtraction overflow',
                    mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
    if arg5:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg5, 0, mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 292 len 9 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 384] = arg1
    mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 416] = arg2
    mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
    mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 480] = 0
    mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 512] = arg4
    mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 544] = arg5
    mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 576] = 64
    mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 640] = 66
    mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 672 len 96] = 0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 322 len 30]
    mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 738] = 0
    mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 608] = 192
    mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 768] = (8 * ceil32(return_data.size)) + 192
    mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 800 len ceil32(8 * ceil32(return_data.size)) + 6] = mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 384 len ceil32(8 * ceil32(return_data.size)) + 6]
    return 64, 
           192,
           66,
           0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 322 len 30] >> 272,
           0,
           (8 * ceil32(return_data.size)) + 192,
           mem[(32 * _2112) + (32 * _28) + (7 * ceil32(return_data.size)) + 800 len ceil32(8 * ceil32(return_data.size)) + 6]
}

function depositQiToken(string arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    mem[132] = arg1.length
    mem[164 len arg1.length] = arg1[all]
    mem[arg1.length + 164] = 0
    require ext_code.size(0x1f882522df99820df8e586b6df8baae2b91a782d)
    staticcall 0x1f882522df99820df8e586b6df8baae2b91a782d.0x11f45e9c with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if not arg3:
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'invalid token/qitoken address'
        if not ext_call.return_data[44 len 20]:
            revert with 0, 'invalid token/qitoken address'
        mem[ceil32(return_data.size) + 96] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.getAssetsIn(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _17 = mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64
        require mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 <= 4294967296
        require mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + 32 <= return_data.size
        require mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + (32 * mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + 96]) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 96] = mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + 96]
        _25 = mem[_17 + ceil32(return_data.size) + 96]
        mem[(2 * ceil32(return_data.size)) + 128 len floor32(mem[_17 + ceil32(return_data.size) + 96])] = mem[_17 + ceil32(return_data.size) + 128 len floor32(mem[_17 + ceil32(return_data.size) + 96])]
        idx = 0
        s = 0
        while idx < mem[(2 * ceil32(return_data.size)) + 96]:
            require idx < mem[(2 * ceil32(return_data.size)) + 96]
            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20] != address(ext_call.return_data[32]):
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 1
            continue 
        if s:
            mem[(32 * _25) + (2 * ceil32(return_data.size)) + 132] = this.address
            require ext_code.size(address(ext_call.return_data[32]))
            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * _25) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 128] = 0x1249c58b00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(ext_call.return_data[32]))
                if arg2 == -1:
                    call address(ext_call.return_data[32]).mint() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132 len 5 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = this.address
                    require ext_code.size(address(ext_call.return_data[32]))
                    staticcall address(ext_call.return_data[32]).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        mem[(32 * _25) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = 32
                        mem[(32 * _25) + (4 * ceil32(return_data.size)) + 164] = 30
                        mem[(32 * _25) + (4 * ceil32(return_data.size)) + 196] = 'SafeMath: subtraction overflow'
                        revert with memory
                          from (32 * _25) + (4 * ceil32(return_data.size)) + 128
                           len (7 * ceil32(return_data.size)) + 100
                    if arg4:
                        mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = arg4
                        mem[(32 * _25) + (4 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132 len (7 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _25) + (4 * ceil32(return_data.size)) + 288] = address(ext_call.return_data[0])
                    mem[(32 * _25) + (4 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[32])
                    mem[(32 * _25) + (4 * ceil32(return_data.size)) + 352] = eth.balance(this.address)
                else:
                    call address(ext_call.return_data[32]).mint() with:
                       value arg2 wei
                         gas gas_remaining wei
                        args mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132 len 5 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = this.address
                    require ext_code.size(address(ext_call.return_data[32]))
                    staticcall address(ext_call.return_data[32]).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        mem[(32 * _25) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = 32
                        mem[(32 * _25) + (4 * ceil32(return_data.size)) + 164] = 30
                        mem[(32 * _25) + (4 * ceil32(return_data.size)) + 196] = 'SafeMath: subtraction overflow'
                        revert with memory
                          from (32 * _25) + (4 * ceil32(return_data.size)) + 128
                           len (7 * ceil32(return_data.size)) + 100
                    if arg4:
                        mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = arg4
                        mem[(32 * _25) + (4 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132 len (7 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _25) + (4 * ceil32(return_data.size)) + 288] = address(ext_call.return_data[0])
                    mem[(32 * _25) + (4 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[32])
                    mem[(32 * _25) + (4 * ceil32(return_data.size)) + 352] = arg2
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 384] = 0
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 416] = arg3
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 448] = arg4
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 480] = 64
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 544] = 66
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 576 len 96] = 0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _25) + (4 * ceil32(return_data.size)) + 226 len 30]
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 642] = 0
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 512] = 192
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 672] = (7 * ceil32(return_data.size)) + 192
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 704 len ceil32(7 * ceil32(return_data.size)) + 6] = mem[(32 * _25) + (4 * ceil32(return_data.size)) + 288 len ceil32(7 * ceil32(return_data.size)) + 6]
                return 64, 
                       192,
                       66,
                       0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _25) + (4 * ceil32(return_data.size)) + 226 len 30] >> 272,
                       0,
                       (7 * ceil32(return_data.size)) + 192,
                       mem[(32 * _25) + (4 * ceil32(return_data.size)) + 704 len ceil32(7 * ceil32(return_data.size)) + 6]
            if arg2 != -1:
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[32])
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 164] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[32])
                    mem[(32 * _25) + (4 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[32])
                    mem[(32 * _25) + (4 * ceil32(return_data.size)) + 164] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = arg2
                require ext_code.size(address(ext_call.return_data[32]))
                call address(ext_call.return_data[32]).mint(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    mem[(32 * _25) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = 32
                    mem[(32 * _25) + (4 * ceil32(return_data.size)) + 164] = 23
                    mem[(32 * _25) + (4 * ceil32(return_data.size)) + 196] = 'deposit-qitoken-failed.'
                    revert with memory
                      from (32 * _25) + (4 * ceil32(return_data.size)) + 128
                       len (7 * ceil32(return_data.size)) + 100
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = this.address
                require ext_code.size(address(ext_call.return_data[32]))
                staticcall address(ext_call.return_data[32]).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132 len (7 * ceil32(return_data.size)) + 32]
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    mem[(32 * _25) + (8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _25) + (8 * ceil32(return_data.size)) + 132] = 32
                    mem[(32 * _25) + (8 * ceil32(return_data.size)) + 164] = 30
                    mem[(32 * _25) + (8 * ceil32(return_data.size)) + 196] = 'SafeMath: subtraction overflow'
                    revert with memory
                      from (32 * _25) + (8 * ceil32(return_data.size)) + 128
                       len (13 * ceil32(return_data.size)) + 100
                if arg4:
                    mem[(32 * _25) + (8 * ceil32(return_data.size)) + 132] = arg4
                    mem[(32 * _25) + (8 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[(32 * _25) + (8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _25) + (8 * ceil32(return_data.size)) + 288] = address(ext_call.return_data[0])
                mem[(32 * _25) + (8 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[32])
                mem[(32 * _25) + (8 * ceil32(return_data.size)) + 352] = arg2
                mem[(32 * _25) + (8 * ceil32(return_data.size)) + 384] = 0
                mem[(32 * _25) + (8 * ceil32(return_data.size)) + 416] = arg3
                mem[(32 * _25) + (8 * ceil32(return_data.size)) + 448] = arg4
                mem[(32 * _25) + (8 * ceil32(return_data.size)) + 480] = 64
                mem[(32 * _25) + (8 * ceil32(return_data.size)) + 544] = 66
                mem[(32 * _25) + (8 * ceil32(return_data.size)) + 576 len 96] = 0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _25) + (8 * ceil32(return_data.size)) + 226 len 30]
                mem[(32 * _25) + (8 * ceil32(return_data.size)) + 642] = 0
                mem[(32 * _25) + (8 * ceil32(return_data.size)) + 512] = 192
                mem[(32 * _25) + (8 * ceil32(return_data.size)) + 672] = (13 * ceil32(return_data.size)) + 192
                mem[(32 * _25) + (8 * ceil32(return_data.size)) + 704 len ceil32(13 * ceil32(return_data.size)) + 6] = mem[(32 * _25) + (8 * ceil32(return_data.size)) + 288 len ceil32(13 * ceil32(return_data.size)) + 6]
                return 64, 
                       192,
                       66,
                       0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _25) + (8 * ceil32(return_data.size)) + 226 len 30] >> 272,
                       0,
                       (13 * ceil32(return_data.size)) + 192,
                       mem[(32 * _25) + (8 * ceil32(return_data.size)) + 704 len ceil32(13 * ceil32(return_data.size)) + 6]
            mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[32])
            mem[(32 * _25) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132 len (7 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[32])
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132 len (7 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[32])
                mem[(32 * _25) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132 len (7 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).mint(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[(32 * _25) + (4 * ceil32(return_data.size)) + 132 len (7 * ceil32(return_data.size)) + 32]
            mem[(32 * _25) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                mem[(32 * _25) + (8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _25) + (8 * ceil32(return_data.size)) + 132] = 32
                mem[(32 * _25) + (8 * ceil32(return_data.size)) + 164] = 23
                mem[(32 * _25) + (8 * ceil32(return_data.size)) + 196] = 'deposit-qitoken-failed.'
                revert with memory
                  from (32 * _25) + (8 * ceil32(return_data.size)) + 128
                   len (13 * ceil32(return_data.size)) + 100
            mem[(32 * _25) + (8 * ceil32(return_data.size)) + 132] = this.address
            require ext_code.size(address(ext_call.return_data[32]))
            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(32 * _25) + (8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 
                            'SafeMath: subtraction overflow',
                            mem[(32 * _25) + (9 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
            if arg4:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg4, 0, mem[(32 * _25) + (9 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _25) + (9 * ceil32(return_data.size)) + 288] = address(ext_call.return_data[0])
            mem[(32 * _25) + (9 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[32])
            mem[(32 * _25) + (9 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
            mem[(32 * _25) + (9 * ceil32(return_data.size)) + 384] = 0
            mem[(32 * _25) + (9 * ceil32(return_data.size)) + 416] = arg3
            mem[(32 * _25) + (9 * ceil32(return_data.size)) + 448] = arg4
            mem[(32 * _25) + (9 * ceil32(return_data.size)) + 480] = 64
            mem[(32 * _25) + (9 * ceil32(return_data.size)) + 544] = 66
            mem[(32 * _25) + (9 * ceil32(return_data.size)) + 576 len 96] = 0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _25) + (9 * ceil32(return_data.size)) + 226 len 30]
            mem[(32 * _25) + (9 * ceil32(return_data.size)) + 642] = 0
            mem[(32 * _25) + (9 * ceil32(return_data.size)) + 512] = 192
            mem[(32 * _25) + (9 * ceil32(return_data.size)) + 672] = (4 * ceil32(return_data.size)) + 192
            mem[(32 * _25) + (9 * ceil32(return_data.size)) + 704 len ceil32(4 * ceil32(return_data.size)) + 6] = mem[(32 * _25) + (9 * ceil32(return_data.size)) + 288 len ceil32(4 * ceil32(return_data.size)) + 6]
            return 64, 
                   192,
                   66,
                   0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _25) + (9 * ceil32(return_data.size)) + 226 len 30] >> 272,
                   0,
                   (4 * ceil32(return_data.size)) + 192,
                   mem[(32 * _25) + (9 * ceil32(return_data.size)) + 704 len ceil32(4 * ceil32(return_data.size)) + 6]
        mem[(32 * _25) + (2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[32])
        mem[(32 * _25) + (2 * ceil32(return_data.size)) + 192] = 0xc299823800000000000000000000000000000000000000000000000000000000
        mem[(32 * _25) + (2 * ceil32(return_data.size)) + 196] = 32
        mem[(32 * _25) + (2 * ceil32(return_data.size)) + 228] = 1
        mem[(32 * _25) + (2 * ceil32(return_data.size)) + 260 len 0] = None
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.enterMarkets(address[] rg1) with:
             gas gas_remaining wei
            args Array(len=1, data=mem[(32 * _25) + (2 * ceil32(return_data.size)) + 260])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _25) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _25) + (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _1996 = mem[(32 * _25) + (2 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(32 * _25) + (2 * ceil32(return_data.size)) + 192 len 4], 0 <= 4294967296
        require mem[(32 * _25) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + 32 <= return_data.size
        require mem[mem[(32 * _25) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * _25) + (2 * ceil32(return_data.size)) + 192] <= 4294967296 and mem[(32 * _25) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * mem[mem[(32 * _25) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * _25) + (2 * ceil32(return_data.size)) + 192]) + 32 <= return_data.size
        mem[(32 * _25) + (4 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _25) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * _25) + (2 * ceil32(return_data.size)) + 192]
        _2002 = mem[_1996 + (32 * _25) + (2 * ceil32(return_data.size)) + 192]
        mem[(32 * _25) + (4 * ceil32(return_data.size)) + 224 len floor32(mem[_1996 + (32 * _25) + (2 * ceil32(return_data.size)) + 192])] = mem[_1996 + (32 * _25) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1996 + (32 * _25) + (2 * ceil32(return_data.size)) + 192])]
        mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(address(ext_call.return_data[32]))
        staticcall address(ext_call.return_data[32]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 224] = 0x1249c58b00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(ext_call.return_data[32]))
            if arg2 == -1:
                call address(ext_call.return_data[32]).mint() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(address(ext_call.return_data[32]))
                staticcall address(ext_call.return_data[32]).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
                mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 228] = 32
                    mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 260] = 30
                    mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 292] = 'SafeMath: subtraction overflow'
                    revert with memory
                      from (32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 224
                       len (5 * ceil32(return_data.size)) + 100
                if arg4:
                    mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 228] = arg4
                    mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 260] = 0
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 384] = address(ext_call.return_data[0])
                mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 416] = address(ext_call.return_data[32])
                mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 448] = eth.balance(this.address)
            else:
                call address(ext_call.return_data[32]).mint() with:
                   value arg2 wei
                     gas gas_remaining wei
                    args mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(address(ext_call.return_data[32]))
                staticcall address(ext_call.return_data[32]).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
                mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 228] = 32
                    mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 260] = 30
                    mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 292] = 'SafeMath: subtraction overflow'
                    revert with memory
                      from (32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 224
                       len (5 * ceil32(return_data.size)) + 100
                if arg4:
                    mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 228] = arg4
                    mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 260] = 0
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 384] = address(ext_call.return_data[0])
                mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 416] = address(ext_call.return_data[32])
                mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 448] = arg2
            mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 480] = 0
            mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 512] = arg3
            mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 544] = arg4
            mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 576] = 64
            mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 640] = 66
            mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 672 len 96] = 0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 322 len 30]
            mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 738] = 0
            mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 608] = 192
            mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 768] = (5 * ceil32(return_data.size)) + 192
            mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 800 len ceil32(5 * ceil32(return_data.size)) + 6] = mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 384 len ceil32(5 * ceil32(return_data.size)) + 6]
            return 64, 
                   192,
                   66,
                   0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 322 len 30] >> 272,
                   0,
                   (5 * ceil32(return_data.size)) + 192,
                   mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 800 len ceil32(5 * ceil32(return_data.size)) + 6]
        if arg2 == -1:
            mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
            mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 228] = address(ext_call.return_data[32])
            mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 228] = address(ext_call.return_data[32])
                mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 260] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 228] = address(ext_call.return_data[32])
                mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).mint(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 
                            'deposit-qitoken-failed.',
                            mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
            require ext_code.size(address(ext_call.return_data[32]))
            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address), mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg4:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg4, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   192,
                   66,
                   0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2002) + (32 * _25) + (10 * ceil32(return_data.size)) + 322 len 30] >> 272,
                   0,
                   192,
                   address(ext_call.return_data[0]),
                   address(ext_call.return_data[32]),
                   ext_call.return_data[0],
                   0,
                   arg3,
                   arg4
        mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 228] = address(ext_call.return_data[32])
        mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 260] = arg2
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
        if not ext_call.success:
            mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 228] = address(ext_call.return_data[32])
            mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 260] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 228] = address(ext_call.return_data[32])
            mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 260] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 228] = arg2
        require ext_code.size(address(ext_call.return_data[32]))
        call address(ext_call.return_data[32]).mint(uint256 rg1) with:
             gas gas_remaining wei
            args mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
        mem[(32 * _2002) + (32 * _25) + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 228] = 32
            mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 260] = 23
            mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 292] = 'deposit-qitoken-failed.'
            revert with memory
              from (32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 224
               len (5 * ceil32(return_data.size)) + 100
        mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(address(ext_call.return_data[32]))
        staticcall address(ext_call.return_data[32]).0x70a08231 with:
                gas gas_remaining wei
               args mem[(32 * _2002) + (32 * _25) + (8 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 
                        'SafeMath: subtraction overflow',
                        mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
        if arg4:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg4, 0, mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 292 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 384] = address(ext_call.return_data[0])
        mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 416] = address(ext_call.return_data[32])
        mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 448] = arg2
        mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 480] = 0
        mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 512] = arg3
        mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 544] = arg4
        mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 576] = 64
        mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 640] = 66
        mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 672 len 96] = 0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 322 len 30]
        mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 738] = 0
        mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 608] = 192
        mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 768] = (8 * ceil32(return_data.size)) + 192
        mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 800 len ceil32(8 * ceil32(return_data.size)) + 6] = mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 384 len ceil32(8 * ceil32(return_data.size)) + 6]
        return 64, 
               192,
               66,
               0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 322 len 30] >> 272,
               0,
               (8 * ceil32(return_data.size)) + 192,
               mem[(32 * _2002) + (32 * _25) + (9 * ceil32(return_data.size)) + 800 len ceil32(8 * ceil32(return_data.size)) + 6]
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 rg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        revert with 0, 'invalid token/qitoken address'
    if not address(ext_call.return_data[32]):
        revert with 0, 'invalid token/qitoken address'
    mem[ceil32(return_data.size) + 96] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.getAssetsIn(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _26 = mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64
    require mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 <= 4294967296
    require mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + 32 <= return_data.size
    require mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + (32 * mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + 96]) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 96] = mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + 96]
    _33 = mem[_26 + ceil32(return_data.size) + 96]
    mem[(2 * ceil32(return_data.size)) + 128 len floor32(mem[_26 + ceil32(return_data.size) + 96])] = mem[_26 + ceil32(return_data.size) + 128 len floor32(mem[_26 + ceil32(return_data.size) + 96])]
    idx = 0
    s = 0
    while idx < mem[(2 * ceil32(return_data.size)) + 96]:
        require idx < mem[(2 * ceil32(return_data.size)) + 96]
        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20] != address(ext_call.return_data[32]):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if s:
        mem[(32 * _33) + (2 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(address(ext_call.return_data[32]))
        staticcall address(ext_call.return_data[32]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * _33) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 128] = 0x1249c58b00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(ext_call.return_data[32]))
            if ext_call.return_data[0] == -1:
                call address(ext_call.return_data[32]).mint() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = this.address
                require ext_code.size(address(ext_call.return_data[32]))
                staticcall address(ext_call.return_data[32]).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    mem[(32 * _33) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = 32
                    mem[(32 * _33) + (4 * ceil32(return_data.size)) + 164] = 30
                    mem[(32 * _33) + (4 * ceil32(return_data.size)) + 196] = 'SafeMath: subtraction overflow'
                    revert with memory
                      from (32 * _33) + (4 * ceil32(return_data.size)) + 128
                       len (7 * ceil32(return_data.size)) + 100
                if arg4:
                    mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = arg4
                    mem[(32 * _33) + (4 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132 len (7 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _33) + (4 * ceil32(return_data.size)) + 288] = address(ext_call.return_data[0])
                mem[(32 * _33) + (4 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[32])
                mem[(32 * _33) + (4 * ceil32(return_data.size)) + 352] = eth.balance(this.address)
            else:
                call address(ext_call.return_data[32]).mint() with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = this.address
                require ext_code.size(address(ext_call.return_data[32]))
                staticcall address(ext_call.return_data[32]).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    mem[(32 * _33) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = 32
                    mem[(32 * _33) + (4 * ceil32(return_data.size)) + 164] = 30
                    mem[(32 * _33) + (4 * ceil32(return_data.size)) + 196] = 'SafeMath: subtraction overflow'
                    revert with memory
                      from (32 * _33) + (4 * ceil32(return_data.size)) + 128
                       len (7 * ceil32(return_data.size)) + 100
                if arg4:
                    mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = arg4
                    mem[(32 * _33) + (4 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132 len (7 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _33) + (4 * ceil32(return_data.size)) + 288] = address(ext_call.return_data[0])
                mem[(32 * _33) + (4 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[32])
                mem[(32 * _33) + (4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 384] = 0
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 416] = arg3
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 448] = arg4
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 480] = 64
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 544] = 66
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 576 len 96] = 0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _33) + (4 * ceil32(return_data.size)) + 226 len 30]
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 642] = 0
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 512] = 192
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 672] = (7 * ceil32(return_data.size)) + 192
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 704 len ceil32(7 * ceil32(return_data.size)) + 6] = mem[(32 * _33) + (4 * ceil32(return_data.size)) + 288 len ceil32(7 * ceil32(return_data.size)) + 6]
            return 64, 
                   192,
                   66,
                   0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _33) + (4 * ceil32(return_data.size)) + 226 len 30] >> 272,
                   0,
                   (7 * ceil32(return_data.size)) + 192,
                   mem[(32 * _33) + (4 * ceil32(return_data.size)) + 704 len ceil32(7 * ceil32(return_data.size)) + 6]
        if ext_call.return_data[0] != -1:
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[32])
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[32])
                mem[(32 * _33) + (4 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[32])
                mem[(32 * _33) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).mint(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                mem[(32 * _33) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = 32
                mem[(32 * _33) + (4 * ceil32(return_data.size)) + 164] = 23
                mem[(32 * _33) + (4 * ceil32(return_data.size)) + 196] = 'deposit-qitoken-failed.'
                revert with memory
                  from (32 * _33) + (4 * ceil32(return_data.size)) + 128
                   len (7 * ceil32(return_data.size)) + 100
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = this.address
            require ext_code.size(address(ext_call.return_data[32]))
            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132 len (7 * ceil32(return_data.size)) + 32]
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                mem[(32 * _33) + (8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _33) + (8 * ceil32(return_data.size)) + 132] = 32
                mem[(32 * _33) + (8 * ceil32(return_data.size)) + 164] = 30
                mem[(32 * _33) + (8 * ceil32(return_data.size)) + 196] = 'SafeMath: subtraction overflow'
                revert with memory
                  from (32 * _33) + (8 * ceil32(return_data.size)) + 128
                   len (13 * ceil32(return_data.size)) + 100
            if arg4:
                mem[(32 * _33) + (8 * ceil32(return_data.size)) + 132] = arg4
                mem[(32 * _33) + (8 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _33) + (8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _33) + (8 * ceil32(return_data.size)) + 288] = address(ext_call.return_data[0])
            mem[(32 * _33) + (8 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[32])
            mem[(32 * _33) + (8 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
            mem[(32 * _33) + (8 * ceil32(return_data.size)) + 384] = 0
            mem[(32 * _33) + (8 * ceil32(return_data.size)) + 416] = arg3
            mem[(32 * _33) + (8 * ceil32(return_data.size)) + 448] = arg4
            mem[(32 * _33) + (8 * ceil32(return_data.size)) + 480] = 64
            mem[(32 * _33) + (8 * ceil32(return_data.size)) + 544] = 66
            mem[(32 * _33) + (8 * ceil32(return_data.size)) + 576 len 96] = 0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _33) + (8 * ceil32(return_data.size)) + 226 len 30]
            mem[(32 * _33) + (8 * ceil32(return_data.size)) + 642] = 0
            mem[(32 * _33) + (8 * ceil32(return_data.size)) + 512] = 192
            mem[(32 * _33) + (8 * ceil32(return_data.size)) + 672] = (13 * ceil32(return_data.size)) + 192
            mem[(32 * _33) + (8 * ceil32(return_data.size)) + 704 len ceil32(13 * ceil32(return_data.size)) + 6] = mem[(32 * _33) + (8 * ceil32(return_data.size)) + 288 len ceil32(13 * ceil32(return_data.size)) + 6]
            return 64, 
                   192,
                   66,
                   0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _33) + (8 * ceil32(return_data.size)) + 226 len 30] >> 272,
                   0,
                   (13 * ceil32(return_data.size)) + 192,
                   mem[(32 * _33) + (8 * ceil32(return_data.size)) + 704 len ceil32(13 * ceil32(return_data.size)) + 6]
        mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[32])
        mem[(32 * _33) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132 len (7 * ceil32(return_data.size)) + 64]
        if not ext_call.success:
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[32])
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 164] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132 len (7 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[32])
            mem[(32 * _33) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132 len (7 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[32]))
        call address(ext_call.return_data[32]).mint(uint256 rg1) with:
             gas gas_remaining wei
            args mem[(32 * _33) + (4 * ceil32(return_data.size)) + 132 len (7 * ceil32(return_data.size)) + 32]
        mem[(32 * _33) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            mem[(32 * _33) + (8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _33) + (8 * ceil32(return_data.size)) + 132] = 32
            mem[(32 * _33) + (8 * ceil32(return_data.size)) + 164] = 23
            mem[(32 * _33) + (8 * ceil32(return_data.size)) + 196] = 'deposit-qitoken-failed.'
            revert with memory
              from (32 * _33) + (8 * ceil32(return_data.size)) + 128
               len (13 * ceil32(return_data.size)) + 100
        mem[(32 * _33) + (8 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(address(ext_call.return_data[32]))
        staticcall address(ext_call.return_data[32]).0x70a08231 with:
                gas gas_remaining wei
               args mem[(32 * _33) + (8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 
                        'SafeMath: subtraction overflow',
                        mem[(32 * _33) + (9 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
        if arg4:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg4, 0, mem[(32 * _33) + (9 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _33) + (9 * ceil32(return_data.size)) + 288] = address(ext_call.return_data[0])
        mem[(32 * _33) + (9 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[32])
        mem[(32 * _33) + (9 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
        mem[(32 * _33) + (9 * ceil32(return_data.size)) + 384] = 0
        mem[(32 * _33) + (9 * ceil32(return_data.size)) + 416] = arg3
        mem[(32 * _33) + (9 * ceil32(return_data.size)) + 448] = arg4
        mem[(32 * _33) + (9 * ceil32(return_data.size)) + 480] = 64
        mem[(32 * _33) + (9 * ceil32(return_data.size)) + 544] = 66
        mem[(32 * _33) + (9 * ceil32(return_data.size)) + 576 len 96] = 0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _33) + (9 * ceil32(return_data.size)) + 226 len 30]
        mem[(32 * _33) + (9 * ceil32(return_data.size)) + 642] = 0
        mem[(32 * _33) + (9 * ceil32(return_data.size)) + 512] = 192
        mem[(32 * _33) + (9 * ceil32(return_data.size)) + 672] = (4 * ceil32(return_data.size)) + 192
        mem[(32 * _33) + (9 * ceil32(return_data.size)) + 704 len ceil32(4 * ceil32(return_data.size)) + 6] = mem[(32 * _33) + (9 * ceil32(return_data.size)) + 288 len ceil32(4 * ceil32(return_data.size)) + 6]
        return 64, 
               192,
               66,
               0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _33) + (9 * ceil32(return_data.size)) + 226 len 30] >> 272,
               0,
               (4 * ceil32(return_data.size)) + 192,
               mem[(32 * _33) + (9 * ceil32(return_data.size)) + 704 len ceil32(4 * ceil32(return_data.size)) + 6]
    mem[(32 * _33) + (2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[32])
    mem[(32 * _33) + (2 * ceil32(return_data.size)) + 192] = 0xc299823800000000000000000000000000000000000000000000000000000000
    mem[(32 * _33) + (2 * ceil32(return_data.size)) + 196] = 32
    mem[(32 * _33) + (2 * ceil32(return_data.size)) + 228] = 1
    mem[(32 * _33) + (2 * ceil32(return_data.size)) + 260 len 0] = None
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.enterMarkets(address[] rg1) with:
         gas gas_remaining wei
        args Array(len=1, data=mem[(32 * _33) + (2 * ceil32(return_data.size)) + 260])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _33) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _33) + (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _1998 = mem[(32 * _33) + (2 * ceil32(return_data.size)) + 192 len 4], 0
    require mem[(32 * _33) + (2 * ceil32(return_data.size)) + 192 len 4], 0 <= 4294967296
    require mem[(32 * _33) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + 32 <= return_data.size
    require mem[mem[(32 * _33) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * _33) + (2 * ceil32(return_data.size)) + 192] <= 4294967296 and mem[(32 * _33) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * mem[mem[(32 * _33) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * _33) + (2 * ceil32(return_data.size)) + 192]) + 32 <= return_data.size
    mem[(32 * _33) + (4 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _33) + (2 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * _33) + (2 * ceil32(return_data.size)) + 192]
    _2003 = mem[_1998 + (32 * _33) + (2 * ceil32(return_data.size)) + 192]
    mem[(32 * _33) + (4 * ceil32(return_data.size)) + 224 len floor32(mem[_1998 + (32 * _33) + (2 * ceil32(return_data.size)) + 192])] = mem[_1998 + (32 * _33) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1998 + (32 * _33) + (2 * ceil32(return_data.size)) + 192])]
    mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(address(ext_call.return_data[32]))
    staticcall address(ext_call.return_data[32]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if address(ext_call.return_data[0]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 224] = 0x1249c58b00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[32]))
        if ext_call.return_data[0] == -1:
            call address(ext_call.return_data[32]).mint() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(address(ext_call.return_data[32]))
            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
            mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 228] = 32
                mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 260] = 30
                mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 292] = 'SafeMath: subtraction overflow'
                revert with memory
                  from (32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 224
                   len (5 * ceil32(return_data.size)) + 100
            if arg4:
                mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 228] = arg4
                mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 260] = 0
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 384] = address(ext_call.return_data[0])
            mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 416] = address(ext_call.return_data[32])
            mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 448] = eth.balance(this.address)
        else:
            call address(ext_call.return_data[32]).mint() with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(address(ext_call.return_data[32]))
            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
            mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 228] = 32
                mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 260] = 30
                mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 292] = 'SafeMath: subtraction overflow'
                revert with memory
                  from (32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 224
                   len (5 * ceil32(return_data.size)) + 100
            if arg4:
                mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 228] = arg4
                mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 260] = 0
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 384] = address(ext_call.return_data[0])
            mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 416] = address(ext_call.return_data[32])
            mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
        mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 480] = 0
        mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 512] = arg3
        mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 544] = arg4
        mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 576] = 64
        mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 640] = 66
        mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 672 len 96] = 0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 322 len 30]
        mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 738] = 0
        mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 608] = 192
        mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 768] = (5 * ceil32(return_data.size)) + 192
        mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 800 len ceil32(5 * ceil32(return_data.size)) + 6] = mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 384 len ceil32(5 * ceil32(return_data.size)) + 6]
        return 64, 
               192,
               66,
               0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 322 len 30] >> 272,
               0,
               (5 * ceil32(return_data.size)) + 192,
               mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 800 len ceil32(5 * ceil32(return_data.size)) + 6]
    if ext_call.return_data[0] == -1:
        mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
        mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 228] = address(ext_call.return_data[32])
        mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
        if not ext_call.success:
            mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 228] = address(ext_call.return_data[32])
            mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 260] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 228] = address(ext_call.return_data[32])
            mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[32]))
        call address(ext_call.return_data[32]).mint(uint256 rg1) with:
             gas gas_remaining wei
            args mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 
                        'deposit-qitoken-failed.',
                        mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
        require ext_code.size(address(ext_call.return_data[32]))
        staticcall address(ext_call.return_data[32]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address), mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg4:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg4, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               192,
               66,
               0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2003) + (32 * _33) + (10 * ceil32(return_data.size)) + 322 len 30] >> 272,
               0,
               192,
               address(ext_call.return_data[0]),
               address(ext_call.return_data[32]),
               ext_call.return_data[0],
               0,
               arg3,
               arg4
    mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 228] = address(ext_call.return_data[32])
    mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
    if not ext_call.success:
        mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 228] = address(ext_call.return_data[32])
        mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 260] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 228] = address(ext_call.return_data[32])
        mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).mint(uint256 rg1) with:
         gas gas_remaining wei
        args mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
    mem[(32 * _2003) + (32 * _33) + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 228] = 32
        mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 260] = 23
        mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 292] = 'deposit-qitoken-failed.'
        revert with memory
          from (32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 224
           len (5 * ceil32(return_data.size)) + 100
    mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(address(ext_call.return_data[32]))
    staticcall address(ext_call.return_data[32]).0x70a08231 with:
            gas gas_remaining wei
           args mem[(32 * _2003) + (32 * _33) + (8 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 
                    'SafeMath: subtraction overflow',
                    mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
    if arg4:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg4, 0, mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 292 len 9 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 384] = address(ext_call.return_data[0])
    mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 416] = address(ext_call.return_data[32])
    mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
    mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 480] = 0
    mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 512] = arg3
    mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 544] = arg4
    mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 576] = 64
    mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 640] = 66
    mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 672 len 96] = 0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 322 len 30]
    mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 738] = 0
    mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 608] = 192
    mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 768] = (8 * ceil32(return_data.size)) + 192
    mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 800 len ceil32(8 * ceil32(return_data.size)) + 6] = mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 384 len ceil32(8 * ceil32(return_data.size)) + 6]
    return 64, 
           192,
           66,
           0x294c6f674465706f7369745169546f6b656e28616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 322 len 30] >> 272,
           0,
           (8 * ceil32(return_data.size)) + 192,
           mem[(32 * _2003) + (32 * _33) + (9 * ceil32(return_data.size)) + 800 len ceil32(8 * ceil32(return_data.size)) + 6]
}



}
