contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_31970dd4(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x284f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function recoverTokens(address arg1) payable {
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

function sub_3b25edc2(?) payable {
    require calldata.size - 4 >= 128
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _23 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _26 = mem[_23 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_23 + 192])] = mem[_23 + 224 len floor32(mem[_23 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _26) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _26) + ceil32(return_data.size) + 224
       len 32
}

function sub_ac5bdf7a(?) payable {
    require calldata.size - 4 >= 128
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _23 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _26 = mem[_23 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_23 + 192])] = mem[_23 + 224 len floor32(mem[_23 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _26) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _26) + ceil32(return_data.size) + 224
       len 32
}

function sub_54a954a1(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[224] = arg2
    mem[256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[260] = arg3
    mem[292] = 1
    mem[356] = this.address
    mem[388] = block.timestamp + 300
    mem[324] = 160
    mem[420] = 4
    mem[452 len 0] = None
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, 1, Array(len=4, data=mem[452 len 128]), address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 256
    require return_data.size >= 32
    _36 = mem[256 len 4], Mask(224, 32, arg3) >> 32
    require mem[256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], Mask(224, 32, arg3) >> 32 + 256]
    _39 = mem[_36 + 256]
    mem[ceil32(return_data.size) + 288 len floor32(mem[_36 + 256])] = mem[_36 + 288 len floor32(mem[_36 + 256])]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 
                    32,
                    38,
                    0xfe54726164652052657665727465642c204e6f2050726f66697420576173204d616465203a27,
                    mem[(32 * _39) + ceil32(return_data.size) + 394 len 26]
}

function sub_72b6c4a7(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[224] = arg2
    mem[256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[260] = arg3
    mem[292] = 1
    mem[356] = this.address
    mem[388] = block.timestamp + 300
    mem[324] = 160
    mem[420] = 4
    mem[452 len 0] = None
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, 1, Array(len=4, data=mem[452 len 128]), address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 256
    require return_data.size >= 32
    _36 = mem[256 len 4], Mask(224, 32, arg3) >> 32
    require mem[256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], Mask(224, 32, arg3) >> 32 + 256]
    _39 = mem[_36 + 256]
    mem[ceil32(return_data.size) + 288 len floor32(mem[_36 + 256])] = mem[_36 + 288 len floor32(mem[_36 + 256])]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 
                    32,
                    38,
                    0xfe54726164652052657665727465642c204e6f2050726f66697420576173204d616465203a27,
                    mem[(32 * _39) + ceil32(return_data.size) + 394 len 26]
}

function sub_3152e53a(?) payable {
    require calldata.size - 4 >= 160
    mem[96] = 2
    mem[128] = arg2
    mem[160] = arg3
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg5
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg5, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _40 = mem[192 len 4], Mask(224, 32, arg5) >> 32
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    _43 = mem[_40 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_40 + 192])] = mem[_40 + 224 len floor32(mem[_40 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _43) + ceil32(return_data.size) + 288] = arg4
    mem[(32 * _43) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _43) + ceil32(return_data.size) + 324] = mem[ceil32(return_data.size) + 256]
    mem[(32 * _43) + ceil32(return_data.size) + 356] = 64
    mem[(32 * _43) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _43) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[ceil32(return_data.size) + 256], Array(len=2, data=mem[(32 * _43) + ceil32(return_data.size) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _43) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _43) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _93 = mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28]
    require mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] <= 4294967296
    require mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _43) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * mem[mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _43) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _43) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _43) + ceil32(return_data.size) + 320]
    _96 = mem[_93 + (32 * _43) + ceil32(return_data.size) + 320]
    mem[(32 * _43) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_93 + (32 * _43) + ceil32(return_data.size) + 320])] = mem[_93 + (32 * _43) + ceil32(return_data.size) + 352 len floor32(mem[_93 + (32 * _43) + ceil32(return_data.size) + 320])]
    require 1 < mem[(32 * _43) + (2 * ceil32(return_data.size)) + 320]
    mem[(32 * _96) + (32 * _43) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _43) + (2 * ceil32(return_data.size)) + 384]
    return memory
      from (32 * _96) + (32 * _43) + (2 * ceil32(return_data.size)) + 352
       len 32
}

