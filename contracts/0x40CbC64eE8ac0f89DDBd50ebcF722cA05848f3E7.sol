contract main {




// =====================  Runtime code  =====================


address stor0;

function over() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function withdrawERC20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function asdasd() payable {
    require msg.sender == stor0
    require ext_code.size(0xb5b2444edf79b00d40f463f79158d1187a0d0c25)
    staticcall 0xb5b2444edf79b00d40f463f79158d1187a0d0c25.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = 0xae4aa155d2987b454c29450ef4f862cf00907b61
    mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    mem[ceil32(return_data.size) + 228] = 128
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 260] = this.address
    mem[ceil32(return_data.size) + 292] = block.timestamp
    require ext_code.size(0xb5b2444edf79b00d40f463f79158d1187a0d0c25)
    call 0xb5b2444edf79b00d40f463f79158d1187a0d0c25.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 196] = this.address
    require ext_code.size(0xae4aa155d2987b454c29450ef4f862cf00907b61)
    staticcall 0xae4aa155d2987b454c29450ef4f862cf00907b61.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 228] = -1
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x3d4186902be316b1870e57bf9f4ced37bdd0087a, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x3d4186902be316b1870e57bf9f4ced37bdd0087a)
    call 0x3d4186902be316b1870e57bf9f4ced37bdd0087a.stake(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 224 len 64] = call.data[calldata.size len 64]
    require ext_code.size(0xb5b2444edf79b00d40f463f79158d1187a0d0c25)
    staticcall 0xb5b2444edf79b00d40f463f79158d1187a0d0c25.WETH() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xae4aa155d2987b454c29450ef4f862cf00907b61)
    call 0xae4aa155d2987b454c29450ef4f862cf00907b61.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xb5b2444edf79b00d40f463f79158d1187a0d0c25, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
    idx = 0
    s = (4 * ceil32(return_data.size)) + 224
    t = (6 * ceil32(return_data.size)) + 484
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0xb5b2444edf79b00d40f463f79158d1187a0d0c25)
    call 0xb5b2444edf79b00d40f463f79158d1187a0d0c25.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], msg.value, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 484 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) <= msg.value:
        revert with 0, 'This is wrong'
}



}
