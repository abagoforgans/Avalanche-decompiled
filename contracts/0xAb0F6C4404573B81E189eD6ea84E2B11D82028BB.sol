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
address stor14;
address stor15;
address stor16;

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
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_1a64ed27(?) {
    require calldata.size - 4 >= 64
    stor15 = stor3
    stor16 = stor4
    stor14 = arg1
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

function sub_9d4b3a90(?) {
    require calldata.size - 4 >= 64
    stor15 = stor4
    stor16 = stor3
    stor14 = arg1
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

function sub_0faf08c2(?) {
    require calldata.size - 4 >= 128
    mem[160] = arg3
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg4
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg4, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _40 = mem[192 len 4], Mask(224, 32, arg4) >> 32
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    _43 = mem[_40 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_40 + 192])] = mem[_40 + 224 len floor32(mem[_40 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _70 = mem[ceil32(return_data.size) + 256]
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _43) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _43) + ceil32(return_data.size) + 228] = arg4
    mem[(32 * _43) + ceil32(return_data.size) + 260] = _70
    mem[(32 * _43) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _43) + ceil32(return_data.size) + 356] = block.timestamp + 60
    mem[(32 * _43) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _43) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _43) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg4, _70, Array(len=2, data=mem[(32 * _43) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _43) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _43) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(32 * _43) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
    require mem[(32 * _43) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _43) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg4) >> 32 + (32 * _43) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _43) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _43) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg4) >> 32 + (32 * _43) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
}

function sub_6a338933(?) {
    require calldata.size - 4 >= 96
    mem[96] = 2
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
    _43 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _46 = mem[_43 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_43 + 192])] = mem[_43 + 224 len floor32(mem[_43 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _76 = mem[ceil32(return_data.size) + 256]
    if not mem[ceil32(return_data.size) + 256]:
        revert with 0, 'Pangolin non darebbe output'
    mem[128] = arg2
    mem[160] = arg1
    mem[(32 * _46) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _46) + ceil32(return_data.size) + 228] = _76
    mem[(32 * _46) + ceil32(return_data.size) + 260] = 64
    mem[(32 * _46) + ceil32(return_data.size) + 292] = 2
    mem[(32 * _46) + ceil32(return_data.size) + 324 len 0] = None
    require ext_code.size(stor4)
    staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _76, Array(len=2, data=mem[(32 * _46) + ceil32(return_data.size) + 324 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _46) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _46) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _102 = mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _76) >> 32
    require mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _76) >> 32 <= 4294967296
    require mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _76) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _76) >> 32 + (32 * _46) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _76) >> 32 + (32 * mem[mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _76) >> 32 + (32 * _46) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
    mem[(32 * _46) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _76) >> 32 + (32 * _46) + ceil32(return_data.size) + 224]
    _105 = mem[_102 + (32 * _46) + ceil32(return_data.size) + 224]
    mem[(32 * _46) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_102 + (32 * _46) + ceil32(return_data.size) + 224])] = mem[_102 + (32 * _46) + ceil32(return_data.size) + 256 len floor32(mem[_102 + (32 * _46) + ceil32(return_data.size) + 224])]
    require 1 < mem[(32 * _46) + (2 * ceil32(return_data.size)) + 224]
    if not mem[(32 * _46) + (2 * ceil32(return_data.size)) + 288]:
        revert with 0, 'Joe non darebbe output'
    mem[(32 * _105) + (32 * _46) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _46) + (2 * ceil32(return_data.size)) + 288] - arg3
    return memory
      from (32 * _105) + (32 * _46) + (2 * ceil32(return_data.size)) + 256
       len 32
}