function sub_7f32f5d1(?) payable {
    require calldata.size - 4 >= 160
    mem[96] = 2
    mem[128] = arg2
    mem[160] = arg3
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg5
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg5, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _40 = mem[192 len 4], Mask(224, 32, arg5) >> 32
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    _43 = mem[_40 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_40 + 192])] = mem[_40 + 224 len floor32(mem[_40 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _43) + ceil32(return_data.size) + 288] = arg4
    mem[(32 * _43) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _43) + ceil32(return_data.size) + 324] = mem[ceil32(return_data.size) + 256]
    mem[(32 * _43) + ceil32(return_data.size) + 356] = 64
    mem[(32 * _43) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _43) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[ceil32(return_data.size) + 256], Array(len=2, data=mem[(32 * _43) + ceil32(return_data.size) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _43) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _43) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _93 = mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28]
    require mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] <= 4294967296
    require mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _43) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * mem[mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _43) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _43) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _43) + ceil32(return_data.size) + 320]
    _96 = mem[_93 + (32 * _43) + ceil32(return_data.size) + 320]
    mem[(32 * _43) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_93 + (32 * _43) + ceil32(return_data.size) + 320])] = mem[_93 + (32 * _43) + ceil32(return_data.size) + 352 len floor32(mem[_93 + (32 * _43) + ceil32(return_data.size) + 320])]
    require 1 < mem[(32 * _43) + (2 * ceil32(return_data.size)) + 320]
    mem[(32 * _96) + (32 * _43) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _43) + (2 * ceil32(return_data.size)) + 384]
    return memory
      from (32 * _96) + (32 * _43) + (2 * ceil32(return_data.size)) + 352
       len 32
}

function sub_96bc010e(?) payable {
    require calldata.size - 4 >= 160
    mem[96] = 2
    mem[128] = arg3
    mem[160] = arg4
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg5
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg5, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _40 = mem[192 len 4], Mask(224, 32, arg5) >> 32
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    _43 = mem[_40 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_40 + 192])] = mem[_40 + 224 len floor32(mem[_40 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _43) + ceil32(return_data.size) + 288] = arg3
    mem[(32 * _43) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _43) + ceil32(return_data.size) + 324] = mem[ceil32(return_data.size) + 256]
    mem[(32 * _43) + ceil32(return_data.size) + 356] = 64
    mem[(32 * _43) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _43) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg2)
    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[ceil32(return_data.size) + 256], Array(len=2, data=mem[(32 * _43) + ceil32(return_data.size) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _43) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _43) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _93 = mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28]
    require mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] <= 4294967296
    require mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _43) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * mem[mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _43) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _43) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _43) + ceil32(return_data.size) + 320]
    _96 = mem[_93 + (32 * _43) + ceil32(return_data.size) + 320]
    mem[(32 * _43) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_93 + (32 * _43) + ceil32(return_data.size) + 320])] = mem[_93 + (32 * _43) + ceil32(return_data.size) + 352 len floor32(mem[_93 + (32 * _43) + ceil32(return_data.size) + 320])]
    require 1 < mem[(32 * _43) + (2 * ceil32(return_data.size)) + 320]
    mem[(32 * _96) + (32 * _43) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _43) + (2 * ceil32(return_data.size)) + 384]
    return memory
      from (32 * _96) + (32 * _43) + (2 * ceil32(return_data.size)) + 352
       len 32
}

function sub_caa54d0d(?) payable {
    require calldata.size - 4 >= 160
    mem[96] = 2
    mem[128] = arg3
    mem[160] = arg4
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg5
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg5, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _40 = mem[192 len 4], Mask(224, 32, arg5) >> 32
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    _43 = mem[_40 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_40 + 192])] = mem[_40 + 224 len floor32(mem[_40 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _43) + ceil32(return_data.size) + 288] = arg3
    mem[(32 * _43) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _43) + ceil32(return_data.size) + 324] = mem[ceil32(return_data.size) + 256]
    mem[(32 * _43) + ceil32(return_data.size) + 356] = 64
    mem[(32 * _43) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _43) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg2)
    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[ceil32(return_data.size) + 256], Array(len=2, data=mem[(32 * _43) + ceil32(return_data.size) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _43) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _43) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _93 = mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28]
    require mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] <= 4294967296
    require mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _43) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * mem[mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _43) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _43) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _43) + ceil32(return_data.size) + 320]
    _96 = mem[_93 + (32 * _43) + ceil32(return_data.size) + 320]
    mem[(32 * _43) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_93 + (32 * _43) + ceil32(return_data.size) + 320])] = mem[_93 + (32 * _43) + ceil32(return_data.size) + 352 len floor32(mem[_93 + (32 * _43) + ceil32(return_data.size) + 320])]
    require 1 < mem[(32 * _43) + (2 * ceil32(return_data.size)) + 320]
    mem[(32 * _96) + (32 * _43) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _43) + (2 * ceil32(return_data.size)) + 384]
    return memory
      from (32 * _96) + (32 * _43) + (2 * ceil32(return_data.size)) + 352
       len 32
}

