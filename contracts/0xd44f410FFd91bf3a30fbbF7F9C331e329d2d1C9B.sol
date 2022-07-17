contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
array of struct stor2;

function _fallback() payable {
    revert
}

function sub_a6cd688c(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == stor0
    call arg1 with:
       value msg.value wei
         gas gas_remaining wei
        args arg2[all]
}

function sub_6cc80c3e(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_861188ca(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'K'
    stor1 = arg1
    mem[128] = 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e
    require ext_code.size(0xe0100ab771e9288e0aa97e11557e6654c3a9665)
    call 0x0e0100ab771e9288e0aa97e11557e6654c3a9665.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, arg2, address(this.address), 128, 32, 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e)
    staticcall 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[164] = ext_call.return_data[0]
    mem[196] = 1
    mem[260] = stor0
    mem[292] = block.timestamp
    mem[228] = 160
    mem[324] = stor2.length
    if not stor2.length:
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, 160, stor0, block.timestamp, stor2.length
    else:
        mem[0] = 2
        mem[356] = address(stor2.field_0)
        idx = 356
        s = 0
        while (32 * stor2.length) + 356 > idx + 32:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, Array(len=stor2.length, data=mem[356 len 32 * stor2.length]), stor0, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    require mem[160 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[160 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[160 len 4], ext_call.return_data[0 len 28] + 160] <= 4294967296 and mem[160 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[160 len 4], ext_call.return_data[0 len 28] + 160]) + 32 <= return_data.size
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if stor0 != tx.origin:
        revert with 0, 'K'
    require arg4.length >= 32
    idx = 0
    while idx < stor1:
        require ext_code.size(0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e)
        staticcall 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x26694e4047ea77cc96341f0ac491773ac5469d72)
        call 0x26694e4047ea77cc96341f0ac491773ac5469d72.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, 1, ext_call.return_data[0], 1, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xc161e4b11faf62584efcd2100ccb461a2dde64d1)
        staticcall 0xc161e4b11faf62584efcd2100ccb461a2dde64d1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x90c7b96ad2142166d001b27b5fbc128494cdfbc8)
        call 0x90c7b96ad2142166d001b27b5fbc128494cdfbc8.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, 1, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = 2
        mem[132] = 0
        mem[164] = ext_call.return_data[0]
        mem[196] = 1
        mem[228] = block.timestamp
        require ext_code.size(0x26694e4047ea77cc96341f0ac491773ac5469d72)
        call 0x26694e4047ea77cc96341f0ac491773ac5469d72.swapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 2, 0, ext_call.return_data[0], 1, block.timestamp
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require ext_code.size(address(cd[(arg4 + 36)]))
    if arg2 > 0:
        call address(cd[(arg4 + 36)]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (1000 * arg2 / 997) + 1
    else:
        call address(cd[(arg4 + 36)]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (1000 * arg3 / 997) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
