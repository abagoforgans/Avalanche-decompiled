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
                    0x6e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
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
    require 0 < arg2.length
    emit 0xa4932d29: Array(len=36, data=0xfe486f20726963657675746f20717565737469206461692064616c20666c6173686c6f61, mem[228 len 28]), cd[(arg2 + 36)]
    mem[96] = 2
    mem[128] = stor10
    mem[160] = stor12
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = cd[(arg2 + 36)]
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(stor4)
    staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[(arg2 + 36)], Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _90 = mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32
    require mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 192]
    _93 = mem[_90 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_90 + 192])] = mem[_90 + 224 len floor32(mem[_90 + 192])]
    require 0 < mem[ceil32(return_data.size) + 192]
    _167 = mem[ceil32(return_data.size) + 224]
    require ext_code.size(stor10)
    call stor10.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, cd[(arg2 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    staticcall stor10.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _93) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _93) + ceil32(return_data.size) + 228] = cd[(arg2 + 36)]
    mem[(32 * _93) + ceil32(return_data.size) + 260] = _167
    mem[(32 * _93) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _93) + ceil32(return_data.size) + 356] = block.timestamp + 60
    mem[(32 * _93) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _93) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _93) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[(arg2 + 36)], _167, Array(len=2, data=mem[(32 * _93) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _93) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _93) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _239 = mem[(32 * _93) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32
    require mem[(32 * _93) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 <= 4294967296
    require mem[(32 * _93) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _93) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _93) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _93) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * mem[mem[(32 * _93) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _93) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
    mem[(32 * _93) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _93) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _93) + ceil32(return_data.size) + 224]
    _242 = mem[_239 + (32 * _93) + ceil32(return_data.size) + 224]
    mem[(32 * _93) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_239 + (32 * _93) + ceil32(return_data.size) + 224])] = mem[_239 + (32 * _93) + ceil32(return_data.size) + 256 len floor32(mem[_239 + (32 * _93) + ceil32(return_data.size) + 224])]
    emit 0xa4932d29: 64, 0, 23, 'Sono dopo il primo swap'
    require 0 < arg2.length
    mem[(32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 256] = 2
    mem[(32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 288] = stor12
    mem[(32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 320] = stor10
    mem[(32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 356] = cd[(arg2 + 36)]
    mem[(32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 388] = 64
    mem[(32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 420] = 2
    mem[(32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 452 len 0] = None
    require ext_code.size(stor3)
    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[(arg2 + 36)], Array(len=2, data=mem[(32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 452 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _346 = mem[(32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32
    require mem[(32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 <= 4294967296
    require mem[(32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 352] <= 4294967296 and mem[(32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * mem[mem[(32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 352]) + 32 <= return_data.size
    mem[(32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 352]
    _349 = mem[_346 + (32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 352]
    mem[(32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 384 len floor32(mem[_346 + (32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 352])] = mem[_346 + (32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_346 + (32 * _242) + (32 * _93) + (2 * ceil32(return_data.size)) + 352])]
    require 0 < mem[(32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 352]
    _386 = mem[(32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 384]
    require ext_code.size(stor12)
    call stor12.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, cd[(arg2 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 388] = cd[(arg2 + 36)]
    mem[(32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 420] = _386
    mem[(32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 484] = this.address
    mem[(32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 516] = block.timestamp + 60
    mem[(32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 452] = 160
    mem[(32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 548] = 2
    mem[(32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 580 len 0] = None
    require ext_code.size(stor3)
    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[(arg2 + 36)], _386, Array(len=2, data=mem[(32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 580 len 64]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _349) + (32 * _242) + (32 * _93) + (6 * ceil32(return_data.size)) + 384
    require return_data.size >= 32
    _421 = mem[(32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32
    require mem[(32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 <= 4294967296
    require mem[(32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * mem[mem[(32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
    mem[(32 * _349) + (32 * _242) + (32 * _93) + (6 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 384]
    _424 = mem[_421 + (32 * _349) + (32 * _242) + (32 * _93) + (4 * ceil32(return_data.size)) + 384]
    emit 0xa4932d29: 64, 0, 25, 'Sono dopo il secondo swap'
    idx = 0
    while idx < arg1.length:
        require idx < arg3.length
        require idx < arg2.length
        if cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)] < cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < arg1.length
        mem[(32 * _424) + (32 * _349) + (32 * _242) + (32 * _93) + (6 * ceil32(return_data.size)) + 420] = stor1
        mem[(32 * _424) + (32 * _349) + (32 * _242) + (32 * _93) + (6 * ceil32(return_data.size)) + 452] = cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)]
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor1, cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)]
        mem[(32 * _424) + (32 * _349) + (32 * _242) + (32 * _93) + (6 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    emit 0xa4932d29: 64, 0, 21, 'Ho restituito i soldi'
    return 1
}



}