function sub_5db70ef0(?) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    staticcall arg4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = arg4
    mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[228] = arg5
    mem[260] = 1
    mem[324] = this.address
    mem[356] = block.timestamp + 300
    mem[292] = 160
    mem[388] = 3
    mem[420 len 0] = None
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg5, 1, Array(len=3, data=mem[420 len 96]), address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _62 = mem[224 len 4], Mask(224, 32, arg5) >> 32
    require mem[224 len 4], Mask(224, 32, arg5) >> 32 <= 4294967296
    require mem[224 len 4], Mask(224, 32, arg5) >> 32 + 32 <= return_data.size
    require mem[mem[224 len 4], Mask(224, 32, arg5) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg5) >> 32 + 224]
    _65 = mem[_62 + 224]
    mem[ceil32(return_data.size) + 256 len floor32(mem[_62 + 224])] = mem[_62 + 256 len floor32(mem[_62 + 224])]
    require ext_code.size(arg4)
    staticcall arg4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _65) + ceil32(return_data.size) + 352] = arg3
    mem[(32 * _65) + ceil32(return_data.size) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _65) + ceil32(return_data.size) + 388] = 0
    mem[(32 * _65) + ceil32(return_data.size) + 420] = 1
    mem[(32 * _65) + ceil32(return_data.size) + 484] = this.address
    mem[(32 * _65) + ceil32(return_data.size) + 516] = block.timestamp + 300
    mem[(32 * _65) + ceil32(return_data.size) + 452] = 160
    mem[(32 * _65) + ceil32(return_data.size) + 548] = 3
    mem[(32 * _65) + ceil32(return_data.size) + 580 len 0] = None
    require ext_code.size(arg2)
    call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 1, 160, address(this.address), block.timestamp + 300, 3, mem[(32 * _65) + ceil32(return_data.size) + 580 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _65) + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _65) + (2 * ceil32(return_data.size)) + 384
    require return_data.size >= 32
    _129 = mem[(32 * _65) + ceil32(return_data.size) + 384 len 4], 0
    require mem[(32 * _65) + ceil32(return_data.size) + 384 len 4], 0 <= 4294967296
    require mem[(32 * _65) + ceil32(return_data.size) + 384 len 4], 0 + 32 <= return_data.size
    require mem[mem[(32 * _65) + ceil32(return_data.size) + 384 len 4], 0 + (32 * _65) + ceil32(return_data.size) + 384] <= 4294967296 and mem[(32 * _65) + ceil32(return_data.size) + 384 len 4], 0 + (32 * mem[mem[(32 * _65) + ceil32(return_data.size) + 384 len 4], 0 + (32 * _65) + ceil32(return_data.size) + 384]) + 32 <= return_data.size
    mem[(32 * _65) + (2 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _65) + ceil32(return_data.size) + 384 len 4], 0 + (32 * _65) + ceil32(return_data.size) + 384]
    _132 = mem[_129 + (32 * _65) + ceil32(return_data.size) + 384]
    mem[(32 * _65) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_129 + (32 * _65) + ceil32(return_data.size) + 384])] = mem[_129 + (32 * _65) + ceil32(return_data.size) + 416 len floor32(mem[_129 + (32 * _65) + ceil32(return_data.size) + 384])]
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 
                    32,
                    38,
                    0xfe54726164652052657665727465642c204e6f2050726f66697420576173204d616465203a27,
                    mem[(32 * _132) + (32 * _65) + (2 * ceil32(return_data.size)) + 522 len 26]
}

