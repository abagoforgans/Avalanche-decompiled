contract main {




// =====================  Runtime code  =====================


address stor1;
address owner;
address stor3;
address stor4;
address stor10;
address stor11;
address stor12;
address stor13;
array of uint256 sub_fe290ccb;

function owner() {
    return owner
}

function sub_fe290ccb(?) {
    return sub_fe290ccb[0 len sub_fe290ccb.length].field_0
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

function getContractBalance() {
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x694f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_7a243fe4(?) {
    require calldata.size - 4 >= 32
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

function rugPull() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    call stor10.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    call stor11.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    call stor12.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor13)
    staticcall stor13.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor13)
    call stor13.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_8559af17(?) {
    require calldata.size - 4 >= 96
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(stor3)
    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _39 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _42 = mem[_39 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_39 + 192])] = mem[_39 + 224 len floor32(mem[_39 + 192])]
    require 0 < mem[ceil32(return_data.size) + 192]
    _67 = mem[ceil32(return_data.size) + 224]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _42) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _42) + ceil32(return_data.size) + 228] = arg3
    mem[(32 * _42) + ceil32(return_data.size) + 260] = _67
    mem[(32 * _42) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _42) + ceil32(return_data.size) + 356] = block.timestamp + 60
    mem[(32 * _42) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _42) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _42) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(stor3)
    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, _67, Array(len=2, data=mem[(32 * _42) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _42) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _42) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(32 * _42) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * _42) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _42) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _42) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _42) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _42) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _42) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
}

