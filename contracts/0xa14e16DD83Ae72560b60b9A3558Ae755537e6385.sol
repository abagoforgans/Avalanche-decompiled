contract main {




// =====================  Runtime code  =====================


address stor1;
address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function executeFlashLoans(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[580 len 0] = None
    mem[644 len 0] = None
    mem[708 len 0] = None
    require ext_code.size(stor1)
    call stor1.flashLoan(address arg1, address[] arg2, uint256[] arg3, uint256[] arg4, address arg5, bytes arg6, uint16 arg7) with:
         gas gas_remaining wei
        args address(this.address), 224, 288, 352, address(this.address), 416, 0, 1, mem[580], 1, mem[644], 1, mem[708], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rugPull(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_3e8c8d0b(?) payable {
    require calldata.size - 4 >= 128
    mem[160] = arg2
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x2d99abd9008dc933ff5c0cd271b88309593ab921, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = arg4
    mem[292] = this.address
    mem[324] = block.timestamp + 15
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(0x2d99abd9008dc933ff5c0cd271b88309593ab921)
    call 0x2d99abd9008dc933ff5c0cd271b88309593ab921.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
}

function sub_6af956c6(?) payable {
    require calldata.size - 4 >= 128
    mem[160] = arg2
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = arg4
    mem[292] = this.address
    mem[324] = block.timestamp + 15
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
}

function executeOperation(address[] arg1, uint256[] arg2, uint256[] arg3, address arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require 0 < arg1.length
    require 0 < arg2.length
    mem[96] = 2
    mem[128] = address(cd[(arg1 + 36)])
    mem[160] = 0xb00f1ad977a949a3ccc389ca1d1282a2946963b0
    require ext_code.size(address(cd[(arg1 + 36)]))
    call address(cd[(arg1 + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, cd[(arg2 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = cd[(arg2 + 36)]
    mem[228] = 1
    mem[292] = this.address
    mem[324] = block.timestamp + 15
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[(arg2 + 36)], 1, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _52 = mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32
    require mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 192]
    _55 = mem[_52 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_52 + 192])] = mem[_52 + 224 len floor32(mem[_52 + 192])]
    require 0 < arg1.length
    require ext_code.size(0xb00f1ad977a949a3ccc389ca1d1282a2946963b0)
    staticcall 0xb00f1ad977a949a3ccc389ca1d1282a2946963b0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _55) + ceil32(return_data.size) + 224] = 2
    mem[(32 * _55) + ceil32(return_data.size) + 256] = 0xb00f1ad977a949a3ccc389ca1d1282a2946963b0
    mem[(32 * _55) + ceil32(return_data.size) + 288] = address(cd[(arg1 + 36)])
    require ext_code.size(0xb00f1ad977a949a3ccc389ca1d1282a2946963b0)
    call 0xb00f1ad977a949a3ccc389ca1d1282a2946963b0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x2d99abd9008dc933ff5c0cd271b88309593ab921, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _55) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _55) + ceil32(return_data.size) + 324] = ext_call.return_data[0]
    mem[(32 * _55) + ceil32(return_data.size) + 356] = 1
    mem[(32 * _55) + ceil32(return_data.size) + 420] = this.address
    mem[(32 * _55) + ceil32(return_data.size) + 452] = block.timestamp + 15
    mem[(32 * _55) + ceil32(return_data.size) + 388] = 160
    mem[(32 * _55) + ceil32(return_data.size) + 484] = 2
    mem[(32 * _55) + ceil32(return_data.size) + 516 len 0] = None
    require ext_code.size(0x2d99abd9008dc933ff5c0cd271b88309593ab921)
    call 0x2d99abd9008dc933ff5c0cd271b88309593ab921.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=2, data=mem[(32 * _55) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _55) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _55) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _121 = mem[(32 * _55) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28]
    require mem[(32 * _55) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _55) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _55) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * _55) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _55) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _55) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * _55) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _55) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _55) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * _55) + ceil32(return_data.size) + 320]
    _124 = mem[_121 + (32 * _55) + ceil32(return_data.size) + 320]
    idx = 0
    while idx < arg1.length:
        require idx < arg3.length
        require idx < arg2.length
        if cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)] < cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < arg1.length
        mem[(32 * _124) + (32 * _55) + (2 * ceil32(return_data.size)) + 356] = stor1
        mem[(32 * _124) + (32 * _55) + (2 * ceil32(return_data.size)) + 388] = cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)]
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor1, cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)]
        mem[(32 * _124) + (32 * _55) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}



}