function sub_ce185670(?) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    staticcall arg4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = arg4
    mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[228] = arg5
    mem[260] = 1
    mem[324] = this.address
    mem[356] = block.timestamp + 300
    mem[292] = 160
    mem[388] = 3
    mem[420 len 0] = None
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg5, 1, Array(len=3, data=mem[420 len 96]), address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _62 = mem[224 len 4], Mask(224, 32, arg5) >> 32
    require mem[224 len 4], Mask(224, 32, arg5) >> 32 <= 4294967296
    require mem[224 len 4], Mask(224, 32, arg5) >> 32 + 32 <= return_data.size
    require mem[mem[224 len 4], Mask(224, 32, arg5) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg5) >> 32 + 224]
    _65 = mem[_62 + 224]
    mem[ceil32(return_data.size) + 256 len floor32(mem[_62 + 224])] = mem[_62 + 256 len floor32(mem[_62 + 224])]
    require ext_code.size(arg4)
    staticcall arg4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _65) + ceil32(return_data.size) + 352] = arg3
    mem[(32 * _65) + ceil32(return_data.size) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _65) + ceil32(return_data.size) + 388] = 0
    mem[(32 * _65) + ceil32(return_data.size) + 420] = 1
    mem[(32 * _65) + ceil32(return_data.size) + 484] = this.address
    mem[(32 * _65) + ceil32(return_data.size) + 516] = block.timestamp + 300
    mem[(32 * _65) + ceil32(return_data.size) + 452] = 160
    mem[(32 * _65) + ceil32(return_data.size) + 548] = 3
    mem[(32 * _65) + ceil32(return_data.size) + 580 len 0] = None
    require ext_code.size(arg2)
    call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 1, 160, address(this.address), block.timestamp + 300, 3, mem[(32 * _65) + ceil32(return_data.size) + 580 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _65) + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _65) + (2 * ceil32(return_data.size)) + 384
    require return_data.size >= 32
    _129 = mem[(32 * _65) + ceil32(return_data.size) + 384 len 4], 0
    require mem[(32 * _65) + ceil32(return_data.size) + 384 len 4], 0 <= 4294967296
    require mem[(32 * _65) + ceil32(return_data.size) + 384 len 4], 0 + 32 <= return_data.size
    require mem[mem[(32 * _65) + ceil32(return_data.size) + 384 len 4], 0 + (32 * _65) + ceil32(return_data.size) + 384] <= 4294967296 and mem[(32 * _65) + ceil32(return_data.size) + 384 len 4], 0 + (32 * mem[mem[(32 * _65) + ceil32(return_data.size) + 384 len 4], 0 + (32 * _65) + ceil32(return_data.size) + 384]) + 32 <= return_data.size
    mem[(32 * _65) + (2 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _65) + ceil32(return_data.size) + 384 len 4], 0 + (32 * _65) + ceil32(return_data.size) + 384]
    _132 = mem[_129 + (32 * _65) + ceil32(return_data.size) + 384]
    mem[(32 * _65) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_129 + (32 * _65) + ceil32(return_data.size) + 384])] = mem[_129 + (32 * _65) + ceil32(return_data.size) + 416 len floor32(mem[_129 + (32 * _65) + ceil32(return_data.size) + 384])]
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 
                    32,
                    38,
                    0xfe54726164652052657665727465642c204e6f2050726f66697420576173204d616465203a27,
                    mem[(32 * _132) + (32 * _65) + (2 * ceil32(return_data.size)) + 522 len 26]
}

function sub_2ddade06(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    staticcall arg4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = arg3
    mem[160] = arg4
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg5
    mem[228] = 1
    mem[292] = this.address
    mem[324] = block.timestamp + 300
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg5, 1, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _60 = mem[192 len 4], Mask(224, 32, arg5) >> 32
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    _63 = mem[_60 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_60 + 192])] = mem[_60 + 224 len floor32(mem[_60 + 192])]
    require ext_code.size(arg4)
    staticcall arg4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _63) + ceil32(return_data.size) + 288] = arg3
    mem[(32 * _63) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _63) + ceil32(return_data.size) + 324] = 0
    mem[(32 * _63) + ceil32(return_data.size) + 356] = 1
    mem[(32 * _63) + ceil32(return_data.size) + 420] = this.address
    mem[(32 * _63) + ceil32(return_data.size) + 452] = block.timestamp + 300
    mem[(32 * _63) + ceil32(return_data.size) + 388] = 160
    mem[(32 * _63) + ceil32(return_data.size) + 484] = 2
    mem[(32 * _63) + ceil32(return_data.size) + 516 len 0] = None
    require ext_code.size(arg2)
    call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 1, 160, address(this.address), block.timestamp + 300, 2, mem[(32 * _63) + ceil32(return_data.size) + 516 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _63) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _63) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _125 = mem[(32 * _63) + ceil32(return_data.size) + 320 len 4], 0
    require mem[(32 * _63) + ceil32(return_data.size) + 320 len 4], 0 <= 4294967296
    require mem[(32 * _63) + ceil32(return_data.size) + 320 len 4], 0 + 32 <= return_data.size
    require mem[mem[(32 * _63) + ceil32(return_data.size) + 320 len 4], 0 + (32 * _63) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _63) + ceil32(return_data.size) + 320 len 4], 0 + (32 * mem[mem[(32 * _63) + ceil32(return_data.size) + 320 len 4], 0 + (32 * _63) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _63) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _63) + ceil32(return_data.size) + 320 len 4], 0 + (32 * _63) + ceil32(return_data.size) + 320]
    _128 = mem[_125 + (32 * _63) + ceil32(return_data.size) + 320]
    mem[(32 * _63) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_125 + (32 * _63) + ceil32(return_data.size) + 320])] = mem[_125 + (32 * _63) + ceil32(return_data.size) + 352 len floor32(mem[_125 + (32 * _63) + ceil32(return_data.size) + 320])]
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 
                    32,
                    38,
                    0xfe54726164652052657665727465642c204e6f2050726f66697420576173204d616465203a27,
                    mem[(32 * _128) + (32 * _63) + (2 * ceil32(return_data.size)) + 458 len 26]
}