function sub_c641e522(?) {
    require calldata.size - 4 >= 96
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(stor4)
    staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _39 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _42 = mem[_39 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_39 + 192])] = mem[_39 + 224 len floor32(mem[_39 + 192])]
    require 0 < mem[ceil32(return_data.size) + 192]
    _67 = mem[ceil32(return_data.size) + 224]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _42) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _42) + ceil32(return_data.size) + 228] = arg3
    mem[(32 * _42) + ceil32(return_data.size) + 260] = _67
    mem[(32 * _42) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _42) + ceil32(return_data.size) + 356] = block.timestamp + 60
    mem[(32 * _42) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _42) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _42) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, _67, Array(len=2, data=mem[(32 * _42) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _42) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _42) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(32 * _42) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * _42) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _42) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _42) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _42) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _42) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _42) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
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
    mem[96] = 24
    mem[128] = 'sono prima de primo swap'
    bool(sub_fe290ccb.length) = 0
    sub_fe290ccb.length.field_1 = 24
    sub_fe290ccb.length.field_8 = 'sono prima de primo swap' / 256
    idx = 0
    while sub_fe290ccb.length + 31 / 32 > idx:
        sub_fe290ccb[idx].field_0 = 0
        idx = idx + 1
        continue 
    require 0 < arg2.length
    mem[160] = 2
    mem[192] = stor10
    mem[224] = stor12
    mem[256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[260] = cd[(arg2 + 36)]
    mem[292] = 64
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(stor3)
    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[(arg2 + 36)], Array(len=2, data=mem[356 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 256
    require return_data.size >= 32
    _1407 = mem[256 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32
    require mem[256 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 <= 4294967296
    require mem[256 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 32 <= return_data.size
    require mem[mem[256 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 256] <= 4294967296 and mem[256 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * mem[mem[256 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 256]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 256]
    _1413 = mem[_1407 + 256]
    mem[ceil32(return_data.size) + 288 len floor32(mem[_1407 + 256])] = mem[_1407 + 288 len floor32(mem[_1407 + 256])]
    require 0 < mem[ceil32(return_data.size) + 256]
    _2092 = mem[ceil32(return_data.size) + 288]
    require ext_code.size(stor10)
    call stor10.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, cd[(arg2 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    staticcall stor10.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _1413) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _1413) + ceil32(return_data.size) + 292] = cd[(arg2 + 36)]
    mem[(32 * _1413) + ceil32(return_data.size) + 324] = _2092
    mem[(32 * _1413) + ceil32(return_data.size) + 388] = this.address
    mem[(32 * _1413) + ceil32(return_data.size) + 420] = block.timestamp + 60
    mem[(32 * _1413) + ceil32(return_data.size) + 356] = 160
    mem[(32 * _1413) + ceil32(return_data.size) + 452] = 2
    mem[(32 * _1413) + ceil32(return_data.size) + 484 len 0] = None
    require ext_code.size(stor3)
    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[(arg2 + 36)], _2092, Array(len=2, data=mem[(32 * _1413) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _1413) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _1413) + (2 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _2761 = mem[(32 * _1413) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32
    require mem[(32 * _1413) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 <= 4294967296
    require mem[(32 * _1413) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _1413) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _1413) + ceil32(return_data.size) + 288] <= 4294967296 and mem[(32 * _1413) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * mem[mem[(32 * _1413) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _1413) + ceil32(return_data.size) + 288]) + 32 <= return_data.size
    mem[(32 * _1413) + (2 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _1413) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _1413) + ceil32(return_data.size) + 288]
    _2770 = mem[_2761 + (32 * _1413) + ceil32(return_data.size) + 288]
    mem[(32 * _1413) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_2761 + (32 * _1413) + ceil32(return_data.size) + 288])] = mem[_2761 + (32 * _1413) + ceil32(return_data.size) + 320 len floor32(mem[_2761 + (32 * _1413) + ceil32(return_data.size) + 288])]
    mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 320] = 27
    mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 352] = 'Sono prima del secondo swap'
    mem[0] = 14
    bool(sub_fe290ccb.length) = 0
    sub_fe290ccb.length.field_1 = 27
    sub_fe290ccb.length.field_8 = 'Sono prima del secondo swap' / 256
    idx = 0
    while sub_fe290ccb.length + 31 / 32 > idx:
        sub_fe290ccb[idx].field_0 = 0
        idx = idx + 1
        continue 
    require 0 < arg2.length
    mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 384] = 2
    mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 416] = stor12
    mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 448] = stor10
    mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 484] = cd[(arg2 + 36)]
    mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 516] = 64
    mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 548] = 2
    mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 580 len 0] = None
    require ext_code.size(stor4)
    staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[(arg2 + 36)], Array(len=2, data=mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 580 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 480
    require return_data.size >= 32
    _4580 = mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32
    require mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 <= 4294967296
    require mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * mem[mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
    mem[(32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 480] = mem[mem[(32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 480]
    _4593 = mem[_4580 + (32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 480]
    mem[(32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 512 len floor32(mem[_4580 + (32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 480])] = mem[_4580 + (32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[_4580 + (32 * _2770) + (32 * _1413) + (2 * ceil32(return_data.size)) + 480])]
    require 0 < mem[(32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 480]
    _5139 = mem[(32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 512]
    require ext_code.size(stor12)
    call stor12.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, cd[(arg2 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 516] = cd[(arg2 + 36)]
    mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 548] = _5139
    mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 612] = this.address
    mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 644] = block.timestamp + 60
    mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 580] = 160
    mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 676] = 2
    mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 708 len 0] = None
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[(arg2 + 36)], _5139, Array(len=2, data=mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 708 len 64]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _4593) + (32 * _2770) + (32 * _1413) + (6 * ceil32(return_data.size)) + 512
    require return_data.size >= 32
    _5661 = mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32
    require mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 <= 4294967296
    require mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 512] <= 4294967296 and mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * mem[mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 512]) + 32 <= return_data.size
    mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (6 * ceil32(return_data.size)) + 512] = mem[mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 512]
    _5688 = mem[_5661 + (32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 512]
    mem[(32 * _4593) + (32 * _2770) + (32 * _1413) + (6 * ceil32(return_data.size)) + 544 len floor32(mem[_5661 + (32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 512])] = mem[_5661 + (32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 544 len floor32(mem[_5661 + (32 * _4593) + (32 * _2770) + (32 * _1413) + (4 * ceil32(return_data.size)) + 512])]
    mem[(32 * _5688) + (32 * _4593) + (32 * _2770) + (32 * _1413) + (6 * ceil32(return_data.size)) + 576 len 54] = 0xfe736f6e6f20646f706f20696c207365636f6e646f20737761702c20696e697a696f20612072657374697475697265206920736f6c64
    sub_fe290ccb.length = 109
    s = 0
    idx = (32 * _5688) + (32 * _4593) + (32 * _2770) + (32 * _1413) + (6 * ceil32(return_data.size)) + 576
    while (32 * _5688) + (32 * _4593) + (32 * _2770) + (32 * _1413) + (6 * ceil32(return_data.size)) + 630 > idx:
        sub_fe290ccb[s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while sub_fe290ccb.length + 31 / 32 > idx:
        sub_fe290ccb[idx].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg3.length
        require idx < arg2.length
        if cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)] < cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < arg1.length
        mem[(32 * _5688) + (32 * _4593) + (32 * _2770) + (32 * _1413) + (6 * ceil32(return_data.size)) + 644] = stor1
        mem[(32 * _5688) + (32 * _4593) + (32 * _2770) + (32 * _1413) + (6 * ceil32(return_data.size)) + 676] = cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)]
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor1, cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)]
        mem[(32 * _5688) + (32 * _4593) + (32 * _2770) + (32 * _1413) + (6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}



}
