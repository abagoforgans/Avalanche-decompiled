contract main {




// =====================  Runtime code  =====================


const name = 'Pangolin-Stake-v1'


function _fallback() payable {
    revert
}

function sub_7bf5776c(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.rewards(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.rewardsToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No rewards to claim'
    require ext_code.size(arg1)
    call arg1.getReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           47,
           0x294c6f67436c61696d504e475374616b6552657761726428616464726573732c75696e743235362c61646472657373,
           mem[(2 * ceil32(return_data.size)) + 175 len 17],
           mem[(2 * ceil32(return_data.size)) + 209 len 15],
           96,
           address(arg1),
           ext_call.return_data[0],
           address(ext_call.return_data[0])
}

function sub_a1040c0c(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.rewards(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.rewardsToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No balance to exit'
    require ext_code.size(arg1)
    call arg1.exit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           48,
           0x284c6f6745786974504e475374616b6528616464726573732c75696e743235362c75696e743235362c61646472657373,
           mem[(4 * ceil32(return_data.size)) + 176 len 16],
           mem[(4 * ceil32(return_data.size)) + 208 len 16],
           128,
           address(arg1),
           ext_call.return_data[0],
           ext_call.return_data[0],
           address(ext_call.return_data[0])
}

function sub_125f9b7f(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e9)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e9.poolLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'Invalid pid!'
    require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
    staticcall 0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9.pendingReward(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No rewards to claim'
    require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
    call ????????????????????????????????????????.harvest(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
    staticcall 0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9.lpToken(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return 64, 
           160,
           41,
           0x294c6f67436c61696d4c7052657761726428616464726573732c75696e743235362c75696e74323536,
           mem[(4 * ceil32(return_data.size)) + 169 len 23],
           mem[(4 * ceil32(return_data.size)) + 215 len 9],
           96,
           address(ext_call.return_data[0]),
           arg1,
           ext_call.return_data[0]
}

function sub_1d6bfcd8(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e9)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e9.poolLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'Invalid pid!'
    require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
    staticcall 0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9.0x93f1a40b with:
            gas gas_remaining wei
           args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((2 * ceil32(return_data.size)) + 160 <= test266151307())
    require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
    call ????????????????????????????????????????.emergencyWithdraw(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
    staticcall 0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9.lpToken(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return 64, 
           160,
           52,
           0x294c6f67456d657267656e637957697468647261774c705374616b6528616464726573732c75696e743235362c75696e74323536,
           mem[(4 * ceil32(return_data.size)) + 244 len 12],
           Mask(160, -256, mem[(4 * ceil32(return_data.size)) + 244 len 12]) << 352,
           96,
           address(ext_call.return_data[0]),
           arg1,
           ext_call.return_data[0]
}

function sub_d4714a63(?) payable {
    require calldata.size - 4 >= 128
    if not arg3:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Invalid amount, amount greater than balance of staking'
        if arg2 <= 0:
            revert with 0, 'Invalid amount, amount cannot be 0'
        require ext_code.size(arg1)
        call arg1.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg4, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               52,
               0xfe4c6f675769746864726177504e475374616b6528616464726573732c75696e743235362c75696e743235362c75696e74323536,
               mem[ceil32(return_data.size) + 180 len 12],
               Mask(160, -256, mem[ceil32(return_data.size) + 180 len 12]) << 352,
               128,
               address(arg1),
               arg2,
               arg3,
               arg4
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'Invalid amount, amount greater than balance of staking'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Invalid amount, amount cannot be 0'
    require ext_code.size(arg1)
    call arg1.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           52,
           0xfe4c6f675769746864726177504e475374616b6528616464726573732c75696e743235362c75696e743235362c75696e74323536,
           mem[ceil32(return_data.size) + 180 len 12],
           Mask(160, -256, mem[ceil32(return_data.size) + 180 len 12]) << 352,
           128,
           address(arg1),
           ext_call.return_data[0],
           arg3,
           arg4
}

function sub_1886a3e0(?) payable {
    require calldata.size - 4 >= 128
    if not arg3:
        require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e9)
        staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e9.poolLength() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 >= ext_call.return_data[0]:
            revert with 0, 'Invalid pid!'
        require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
        staticcall 0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9.0x93f1a40b with:
                gas gas_remaining wei
               args arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((2 * ceil32(return_data.size)) + 160 <= test266151307())
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Invalid amount, amount greater than balance of staking'
        if arg2 <= 0:
            revert with 0, 'Invalid amount, amount cannot be 0'
        mem[(2 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
        call ????????????????????????????????????????.withdraw(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args arg1, arg2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
        staticcall 0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9.lpToken(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg4:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg4, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               59,
               0x294c6f6757697468647261774c705374616b6528616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
               mem[(4 * ceil32(return_data.size)) + 251 len 5],
               Mask(216, -256, mem[(4 * ceil32(return_data.size)) + 251 len 5]) << 296,
               160,
               address(ext_call.return_data[0]),
               arg1,
               arg2,
               arg3,
               arg4
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e9)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e9.poolLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'Invalid pid!'
    require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
    staticcall 0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9.0x93f1a40b with:
            gas gas_remaining wei
           args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((2 * ceil32(return_data.size)) + 160 <= test266151307())
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'Invalid amount, amount greater than balance of staking'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Invalid amount, amount cannot be 0'
    mem[(2 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
    call ????????????????????????????????????????.withdraw(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
    staticcall 0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9.lpToken(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg4:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           59,
           0x294c6f6757697468647261774c705374616b6528616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
           mem[(4 * ceil32(return_data.size)) + 251 len 5],
           Mask(216, -256, mem[(4 * ceil32(return_data.size)) + 251 len 5]) << 296,
           160,
           address(ext_call.return_data[0]),
           arg1,
           ext_call.return_data[0],
           arg3,
           arg4
}

function sub_067cc6e9(?) payable {
    require calldata.size - 4 >= 128
    if not arg3:
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid amount, amount cannot be 0'
        require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
        staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Invalid PNG balance'
        require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
        staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Invalid amount, amount greater than balance of PNG'
        require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
        call 0x60781c2586d68229fde47564546784ab3faca982.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
            call 0x60781c2586d68229fde47564546784ab3faca982.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
            call 0x60781c2586d68229fde47564546784ab3faca982.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.stake(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg4, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               51,
               0x294c6f674465706f736974504e475374616b6528616464726573732c75696e743235362c75696e743235362c75696e74323536,
               mem[(2 * ceil32(return_data.size)) + 179 len 13],
               Mask(152, -256, mem[(2 * ceil32(return_data.size)) + 179 len 13]) << 360,
               128,
               address(arg1),
               arg2,
               arg3,
               arg4
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid amount, amount cannot be 0'
    require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
    staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Invalid PNG balance'
    require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
    staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'Invalid amount, amount greater than balance of PNG'
    require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
    call 0x60781c2586d68229fde47564546784ab3faca982.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
        call 0x60781c2586d68229fde47564546784ab3faca982.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
        call 0x60781c2586d68229fde47564546784ab3faca982.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.stake(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           51,
           0x294c6f674465706f736974504e475374616b6528616464726573732c75696e743235362c75696e743235362c75696e74323536,
           mem[(2 * ceil32(return_data.size)) + 179 len 13],
           Mask(152, -256, mem[(2 * ceil32(return_data.size)) + 179 len 13]) << 360,
           128,
           address(arg1),
           ext_call.return_data[0],
           arg3,
           arg4
}

function sub_cc5723f8(?) payable {
    require calldata.size - 4 >= 128
    if not arg3:
        require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e9)
        staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e9.poolLength() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 >= ext_call.return_data[0]:
            revert with 0, 'Invalid pid!'
        require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
        staticcall 0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9.0x93f1a40b with:
                gas gas_remaining wei
               args arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((2 * ceil32(return_data.size)) + 160 <= test266151307())
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Invalid amount, amount greater than balance of staking'
        if arg2 <= 0:
            revert with 0, 'Invalid amount, amount cannot be 0'
        require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
        staticcall 0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9.pendingReward(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
        call ????????????????????????????????????????.withdrawAndHarvest(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args arg1, arg2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
        staticcall 0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9.lpToken(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg4:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg4, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               192,
               70,
               0x294c6f6757697468647261774c70416e64436c61696d28616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(6 * ceil32(return_data.size)) + 262 len 26] >> 256,
               0,
               192,
               address(ext_call.return_data[0]),
               arg1,
               arg2,
               ext_call.return_data[0],
               arg3,
               arg4
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e9)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e9.poolLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'Invalid pid!'
    require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
    staticcall 0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9.0x93f1a40b with:
            gas gas_remaining wei
           args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((2 * ceil32(return_data.size)) + 160 <= test266151307())
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'Invalid amount, amount greater than balance of staking'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Invalid amount, amount cannot be 0'
    require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
    staticcall 0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9.pendingReward(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
    call ????????????????????????????????????????.withdrawAndHarvest(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
    staticcall 0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9.lpToken(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg4:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           192,
           70,
           0x294c6f6757697468647261774c70416e64436c61696d28616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e743235362c75696e74323536, mem[(6 * ceil32(return_data.size)) + 262 len 26] >> 256,
           0,
           192,
           address(ext_call.return_data[0]),
           arg1,
           ext_call.return_data[0],
           ext_call.return_data[0],
           arg3,
           arg4
}

function sub_9b5680b1(?) payable {
    require calldata.size - 4 >= 128
    if not arg3:
        require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e9)
        staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e9.poolLength() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 >= ext_call.return_data[0]:
            revert with 0, 'Invalid pid!'
        require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
        staticcall 0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9.lpToken(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg2 <= 0:
            revert with 0, 'Invalid amount, amount cannot be 0'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Invalid LP token balance'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Invalid amount, amount greater than balance of LP token'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x1f806f7c8ded893fd3cae279191ad7aa3798e9, arg2
        if not ext_call.success:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x1f806f7c8ded893fd3cae279191ad7aa3798e9, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x1f806f7c8ded893fd3cae279191ad7aa3798e9, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
        call ????????????????????????????????????????.deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args arg1, arg2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg4, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               58,
               0x294c6f674465706f7369744c705374616b6528616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
               0,
               Mask(208, -256, 0x294c6f674465706f7369744c705374616b6528616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, 0) << 304,
               160,
               address(ext_call.return_data[0]),
               arg1,
               arg2,
               arg3,
               arg4
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e9)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e9.poolLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'Invalid pid!'
    require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
    staticcall 0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9.lpToken(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Invalid amount, amount cannot be 0'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Invalid LP token balance'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'Invalid amount, amount greater than balance of LP token'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x1f806f7c8ded893fd3cae279191ad7aa3798e9, ext_call.return_data[0]
    if not ext_call.success:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x1f806f7c8ded893fd3cae279191ad7aa3798e9, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x1f806f7c8ded893fd3cae279191ad7aa3798e9, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x290000000000000000000000001f806f7c8ded893fd3cae279191ad7aa3798e9)
    call ????????????????????????????????????????.deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           58,
           0x294c6f674465706f7369744c705374616b6528616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
           0,
           Mask(208, -256, 0x294c6f674465706f7369744c705374616b6528616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536, 0) << 304,
           160,
           address(ext_call.return_data[0]),
           arg1,
           ext_call.return_data[0],
           arg3,
           arg4
}



}