function sub_edd8a8d1(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    staticcall arg4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = arg3
    mem[160] = arg4
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg5
    mem[228] = 1
    mem[292] = this.address
    mem[324] = block.timestamp + 300
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg5, 1, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _60 = mem[192 len 4], Mask(224, 32, arg5) >> 32
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    _63 = mem[_60 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_60 + 192])] = mem[_60 + 224 len floor32(mem[_60 + 192])]
    require ext_code.size(arg4)
    staticcall arg4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _63) + ceil32(return_data.size) + 288] = arg3
    mem[(32 * _63) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _63) + ceil32(return_data.size) + 324] = 0
    mem[(32 * _63) + ceil32(return_data.size) + 356] = 1
    mem[(32 * _63) + ceil32(return_data.size) + 420] = this.address
    mem[(32 * _63) + ceil32(return_data.size) + 452] = block.timestamp + 300
    mem[(32 * _63) + ceil32(return_data.size) + 388] = 160
    mem[(32 * _63) + ceil32(return_data.size) + 484] = 2
    mem[(32 * _63) + ceil32(return_data.size) + 516 len 0] = None
    require ext_code.size(arg2)
    call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 1, 160, address(this.address), block.timestamp + 300, 2, mem[(32 * _63) + ceil32(return_data.size) + 516 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _63) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _63) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _125 = mem[(32 * _63) + ceil32(return_data.size) + 320 len 4], 0
    require mem[(32 * _63) + ceil32(return_data.size) + 320 len 4], 0 <= 4294967296
    require mem[(32 * _63) + ceil32(return_data.size) + 320 len 4], 0 + 32 <= return_data.size
    require mem[mem[(32 * _63) + ceil32(return_data.size) + 320 len 4], 0 + (32 * _63) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _63) + ceil32(return_data.size) + 320 len 4], 0 + (32 * mem[mem[(32 * _63) + ceil32(return_data.size) + 320 len 4], 0 + (32 * _63) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _63) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _63) + ceil32(return_data.size) + 320 len 4], 0 + (32 * _63) + ceil32(return_data.size) + 320]
    _128 = mem[_125 + (32 * _63) + ceil32(return_data.size) + 320]
    mem[(32 * _63) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_125 + (32 * _63) + ceil32(return_data.size) + 320])] = mem[_125 + (32 * _63) + ceil32(return_data.size) + 352 len floor32(mem[_125 + (32 * _63) + ceil32(return_data.size) + 320])]
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 
                    32,
                    38,
                    0xfe54726164652052657665727465642c204e6f2050726f66697420576173204d616465203a27,
                    mem[(32 * _128) + (32 * _63) + (2 * ceil32(return_data.size)) + 458 len 26]
}

