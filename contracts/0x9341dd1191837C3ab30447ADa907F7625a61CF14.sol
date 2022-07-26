contract main {




// =====================  Runtime code  =====================


#
#  - sub_1e2de0d1(?)
#
const name = 'Aave-V3-Incentives-v1'


function _fallback() payable {
    revert
}

function sub_ab4d9348(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not arg4:
        if not arg1.length:
            revert with 0, 'invalid-assets'
        mem[260 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        mem[(32 * arg1.length) + 260] = 0
        require ext_code.size(0x929ec64c34a17401f460460d4b9390518e5b473e)
        call 0x929ec64c34a17401f460460d4b9390518e5b473e.0x236300dc with:
             gas gas_remaining wei
            args 0, 128, arg2, this.address, arg3, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)]
    else:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 arg1) with:
             gas gas_remaining wei
            args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1.length:
            revert with 0, 'invalid-assets'
        mem[260 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        mem[(32 * arg1.length) + 260] = 0
        require ext_code.size(0x929ec64c34a17401f460460d4b9390518e5b473e)
        call 0x929ec64c34a17401f460460d4b9390518e5b473e.0x236300dc with:
             gas gas_remaining wei
            args 0, 128, ext_call.return_data[0], this.address, arg3, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        if not ext_call.success:
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg5:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg5, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[256] = ext_call.return_data[0]
    mem[288] = arg4
    mem[320] = arg5
    mem[224] = 128
    mem[352] = arg1.length
    mem[384 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 384] = 0
    if not floor32(arg1.length) + 160 % 32:
        return 64, 
               160,
               45,
               0xfe4c6f67436c61696d656428616464726573735b5d2c75696e743235362c75696e743235362c75696e74323536,
               Mask(152, 32, this.address) >> 32,
               0,
               floor32(arg1.length) + 160,
               mem[224 len ceil32(floor32(arg1.length)) + 5],
               mem[floor32(arg1.length) + ceil32(floor32(arg1.length)) + 581 len floor32(arg1.length) + -ceil32(floor32(arg1.length)) + 155]
    mem[floor32(floor32(arg1.length) + 160) + floor32(arg1.length) + 576] = mem[floor32(floor32(arg1.length) + 160) + floor32(arg1.length) + -(floor32(arg1.length) + 160 % 32) + 608 len floor32(arg1.length) + 160 % 32]
    return 64, 
           160,
           45,
           0xfe4c6f67436c61696d656428616464726573735b5d2c75696e743235362c75696e743235362c75696e74323536,
           Mask(152, 32, this.address) >> 32,
           0,
           floor32(arg1.length) + 160,
           mem[224 len ceil32(floor32(arg1.length)) + 5],
           mem[floor32(arg1.length) + ceil32(floor32(arg1.length)) + 581 len floor32(floor32(arg1.length) + 160) + -ceil32(floor32(arg1.length)) + 27]
}



}