function sub_d09f390f(?) {
    require calldata.size - 4 >= 96
    mem[96] = 2
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
    _43 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _46 = mem[_43 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_43 + 192])] = mem[_43 + 224 len floor32(mem[_43 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _76 = mem[ceil32(return_data.size) + 256]
    if not mem[ceil32(return_data.size) + 256]:
        revert with 0, 'Pangolin non darebbe output'
    mem[128] = arg2
    mem[160] = arg1
    mem[(32 * _46) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _46) + ceil32(return_data.size) + 228] = _76
    mem[(32 * _46) + ceil32(return_data.size) + 260] = 64
    mem[(32 * _46) + ceil32(return_data.size) + 292] = 2
    mem[(32 * _46) + ceil32(return_data.size) + 324 len 0] = None
    require ext_code.size(stor3)
    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _76, Array(len=2, data=mem[(32 * _46) + ceil32(return_data.size) + 324 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _46) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _46) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _102 = mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _76) >> 32
    require mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _76) >> 32 <= 4294967296
    require mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _76) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _76) >> 32 + (32 * _46) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _76) >> 32 + (32 * mem[mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _76) >> 32 + (32 * _46) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
    mem[(32 * _46) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _76) >> 32 + (32 * _46) + ceil32(return_data.size) + 224]
    _105 = mem[_102 + (32 * _46) + ceil32(return_data.size) + 224]
    mem[(32 * _46) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_102 + (32 * _46) + ceil32(return_data.size) + 224])] = mem[_102 + (32 * _46) + ceil32(return_data.size) + 256 len floor32(mem[_102 + (32 * _46) + ceil32(return_data.size) + 224])]
    require 1 < mem[(32 * _46) + (2 * ceil32(return_data.size)) + 224]
    if not mem[(32 * _46) + (2 * ceil32(return_data.size)) + 288]:
        revert with 0, 'Joe non darebbe output'
    mem[(32 * _105) + (32 * _46) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _46) + (2 * ceil32(return_data.size)) + 288] - arg3
    return memory
      from (32 * _105) + (32 * _46) + (2 * ceil32(return_data.size)) + 256
       len 32
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
    mem[96] = 2
    mem[128] = stor10
    mem[160] = stor14
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = cd[(arg2 + 36)]
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(stor15)
    staticcall stor15.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[(arg2 + 36)], Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _88 = mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32
    require mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 192]
    _91 = mem[_88 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_88 + 192])] = mem[_88 + 224 len floor32(mem[_88 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _166 = mem[ceil32(return_data.size) + 256]
    require ext_code.size(stor10)
    call stor10.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor15, cd[(arg2 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    staticcall stor10.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _91) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _91) + ceil32(return_data.size) + 228] = cd[(arg2 + 36)]
    mem[(32 * _91) + ceil32(return_data.size) + 260] = _166
    mem[(32 * _91) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _91) + ceil32(return_data.size) + 356] = block.timestamp + 60
    mem[(32 * _91) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _91) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _91) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(stor15)
    call stor15.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[(arg2 + 36)], _166, Array(len=2, data=mem[(32 * _91) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _91) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _91) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _237 = mem[(32 * _91) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32
    require mem[(32 * _91) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 <= 4294967296
    require mem[(32 * _91) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _91) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _91) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _91) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * mem[mem[(32 * _91) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _91) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
    mem[(32 * _91) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _91) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg2 + 36)]) >> 32 + (32 * _91) + ceil32(return_data.size) + 224]
    _240 = mem[_237 + (32 * _91) + ceil32(return_data.size) + 224]
    mem[(32 * _91) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_237 + (32 * _91) + ceil32(return_data.size) + 224])] = mem[_237 + (32 * _91) + ceil32(return_data.size) + 256 len floor32(mem[_237 + (32 * _91) + ceil32(return_data.size) + 224])]
    require ext_code.size(stor14)
    staticcall stor14.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 256] = 2
    mem[(32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 288] = stor14
    mem[(32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 320] = stor10
    mem[(32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
    mem[(32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 388] = 64
    mem[(32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 420] = 2
    mem[(32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 452 len 0] = None
    require ext_code.size(stor16)
    staticcall stor16.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[(32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 452 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _342 = mem[(32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
    require mem[(32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + (32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 352] <= 4294967296 and mem[(32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + (32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 352]) + 32 <= return_data.size
    mem[(32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + (32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 352]
    _345 = mem[_342 + (32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 352]
    mem[(32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 384 len floor32(mem[_342 + (32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 352])] = mem[_342 + (32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_342 + (32 * _240) + (32 * _91) + (2 * ceil32(return_data.size)) + 352])]
    require 1 < mem[(32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 352]
    _380 = mem[(32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 416]
    require ext_code.size(stor14)
    call stor14.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor16, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor14)
    staticcall stor14.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor16
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
    mem[(32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 420] = _380
    mem[(32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 484] = this.address
    mem[(32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 516] = block.timestamp + 60
    mem[(32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 452] = 160
    mem[(32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 548] = 2
    mem[(32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 580 len 0] = None
    require ext_code.size(stor16)
    call stor16.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], _380, Array(len=2, data=mem[(32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 580 len 64]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _345) + (32 * _240) + (32 * _91) + (6 * ceil32(return_data.size)) + 384
    require return_data.size >= 32
    _411 = mem[(32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28]
    require mem[(32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + (32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + (32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
    mem[(32 * _345) + (32 * _240) + (32 * _91) + (6 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + (32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 384]
    _414 = mem[_411 + (32 * _345) + (32 * _240) + (32 * _91) + (4 * ceil32(return_data.size)) + 384]
    idx = 0
    while idx < arg1.length:
        require idx < arg3.length
        require idx < arg2.length
        if cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)] < cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < arg1.length
        mem[(32 * _414) + (32 * _345) + (32 * _240) + (32 * _91) + (6 * ceil32(return_data.size)) + 420] = stor1
        mem[(32 * _414) + (32 * _345) + (32 * _240) + (32 * _91) + (6 * ceil32(return_data.size)) + 452] = cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)]
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor1, cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)]
        mem[(32 * _414) + (32 * _345) + (32 * _240) + (32 * _91) + (6 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}



}