function sub_a35f1a24(?) payable {
    require calldata.size - 4 >= 160
    mem[160] = arg3
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg5
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg5, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _57 = mem[192 len 4], Mask(224, 32, arg5) >> 32
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    _60 = mem[_57 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_57 + 192])] = mem[_57 + 224 len floor32(mem[_57 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _60) + ceil32(return_data.size) + 288] = arg4
    mem[(32 * _60) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _60) + ceil32(return_data.size) + 324] = mem[ceil32(return_data.size) + 256]
    mem[(32 * _60) + ceil32(return_data.size) + 356] = 64
    mem[(32 * _60) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _60) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[ceil32(return_data.size) + 256], Array(len=2, data=mem[(32 * _60) + ceil32(return_data.size) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _60) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _60) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _144 = mem[(32 * _60) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28]
    require mem[(32 * _60) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] <= 4294967296
    require mem[(32 * _60) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _60) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _60) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _60) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * mem[mem[(32 * _60) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _60) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _60) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _60) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _60) + ceil32(return_data.size) + 320]
    _147 = mem[_144 + (32 * _60) + ceil32(return_data.size) + 320]
    mem[(32 * _60) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_144 + (32 * _60) + ceil32(return_data.size) + 320])] = mem[_144 + (32 * _60) + ceil32(return_data.size) + 352 len floor32(mem[_144 + (32 * _60) + ceil32(return_data.size) + 320])]
    require 1 < mem[(32 * _60) + (2 * ceil32(return_data.size)) + 320]
    mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 416] = arg2
    mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 452] = mem[(32 * _60) + (2 * ceil32(return_data.size)) + 384]
    mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 484] = 64
    mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 516] = 2
    mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 548 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[(32 * _60) + (2 * ceil32(return_data.size)) + 384], Array(len=2, data=mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 548 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _147) + (32 * _60) + (4 * ceil32(return_data.size)) + 448
    require return_data.size >= 32
    _197 = mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448 len 4], mem[(32 * _60) + (2 * ceil32(return_data.size)) + 384 len 28]
    require mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448 len 4], mem[(32 * _60) + (2 * ceil32(return_data.size)) + 384 len 28] <= 4294967296
    require mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448 len 4], mem[(32 * _60) + (2 * ceil32(return_data.size)) + 384 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448 len 4], mem[(32 * _60) + (2 * ceil32(return_data.size)) + 384 len 28] + (32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448 len 4], mem[(32 * _60) + (2 * ceil32(return_data.size)) + 384 len 28] + (32 * mem[mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448 len 4], mem[(32 * _60) + (2 * ceil32(return_data.size)) + 384 len 28] + (32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
    mem[(32 * _147) + (32 * _60) + (4 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448 len 4], mem[(32 * _60) + (2 * ceil32(return_data.size)) + 384 len 28] + (32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448]
    _200 = mem[_197 + (32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448]
    mem[(32 * _147) + (32 * _60) + (4 * ceil32(return_data.size)) + 480 len floor32(mem[_197 + (32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448])] = mem[_197 + (32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_197 + (32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448])]
    require 1 < mem[(32 * _147) + (32 * _60) + (4 * ceil32(return_data.size)) + 448]
    mem[(32 * _200) + (32 * _147) + (32 * _60) + (4 * ceil32(return_data.size)) + 480] = mem[(32 * _147) + (32 * _60) + (4 * ceil32(return_data.size)) + 512]
    return memory
      from (32 * _200) + (32 * _147) + (32 * _60) + (4 * ceil32(return_data.size)) + 480
       len 32
}

function sub_b80606a0(?) payable {
    require calldata.size - 4 >= 160
    mem[160] = arg3
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg5
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg5, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _57 = mem[192 len 4], Mask(224, 32, arg5) >> 32
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    _60 = mem[_57 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_57 + 192])] = mem[_57 + 224 len floor32(mem[_57 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _60) + ceil32(return_data.size) + 288] = arg4
    mem[(32 * _60) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _60) + ceil32(return_data.size) + 324] = mem[ceil32(return_data.size) + 256]
    mem[(32 * _60) + ceil32(return_data.size) + 356] = 64
    mem[(32 * _60) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _60) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[ceil32(return_data.size) + 256], Array(len=2, data=mem[(32 * _60) + ceil32(return_data.size) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _60) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _60) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _144 = mem[(32 * _60) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28]
    require mem[(32 * _60) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] <= 4294967296
    require mem[(32 * _60) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _60) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _60) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _60) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * mem[mem[(32 * _60) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _60) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _60) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _60) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _60) + ceil32(return_data.size) + 320]
    _147 = mem[_144 + (32 * _60) + ceil32(return_data.size) + 320]
    mem[(32 * _60) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_144 + (32 * _60) + ceil32(return_data.size) + 320])] = mem[_144 + (32 * _60) + ceil32(return_data.size) + 352 len floor32(mem[_144 + (32 * _60) + ceil32(return_data.size) + 320])]
    require 1 < mem[(32 * _60) + (2 * ceil32(return_data.size)) + 320]
    mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 416] = arg2
    mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 452] = mem[(32 * _60) + (2 * ceil32(return_data.size)) + 384]
    mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 484] = 64
    mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 516] = 2
    mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 548 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[(32 * _60) + (2 * ceil32(return_data.size)) + 384], Array(len=2, data=mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 548 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _147) + (32 * _60) + (4 * ceil32(return_data.size)) + 448
    require return_data.size >= 32
    _197 = mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448 len 4], mem[(32 * _60) + (2 * ceil32(return_data.size)) + 384 len 28]
    require mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448 len 4], mem[(32 * _60) + (2 * ceil32(return_data.size)) + 384 len 28] <= 4294967296
    require mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448 len 4], mem[(32 * _60) + (2 * ceil32(return_data.size)) + 384 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448 len 4], mem[(32 * _60) + (2 * ceil32(return_data.size)) + 384 len 28] + (32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448 len 4], mem[(32 * _60) + (2 * ceil32(return_data.size)) + 384 len 28] + (32 * mem[mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448 len 4], mem[(32 * _60) + (2 * ceil32(return_data.size)) + 384 len 28] + (32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
    mem[(32 * _147) + (32 * _60) + (4 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448 len 4], mem[(32 * _60) + (2 * ceil32(return_data.size)) + 384 len 28] + (32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448]
    _200 = mem[_197 + (32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448]
    mem[(32 * _147) + (32 * _60) + (4 * ceil32(return_data.size)) + 480 len floor32(mem[_197 + (32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448])] = mem[_197 + (32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_197 + (32 * _147) + (32 * _60) + (2 * ceil32(return_data.size)) + 448])]
    require 1 < mem[(32 * _147) + (32 * _60) + (4 * ceil32(return_data.size)) + 448]
    mem[(32 * _200) + (32 * _147) + (32 * _60) + (4 * ceil32(return_data.size)) + 480] = mem[(32 * _147) + (32 * _60) + (4 * ceil32(return_data.size)) + 512]
    return memory
      from (32 * _200) + (32 * _147) + (32 * _60) + (4 * ceil32(return_data.size)) + 480
       len 32
}

function sub_1c617218(?) payable {
    require calldata.size - 4 >= 192
    mem[96] = 2
    mem[128] = arg3
    mem[160] = arg4
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg6
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg6, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _74 = mem[192 len 4], Mask(224, 32, arg6) >> 32
    require mem[192 len 4], Mask(224, 32, arg6) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg6) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg6) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]
    _77 = mem[_74 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_74 + 192])] = mem[_74 + 224 len floor32(mem[_74 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _138 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _77) + ceil32(return_data.size) + 224] = 2
    mem[(32 * _77) + ceil32(return_data.size) + 256] = arg4
    mem[(32 * _77) + ceil32(return_data.size) + 288] = arg5
    mem[(32 * _77) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _77) + ceil32(return_data.size) + 324] = _138
    mem[(32 * _77) + ceil32(return_data.size) + 356] = 64
    mem[(32 * _77) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _77) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _138, Array(len=2, data=mem[(32 * _77) + ceil32(return_data.size) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _77) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _77) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _195 = mem[(32 * _77) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _138) >> 32
    require mem[(32 * _77) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _138) >> 32 <= 4294967296
    require mem[(32 * _77) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _138) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _77) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _138) >> 32 + (32 * _77) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _77) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _138) >> 32 + (32 * mem[mem[(32 * _77) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _138) >> 32 + (32 * _77) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _77) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _77) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _138) >> 32 + (32 * _77) + ceil32(return_data.size) + 320]
    _198 = mem[_195 + (32 * _77) + ceil32(return_data.size) + 320]
    mem[(32 * _77) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_195 + (32 * _77) + ceil32(return_data.size) + 320])] = mem[_195 + (32 * _77) + ceil32(return_data.size) + 352 len floor32(mem[_195 + (32 * _77) + ceil32(return_data.size) + 320])]
    require 1 < mem[(32 * _77) + (2 * ceil32(return_data.size)) + 320]
    _242 = mem[(32 * _77) + (2 * ceil32(return_data.size)) + 384]
    mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 352] = 2
    mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 384] = arg5
    mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 416] = arg4
    mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 452] = _242
    mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 484] = 64
    mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 516] = 2
    mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 548 len 0] = None
    require ext_code.size(arg2)
    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _242, Array(len=2, data=mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 548 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 448
    require return_data.size >= 32
    _282 = mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _242) >> 32
    require mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _242) >> 32 <= 4294967296
    require mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _242) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _242) >> 32 + (32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _242) >> 32 + (32 * mem[mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _242) >> 32 + (32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
    mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _242) >> 32 + (32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448]
    _285 = mem[_282 + (32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448]
    mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 480 len floor32(mem[_282 + (32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448])] = mem[_282 + (32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_282 + (32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448])]
    require 1 < mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 448]
    mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 544] = arg3
    mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 580] = mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 512]
    mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 612] = 64
    mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 644] = 2
    mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 676 len 0] = None
    require ext_code.size(arg2)
    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 512], Array(len=2, data=mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 676 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _285) + (32 * _198) + (32 * _77) + (6 * ceil32(return_data.size)) + 576
    require return_data.size >= 32
    _335 = mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 512 len 28]
    require mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 512 len 28] <= 4294967296
    require mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 512 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 512 len 28] + (32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576] <= 4294967296 and mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 512 len 28] + (32 * mem[mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 512 len 28] + (32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576]) + 32 <= return_data.size
    mem[(32 * _285) + (32 * _198) + (32 * _77) + (6 * ceil32(return_data.size)) + 576] = mem[mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 512 len 28] + (32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576]
    _338 = mem[_335 + (32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576]
    mem[(32 * _285) + (32 * _198) + (32 * _77) + (6 * ceil32(return_data.size)) + 608 len floor32(mem[_335 + (32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576])] = mem[_335 + (32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 608 len floor32(mem[_335 + (32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576])]
    require 1 < mem[(32 * _285) + (32 * _198) + (32 * _77) + (6 * ceil32(return_data.size)) + 576]
    mem[(32 * _338) + (32 * _285) + (32 * _198) + (32 * _77) + (6 * ceil32(return_data.size)) + 608] = mem[(32 * _285) + (32 * _198) + (32 * _77) + (6 * ceil32(return_data.size)) + 640]
    return memory
      from (32 * _338) + (32 * _285) + (32 * _198) + (32 * _77) + (6 * ceil32(return_data.size)) + 608
       len 32
}

function sub_fb8a7c21(?) payable {
    require calldata.size - 4 >= 192
    mem[96] = 2
    mem[128] = arg3
    mem[160] = arg4
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg6
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg6, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _74 = mem[192 len 4], Mask(224, 32, arg6) >> 32
    require mem[192 len 4], Mask(224, 32, arg6) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg6) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg6) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]
    _77 = mem[_74 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_74 + 192])] = mem[_74 + 224 len floor32(mem[_74 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _138 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _77) + ceil32(return_data.size) + 224] = 2
    mem[(32 * _77) + ceil32(return_data.size) + 256] = arg4
    mem[(32 * _77) + ceil32(return_data.size) + 288] = arg5
    mem[(32 * _77) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _77) + ceil32(return_data.size) + 324] = _138
    mem[(32 * _77) + ceil32(return_data.size) + 356] = 64
    mem[(32 * _77) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _77) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _138, Array(len=2, data=mem[(32 * _77) + ceil32(return_data.size) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _77) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _77) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _195 = mem[(32 * _77) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _138) >> 32
    require mem[(32 * _77) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _138) >> 32 <= 4294967296
    require mem[(32 * _77) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _138) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _77) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _138) >> 32 + (32 * _77) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _77) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _138) >> 32 + (32 * mem[mem[(32 * _77) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _138) >> 32 + (32 * _77) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _77) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _77) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _138) >> 32 + (32 * _77) + ceil32(return_data.size) + 320]
    _198 = mem[_195 + (32 * _77) + ceil32(return_data.size) + 320]
    mem[(32 * _77) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_195 + (32 * _77) + ceil32(return_data.size) + 320])] = mem[_195 + (32 * _77) + ceil32(return_data.size) + 352 len floor32(mem[_195 + (32 * _77) + ceil32(return_data.size) + 320])]
    require 1 < mem[(32 * _77) + (2 * ceil32(return_data.size)) + 320]
    _242 = mem[(32 * _77) + (2 * ceil32(return_data.size)) + 384]
    mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 352] = 2
    mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 384] = arg5
    mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 416] = arg4
    mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 452] = _242
    mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 484] = 64
    mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 516] = 2
    mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 548 len 0] = None
    require ext_code.size(arg2)
    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _242, Array(len=2, data=mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 548 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 448
    require return_data.size >= 32
    _282 = mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _242) >> 32
    require mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _242) >> 32 <= 4294967296
    require mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _242) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _242) >> 32 + (32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _242) >> 32 + (32 * mem[mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _242) >> 32 + (32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
    mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _242) >> 32 + (32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448]
    _285 = mem[_282 + (32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448]
    mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 480 len floor32(mem[_282 + (32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448])] = mem[_282 + (32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_282 + (32 * _198) + (32 * _77) + (2 * ceil32(return_data.size)) + 448])]
    require 1 < mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 448]
    mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 544] = arg3
    mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 580] = mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 512]
    mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 612] = 64
    mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 644] = 2
    mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 676 len 0] = None
    require ext_code.size(arg2)
    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 512], Array(len=2, data=mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 676 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _285) + (32 * _198) + (32 * _77) + (6 * ceil32(return_data.size)) + 576
    require return_data.size >= 32
    _335 = mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 512 len 28]
    require mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 512 len 28] <= 4294967296
    require mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 512 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 512 len 28] + (32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576] <= 4294967296 and mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 512 len 28] + (32 * mem[mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 512 len 28] + (32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576]) + 32 <= return_data.size
    mem[(32 * _285) + (32 * _198) + (32 * _77) + (6 * ceil32(return_data.size)) + 576] = mem[mem[(32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 512 len 28] + (32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576]
    _338 = mem[_335 + (32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576]
    mem[(32 * _285) + (32 * _198) + (32 * _77) + (6 * ceil32(return_data.size)) + 608 len floor32(mem[_335 + (32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576])] = mem[_335 + (32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 608 len floor32(mem[_335 + (32 * _285) + (32 * _198) + (32 * _77) + (4 * ceil32(return_data.size)) + 576])]
    require 1 < mem[(32 * _285) + (32 * _198) + (32 * _77) + (6 * ceil32(return_data.size)) + 576]
    mem[(32 * _338) + (32 * _285) + (32 * _198) + (32 * _77) + (6 * ceil32(return_data.size)) + 608] = mem[(32 * _285) + (32 * _198) + (32 * _77) + (6 * ceil32(return_data.size)) + 640]
    return memory
      from (32 * _338) + (32 * _285) + (32 * _198) + (32 * _77) + (6 * ceil32(return_data.size)) + 608
       len 32
}



}
