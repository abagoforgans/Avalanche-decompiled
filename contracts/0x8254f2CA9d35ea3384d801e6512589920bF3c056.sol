contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_48eada7e(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[96] = 2
    mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[160] = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd
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
    require _32 + (32 * _33) + 32 <= return_data.size
    idx = 0
    s = _32 + 224
    t = ceil32(return_data.size) + 224
    while idx < _33:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _55 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _56 = mem[_55]
    require mem[_55] == mem[_55]
    _57 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_57]
    mem[_57 + 32] = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd
    require 1 < mem[_57]
    mem[_57 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
    mem[_57 + 196] = 0x5b062437d9c11df78fbeece4e3ed4908581d6602
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
    _72 = mem[_71]
    require mem[_71] <= test266151307()
    require _71 + mem[_71] + 31 < _71 + return_data.size
    _73 = mem[_71 + mem[_71]]
    require mem[_71 + mem[_71]] <= test266151307()
    require _71 + ceil32(return_data.size) + (32 * mem[_71 + mem[_71]]) + 32 <= test266151307() and (32 * mem[_71 + mem[_71]]) + 32 >= 0
    mem[64] = _71 + ceil32(return_data.size) + (32 * mem[_71 + mem[_71]]) + 32
    mem[_71 + ceil32(return_data.size)] = _73
    require _72 + (32 * _73) + 32 <= return_data.size
    idx = 0
    s = _71 + _72 + 32
    t = _71 + ceil32(return_data.size) + 32
    while idx < _73:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function sub_957c83b4(?) payable {
    mem[100] = msg.sender
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[ceil32(return_data.size) + 160] = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd
    mem[ceil32(return_data.size) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 1
    mem[ceil32(return_data.size) + 228] = 128
    mem[ceil32(return_data.size) + 324] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 260] = this.address
    mem[ceil32(return_data.size) + 292] = block.timestamp + 300
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 1, Array(len=2, data=mem[ceil32(return_data.size) + 356 len 64]), address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _42 = mem[ceil32(return_data.size) + 192 len 4], 0
    require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
    _43 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] <= test266151307()
    require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 224 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 32 >= 0
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
    require _42 + (32 * _43) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _42 + 224
    t = (2 * ceil32(return_data.size)) + 224
    while idx < _43:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _71 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _72 = mem[_71]
    require mem[_71] == mem[_71]
    _73 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_73]
    mem[_73 + 32] = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd
    require 1 < mem[_73]
    mem[_73 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[_73 + 96] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[_73 + 100] = _72
    mem[_73 + 132] = 1
    mem[_73 + 164] = 160
    mem[_73 + 260] = mem[_73]
    idx = 0
    s = _73 + 32
    t = _73 + 292
    while idx < mem[_73]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_73 + 196] = 0x5b062437d9c11df78fbeece4e3ed4908581d6602
    mem[_73 + 228] = block.timestamp + 300
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _73 + (32 * mem[_73]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _93 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _94 = mem[_93]
    require mem[_93] <= test266151307()
    require _93 + mem[_93] + 31 < _93 + return_data.size
    _95 = mem[_93 + mem[_93]]
    require mem[_93 + mem[_93]] <= test266151307()
    require _93 + ceil32(return_data.size) + (32 * mem[_93 + mem[_93]]) + 32 <= test266151307() and (32 * mem[_93 + mem[_93]]) + 32 >= 0
    mem[64] = _93 + ceil32(return_data.size) + (32 * mem[_93 + mem[_93]]) + 32
    mem[_93 + ceil32(return_data.size)] = _95
    require _94 + (32 * _95) + 32 <= return_data.size
    idx = 0
    s = _93 + _94 + 32
    t = _93 + ceil32(return_data.size) + 32
    while idx < _95:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _107 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_107] == mem[_107]
    mem[mem[64]] = mem[_107] - ext_call.return_data[0]
    return memory
      from mem[64]
       len 32
}



}
