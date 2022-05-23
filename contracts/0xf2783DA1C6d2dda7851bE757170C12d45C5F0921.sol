contract main {




// =====================  Runtime code  =====================


function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    if not arg2:
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
    else:
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '0'
    s = 0
    idx = ext_call.return_data[0]
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if s:
        mem[128 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = ext_call.return_data[0]
    while idx:
        require t < mem[96]
        mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[96]
    mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        revert with 0, 32, mem[mem[64] + 36 len mem[96] + 32]
    mem[floor32(mem[96]) + mem[64] + 68] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 100 len mem[96] % 32]
    revert with 0, 32, mem[96], mem[mem[64] + 68 len floor32(mem[96]) + 32]
}

function _fallback() payable {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require ext_code.size(msg.sender)
    if not arg1:
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
    else:
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg2.length) + 132] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '0'
    s = 0
    idx = ext_call.return_data[0]
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(arg2.length) + 128] = s
    mem[64] = ceil32(arg2.length) + ceil32(s) + 160
    if s:
        mem[ceil32(arg2.length) + 160 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = ext_call.return_data[0]
    while idx:
        require t < 0, Mask(224, 0, s)
        mem[t + ceil32(arg2.length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(arg2.length) + ceil32(s) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(s) + 164] = 32
    mem[ceil32(arg2.length) + ceil32(s) + 196] = 0, Mask(224, 0, s)
    mem[ceil32(arg2.length) + ceil32(s) + 228 len ceil32(0, Mask(224, 0, s))] = mem[ceil32(arg2.length) + 160 len ceil32(0, Mask(224, 0, s))]
    if not s % 32:
        revert with memory
          from ceil32(arg2.length) + ceil32(s) + 160
           len 0, Mask(224, 0, s) + 68
    mem[floor32(0, Mask(224, 0, s)) + ceil32(arg2.length) + ceil32(s) + 228] = mem[floor32(0, Mask(224, 0, s)) + ceil32(arg2.length) + ceil32(s) + -(s % 32) + 260 len s % 32]
    revert with memory
      from ceil32(arg2.length) + ceil32(s) + 160
       len floor32(0, Mask(224, 0, s)) + 100
}



}
