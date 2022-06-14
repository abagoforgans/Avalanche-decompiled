contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_418f9777(?) payable {
    require calldata.size - 4 >= 160
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[96] = 2
    mem[128] = address(arg4)
    mem[160] = address(arg5)
    mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = 128
    mem[324] = 2
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[260] = this.address
    mem[292] = arg1
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args arg2, Array(len=2, data=mem[356 len 64]), address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _32 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 223 < return_data.size + 192
    _33 = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
    require ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require return_data.size >= _32 + (32 * _33) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _33] = mem[_32 + 224 len 32 * _33]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg5))
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _55 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _56 = mem[_55]
    _57 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_57]
    mem[_57 + 32] = address(arg5)
    require 1 < mem[_57]
    mem[_57 + 64] = address(arg4)
    mem[_57 + 96] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[_57 + 100] = _56
    mem[_57 + 132] = arg3
    mem[_57 + 164] = 160
    mem[_57 + 260] = mem[_57]
    idx = 0
    s = _57 + 32
    t = _57 + 292
    while idx < mem[_57]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_57 + 196] = msg.sender
    mem[_57 + 228] = arg1
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _57 + (32 * mem[_57]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _71 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_71] <= test266151307()
    require _71 + mem[_71] + 31 < _71 + return_data.size
    require mem[_71 + mem[_71]] <= test266151307()
    require _71 + ceil32(return_data.size) + (32 * mem[_71 + mem[_71]]) + 32 <= test266151307() and (32 * mem[_71 + mem[_71]]) + 32 >= 0
    require return_data.size >= mem[_71] + (32 * mem[_71 + mem[_71]]) + 32
}

function sub_f1380b3f(?) payable {
    require calldata.size - 4 >= 160
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[96] = 2
    mem[128] = address(arg4)
    mem[160] = address(arg5)
    mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = 128
    mem[324] = 2
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[260] = this.address
    mem[292] = arg1
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args arg2, Array(len=2, data=mem[356 len 64]), address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _32 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 223 < return_data.size + 192
    _33 = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
    require ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require return_data.size >= _32 + (32 * _33) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _33] = mem[_32 + 224 len 32 * _33]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg5))
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _55 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _56 = mem[_55]
    _57 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_57]
    mem[_57 + 32] = address(arg5)
    require 1 < mem[_57]
    mem[_57 + 64] = address(arg4)
    mem[_57 + 96] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[_57 + 100] = _56
    mem[_57 + 132] = arg3
    mem[_57 + 164] = 160
    mem[_57 + 260] = mem[_57]
    idx = 0
    s = _57 + 32
    t = _57 + 292
    while idx < mem[_57]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_57 + 196] = msg.sender
    mem[_57 + 228] = arg1
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _57 + (32 * mem[_57]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _71 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_71] <= test266151307()
    require _71 + mem[_71] + 31 < _71 + return_data.size
    require mem[_71 + mem[_71]] <= test266151307()
    require _71 + ceil32(return_data.size) + (32 * mem[_71 + mem[_71]]) + 32 <= test266151307() and (32 * mem[_71 + mem[_71]]) + 32 >= 0
    require return_data.size >= mem[_71] + (32 * mem[_71 + mem[_71]]) + 32
}



}
