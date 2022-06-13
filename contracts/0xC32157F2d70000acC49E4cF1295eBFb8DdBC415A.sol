contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;

function _fallback() payable {
    revert
}

function sub_fa004127(?) payable {
    require calldata.size - 4 >= 32
    if stor5 != msg.sender:
        revert with 0, '1'
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args stor5, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 128] = stor0
    mem[ceil32(return_data.size) + 160] = stor2
    mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 0
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp
    require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
    call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 196] = this.address
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 224] = stor1
    mem[(6 * ceil32(return_data.size)) + 256] = stor0
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(7 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 356] = 160
    mem[(7 * ceil32(return_data.size)) + 452] = 2
    idx = 0
    s = (7 * ceil32(return_data.size)) + 484
    t = (6 * ceil32(return_data.size)) + 224
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(7 * ceil32(return_data.size)) + 388] = this.address
    mem[(7 * ceil32(return_data.size)) + 420] = block.timestamp
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 484 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0], mem[(9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e0a9a357(?) payable {
    require calldata.size - 4 >= 32
    if stor5 != msg.sender:
        revert with 0, '1'
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args stor5, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 128] = stor0
    mem[ceil32(return_data.size) + 160] = stor2
    mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 0
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp
    require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
    call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 196] = this.address
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 224] = stor1
    mem[(6 * ceil32(return_data.size)) + 256] = stor0
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(7 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 356] = 160
    mem[(7 * ceil32(return_data.size)) + 452] = 2
    idx = 0
    s = (7 * ceil32(return_data.size)) + 484
    t = (6 * ceil32(return_data.size)) + 224
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(7 * ceil32(return_data.size)) + 388] = this.address
    mem[(7 * ceil32(return_data.size)) + 420] = block.timestamp
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 484 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 2 * 10^18 > !arg1:
        revert with 0, 17
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg1 + 2 * 10^18:
        revert with 0, 'NP', mem[(9 * ceil32(return_data.size)) + 388 len 5 * ceil32(return_data.size)]
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0], mem[(11 * ceil32(return_data.size)) + 356 len 9 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_4ea4b0aa(?) payable {
    require calldata.size - 4 >= 32
    if stor5 != msg.sender:
        revert with 0, '1'
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args stor5, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 128] = stor0
    mem[ceil32(return_data.size) + 160] = stor1
    mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 0
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 196] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(stor4)
    call stor4.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], this.address
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.claim(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 196] = this.address
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.wrap(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(7 * ceil32(return_data.size)) + 192] = 2
    mem[(7 * ceil32(return_data.size)) + 224] = stor2
    mem[(7 * ceil32(return_data.size)) + 256] = stor0
    mem[(7 * ceil32(return_data.size)) + 292] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(8 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 324] = 0
    mem[(8 * ceil32(return_data.size)) + 356] = 160
    mem[(8 * ceil32(return_data.size)) + 452] = 2
    idx = 0
    s = (8 * ceil32(return_data.size)) + 484
    t = (7 * ceil32(return_data.size)) + 224
    while idx < mem[(7 * ceil32(return_data.size)) + 192]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(8 * ceil32(return_data.size)) + 388] = this.address
    mem[(8 * ceil32(return_data.size)) + 420] = block.timestamp
    require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
    call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[(8 * ceil32(return_data.size)) + 452 len (32 * mem[(7 * ceil32(return_data.size)) + 192]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_9b1f35b0(?) payable {
    require calldata.size - 4 >= 32
    if stor5 != msg.sender:
        revert with 0, '1'
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args stor5, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 128] = stor0
    mem[ceil32(return_data.size) + 160] = stor1
    mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 0
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 196] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(stor4)
    call stor4.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], this.address
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.claim(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 196] = this.address
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.wrap(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(7 * ceil32(return_data.size)) + 192] = 2
    mem[(7 * ceil32(return_data.size)) + 224] = stor2
    mem[(7 * ceil32(return_data.size)) + 256] = stor0
    mem[(7 * ceil32(return_data.size)) + 292] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(8 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 324] = 0
    mem[(8 * ceil32(return_data.size)) + 356] = 160
    mem[(8 * ceil32(return_data.size)) + 452] = 2
    idx = 0
    s = (8 * ceil32(return_data.size)) + 484
    t = (7 * ceil32(return_data.size)) + 224
    while idx < mem[(7 * ceil32(return_data.size)) + 192]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(8 * ceil32(return_data.size)) + 388] = this.address
    mem[(8 * ceil32(return_data.size)) + 420] = block.timestamp
    require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
    call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[(8 * ceil32(return_data.size)) + 452 len (32 * mem[(7 * ceil32(return_data.size)) + 192]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 2 * 10^18 > !arg1:
        revert with 0, 17
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg1 + 2 * 10^18:
        revert with 0, 'NP', mem[(10 * ceil32(return_data.size)) + 388 len 5 * ceil32(return_data.size)]
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 356 len 9 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
