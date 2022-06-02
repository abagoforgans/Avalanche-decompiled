contract main {




// =====================  Runtime code  =====================


address stor0;

function over() payable {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function withdrawERC20(address arg1) payable {
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
    mem[100] = this.address
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[ceil32(return_data.size) + 160] = 0xae4aa155d2987b454c29450ef4f862cf00907b61
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xb5b2444edf79b00d40f463f79158d1187a0d0c25, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0] / 10
    mem[ceil32(return_data.size) + 228] = 0
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp
    require ext_code.size(0xb5b2444edf79b00d40f463f79158d1187a0d0c25)
    call 0xb5b2444edf79b00d40f463f79158d1187a0d0c25.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0] / 10, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
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
    mem[(4 * ceil32(return_data.size)) + 192] = 2
    mem[(4 * ceil32(return_data.size)) + 224 len 64] = call.data[calldata.size len 64]
    mem[ceil32(return_data.size) + 128] = 0xae4aa155d2987b454c29450ef4f862cf00907b61
    mem[ceil32(return_data.size) + 160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    require ext_code.size(0xae4aa155d2987b454c29450ef4f862cf00907b61)
    call 0xae4aa155d2987b454c29450ef4f862cf00907b61.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xb5b2444edf79b00d40f463f79158d1187a0d0c25, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 356] = 160
    mem[(4 * ceil32(return_data.size)) + 452] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 224
    t = (4 * ceil32(return_data.size)) + 484
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 388] = this.address
    mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
    require ext_code.size(0xb5b2444edf79b00d40f463f79158d1187a0d0c25)
    call 0xb5b2444edf79b00d40f463f79158d1187a0d0c25.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 484 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 288] = 2
    mem[(4 * ceil32(return_data.size)) + 320 len 64] = call.data[calldata.size len 64]
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    mem[ceil32(return_data.size) + 128] = 0x97d367a5f900f5c9db4370d0d801fc52332244c7
    if 1 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    mem[ceil32(return_data.size) + 160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    require ext_code.size(0xae4aa155d2987b454c29450ef4f862cf00907b61)
    call 0xae4aa155d2987b454c29450ef4f862cf00907b61.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xb5b2444edf79b00d40f463f79158d1187a0d0c25, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
    idx = 0
    s = (4 * ceil32(return_data.size)) + 320
    t = (4 * ceil32(return_data.size)) + 580
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0xb5b2444edf79b00d40f463f79158d1187a0d0c25)
    call 0xb5b2444edf79b00d40f463f79158d1187a0d0c25.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'This is wrong'
}



}
