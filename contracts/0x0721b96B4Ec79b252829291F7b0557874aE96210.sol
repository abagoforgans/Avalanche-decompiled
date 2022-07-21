contract main {




// =====================  Runtime code  =====================


#
#  - sub_640c1487(?)
#
address owner;
address routerAddress;
address chiTokenAddress;
uint256 stor3;
uint256 stor4;
uint256 stor5;
array of struct stor6;
uint256 stor7;
address stor8;
address stor9;
uint8 stor10; offset 160
uint8 stor10; offset 168
uint8 stor10; offset 176
uint8 stor10; offset 184
uint8 stor10; offset 192
uint16 stor10; offset 168
uint64 stor10; offset 192
uint128 stor10; offset 184
address stor10;
uint256 stor10;
uint256 stor10;
mapping of uint8 stor11;
address stor12;

function chiToken() {
    return chiTokenAddress
}

function owner() {
    return owner
}

function sub_9fe6c6aa(?) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function trigger() {
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    uint8(stor10.field_160) = 1
}

function sub_378d77a3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    stor12 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function mintGasToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(chiTokenAddress)
    call chiTokenAddress.0xa0712d68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1ad0610b(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw() {
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_28d3ef2f(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        stor11[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function sub_c022956c(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        stor11[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function wrap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    require ext_code.size(routerAddress)
    staticcall routerAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unwrap() {
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    require ext_code.size(routerAddress)
    staticcall routerAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getConfiguration() {
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    if stor6.length:
        mem[128] = uint256(stor6.field_0)
        idx = 128
        s = 0
        while (32 * stor6.length) + 96 > idx:
            mem[idx + 32] = stor6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor6.length) + 544 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
    return stor8, 
           stor9,
           stor3,
           stor4,
           stor5,
           bool(uint8(stor10.field_176)),
           bool(uint8(stor10.field_168)),
           bool(uint8(stor10.field_160)),
           bool(uint8(stor10.field_184)),
           stor7,
           Array(len=stor6.length, data=mem[128 len floor32(stor6.length)], mem[(32 * stor6.length) + floor32(stor6.length) + 544 len (32 * stor6.length) - floor32(stor6.length)]),
           address(stor10.field_0)
}

function withdraw(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    if arg2 > 100:
        revert with 0, 'Percent should be less/equal 100'
    if arg2 <= 0:
        revert with 0, 'Percent should be greater than 0'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if arg2 == 100:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), ext_call.return_data[0]
    else:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg2 * ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_2c2ab12e(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    routerAddress = arg1
    address(stor10.field_0) = arg1
    chiTokenAddress = arg2
    stor12 = arg3
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor11[ext_call.return_data[12 len 20]] = 1
    idx = 0
    while idx < arg4.length:
        require idx < arg4.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        stor11[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_061e37a3(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _20 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_20))
        staticcall address(_20).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _26 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = arg2
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_26))
        call address(_26).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_c01dcf39(?) {
    require calldata.size - 4 >= 320
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + (32 * arg8.length) + 36 <= calldata.size
    mem[128 len 32 * arg8.length] = call.data[arg8 + 36 len 32 * arg8.length]
    mem[(32 * arg8.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    stor8 = arg1
    stor3 = arg3
    stor4 = arg4
    stor9 = arg2
    stor5 = arg7
    routerAddress = arg10
    address(stor10.field_0) = arg10
    uint16(stor10.field_168) = uint16(arg5)
    uint8(stor10.field_176) = uint8(arg5)
    Mask(72, 0, stor10.field_184) = Mask(72, 0, arg6)
    uint64(stor10.field_192) = Mask(64, 24, arg5) >> 24
    uint64(stor10.field_192) = Mask(64, 16, arg5) >> 16
    stor6.length = arg8.length
    if not arg8.length:
        idx = 0
        while stor6.length > idx:
            stor6[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg8.length) + 128 > idx:
            stor6[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
        while stor6.length > idx:
            stor6[idx].field_0 = 0
            idx = idx + 1
            continue 
    uint256(stor10.field_0) = 0xffffffffffffff00ffffff00ffffffffffffffffffffffffffffffffffffffff and Mask(48, 208, uint256(stor10.field_0)) or Mask(200, 0, stor10.field_0) or arg9 << 200
    stor7 = 0
}

function withdrawTokens(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _24 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_24))
        staticcall address(_24).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(this.address)
        staticcall this.address.0x8da5cb5b with:
                gas gas_remaining wei
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _34 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = address(ext_call.return_data[0])
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_34))
        call address(_34).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function convert(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if bool(stor11[msg.sender]) != 1:
        revert with 0, 'Only Baby Eagles'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                    mem[202 len 26]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = arg2
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = arg4
    mem[292] = this.address
    mem[324] = block.timestamp
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, arg4, Array(len=2, data=mem[388 len 64]), this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
}

function sub_2e4175e4(?) {
    if bool(stor11[msg.sender]) != 1:
        revert with 0, 'Only Baby Eagles'
    require stor6.length
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < uint256(stor6.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                    mem[202 len 26]
    require ext_code.size(stor8)
    call stor8.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, uint256(stor6.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = stor9
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor6.length
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = uint256(stor6.field_0)
    mem[228] = 0
    mem[292] = this.address
    mem[324] = block.timestamp
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _77 = mem[192 len 4], Mask(224, 0, stor6.field_32)
    require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
    require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
    _80 = mem[_77 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_77 + 192])] = mem[_77 + 224 len floor32(mem[_77 + 192])]
    require ext_code.size(stor9)
    staticcall stor9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 < stor6.length:
            return uint256(stor6.field_0), 0, 0, 0
    else:
        require ext_code.size(stor9)
        call stor9.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _80) + ceil32(return_data.size) + 288] = stor8
        mem[(32 * _80) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _80) + ceil32(return_data.size) + 324] = ext_call.return_data[0]
        mem[(32 * _80) + ceil32(return_data.size) + 356] = 64
        mem[(32 * _80) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _80) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(routerAddress)
        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[(32 * _80) + ceil32(return_data.size) + 420 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _80) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _80) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _168 = mem[(32 * _80) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28]
        require mem[(32 * _80) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * _80) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[(32 * _80) + ceil32(return_data.size) + mem[(32 * _80) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= 4294967296 and mem[(32 * _80) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _80) + ceil32(return_data.size) + mem[(32 * _80) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 <= return_data.size
        mem[(32 * _80) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _80) + ceil32(return_data.size) + mem[(32 * _80) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + 320]
        _171 = mem[(32 * _80) + ceil32(return_data.size) + _168 + 320]
        mem[(32 * _80) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _80) + ceil32(return_data.size) + _168 + 320])] = mem[(32 * _80) + ceil32(return_data.size) + _168 + 352 len floor32(mem[(32 * _80) + ceil32(return_data.size) + _168 + 320])]
        require ext_code.size(stor8)
        staticcall stor8.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _171) + (32 * _80) + (2 * ceil32(return_data.size)) + 388] = 0
        mem[(32 * _171) + (32 * _80) + (2 * ceil32(return_data.size)) + 548 len 0] = None
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[(32 * _171) + (32 * _80) + (2 * ceil32(return_data.size)) + 548 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _171) + (32 * _80) + (2 * ceil32(return_data.size)) + 356] = this.address
        require ext_code.size(stor8)
        staticcall stor8.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * _171) + (32 * _80) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor6.length:
            if 0 < stor6.length:
                if 1 < mem[(32 * _80) + (2 * ceil32(return_data.size)) + 320]:
                    return uint256(stor6.field_0), uint256(stor6.field_0), mem[(32 * _80) + (2 * ceil32(return_data.size)) + 384], 0
    revert
}

function sub_da593b64(?) {
    require calldata.size - 4 >= 192
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[96] = arg6.length
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + 128] = 0
    mem[0] = msg.sender
    mem[32] = 11
    if bool(stor11[msg.sender]) != 1:
        revert with 0, 'Only Baby Eagles'
    if not arg5:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 
                        32,
                        38,
                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                        mem[(32 * arg6.length) + 234 len 26]
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg6.length) + 420 len 0] = None
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[(32 * arg6.length) + 420 len 64]), stor12, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require 0 < arg6.length
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < mem[128]:
            revert with 0, 
                        32,
                        38,
                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                        mem[(32 * arg6.length) + 234 len 26]
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, mem[128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg6.length) + 128] = 2
        mem[(32 * arg6.length) + 160] = arg1
        mem[(32 * arg6.length) + 192] = arg2
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg6.length
        mem[(32 * arg6.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg6.length) + 228] = mem[128]
        mem[(32 * arg6.length) + 260] = 0
        mem[(32 * arg6.length) + 324] = this.address
        mem[(32 * arg6.length) + 356] = block.timestamp
        mem[(32 * arg6.length) + 292] = 160
        mem[(32 * arg6.length) + 388] = 2
        mem[(32 * arg6.length) + 420 len 0] = None
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[128], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * arg6.length) + 420 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg6.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg6.length) + ceil32(return_data.size) + 224
        require return_data.size >= 32
        _102 = mem[(32 * arg6.length) + 224 len 4], mem[128 len 28]
        require mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] <= 4294967296
        require mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 32 <= return_data.size
        require mem[(32 * arg6.length) + mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 224] <= 4294967296 and mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + (32 * mem[(32 * arg6.length) + mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 224]) + 32 <= return_data.size
        mem[(32 * arg6.length) + ceil32(return_data.size) + 224] = mem[(32 * arg6.length) + mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 224]
        _105 = mem[(32 * arg6.length) + _102 + 224]
        mem[(32 * arg6.length) + ceil32(return_data.size) + 256 len floor32(mem[(32 * arg6.length) + _102 + 224])] = mem[(32 * arg6.length) + _102 + 256 len floor32(mem[(32 * arg6.length) + _102 + 224])]
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Eagle Swap Check'
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _105) + (32 * arg6.length) + ceil32(return_data.size) + 548 len 0] = None
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _105) + (32 * arg6.length) + ceil32(return_data.size) + 548 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg6.length
            require 1 < arg6.length
            if mem[128] <= mem[160]:
                revert with 0, 'Eagle Swap Check'
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg3:
                revert with 0, 'yNot enough token base in the contractddres'
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _105) + (32 * arg6.length) + ceil32(return_data.size) + 644 len 0] = None
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, 160, 0, stor12, block.timestamp, 2, mem[(32 * _105) + (32 * arg6.length) + ceil32(return_data.size) + 644 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_b8938e36(?) {
    require calldata.size - 4 >= 192
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[96] = arg6.length
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + 128] = 0
    mem[0] = msg.sender
    mem[32] = 11
    if bool(stor11[msg.sender]) != 1:
        revert with 0, 'Only Baby Eagles'
    if not arg5:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 
                        32,
                        38,
                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                        mem[(32 * arg6.length) + 234 len 26]
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg6.length) + 192] = arg2
        mem[(32 * arg6.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg6.length) + 228] = arg3
        mem[(32 * arg6.length) + 260] = arg4
        mem[(32 * arg6.length) + 324] = stor12
        mem[(32 * arg6.length) + 356] = block.timestamp
        mem[(32 * arg6.length) + 292] = 160
        mem[(32 * arg6.length) + 388] = 2
        mem[(32 * arg6.length) + 420 len 0] = None
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[(32 * arg6.length) + 420 len 64]), stor12, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg6.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg6.length) + ceil32(return_data.size) + 224
        require return_data.size >= 32
        require mem[(32 * arg6.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * arg6.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * arg6.length) + mem[(32 * arg6.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * arg6.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * arg6.length) + mem[(32 * arg6.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
    else:
        require 0 < arg6.length
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < mem[128]:
            revert with 0, 
                        32,
                        38,
                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                        mem[(32 * arg6.length) + 234 len 26]
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, mem[128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg6.length) + 128] = 2
        mem[(32 * arg6.length) + 160] = arg1
        mem[(32 * arg6.length) + 192] = arg2
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg6.length
        mem[(32 * arg6.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg6.length) + 228] = mem[128]
        mem[(32 * arg6.length) + 260] = 0
        mem[(32 * arg6.length) + 324] = this.address
        mem[(32 * arg6.length) + 356] = block.timestamp
        mem[(32 * arg6.length) + 292] = 160
        mem[(32 * arg6.length) + 388] = 2
        mem[(32 * arg6.length) + 420 len 0] = None
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[128], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * arg6.length) + 420 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg6.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg6.length) + ceil32(return_data.size) + 224
        require return_data.size >= 32
        _115 = mem[(32 * arg6.length) + 224 len 4], mem[128 len 28]
        require mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] <= 4294967296
        require mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 32 <= return_data.size
        require mem[(32 * arg6.length) + mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 224] <= 4294967296 and mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + (32 * mem[(32 * arg6.length) + mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 224]) + 32 <= return_data.size
        mem[(32 * arg6.length) + ceil32(return_data.size) + 224] = mem[(32 * arg6.length) + mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 224]
        _121 = mem[(32 * arg6.length) + _115 + 224]
        mem[(32 * arg6.length) + ceil32(return_data.size) + 256 len floor32(mem[(32 * arg6.length) + _115 + 224])] = mem[(32 * arg6.length) + _115 + 256 len floor32(mem[(32 * arg6.length) + _115 + 224])]
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Eagle Swap Check'
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 548 len 0] = None
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 548 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg6.length
            require 1 < arg6.length
            if mem[128] <= mem[160]:
                revert with 0, 'Eagle Swap Check'
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg3:
                revert with 0, 'yNot enough token base in the contractddres'
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 416] = arg2
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 452] = arg3
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 484] = arg4
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 548] = stor12
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 580] = block.timestamp
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 516] = 160
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 612] = 2
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 644 len 0] = None
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, 160, 0, stor12, block.timestamp, 2, mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 644 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _121) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            require mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448] <= 4294967296 and mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 32 <= return_data.size
}

function sub_2a99e35d(?) {
    require calldata.size - 4 >= 256
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[96] = arg6.length
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + 128] = 0
    mem[0] = msg.sender
    mem[32] = 11
    if bool(stor11[msg.sender]) != 1:
        revert with 0, 'Only Baby Eagles'
    if not arg5:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 
                        32,
                        38,
                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                        mem[(32 * arg6.length) + 234 len 26]
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg6.length) + 128] = 2
        mem[64] = (32 * arg6.length) + 224
        mem[(32 * arg6.length) + 160] = arg1
        mem[(32 * arg6.length) + 192] = arg2
        require arg8
        idx = 0
        while idx < arg8:
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3 / arg8
            mem[mem[64] + 36] = arg4
            mem[mem[64] + 100] = arg7
            mem[mem[64] + 132] = block.timestamp
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[(32 * arg6.length) + 128]
            _113 = mem[(32 * arg6.length) + 128]
            s = 0
            while s < 32 * _113:
                mem[s + mem[64] + 196] = mem[s + (32 * arg6.length) + 160]
                s = s + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3 / arg8, arg4, 160, address(arg7), block.timestamp, mem[mem[64] + 164 len (32 * _113) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _184 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _186 = mem[_184]
            require mem[_184] <= 4294967296
            require mem[_184] + 32 <= return_data.size
            require mem[_184 + mem[_184]] <= 4294967296 and mem[_184] + (32 * mem[_184 + mem[_184]]) + 32 <= return_data.size
            mem[_184 + ceil32(return_data.size)] = mem[_184 + mem[_184]]
            _193 = mem[_184 + _186]
            s = 0
            while s < 32 * _193:
                mem[s + _184 + ceil32(return_data.size) + 32] = mem[s + _184 + _186 + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _193) + _184 + ceil32(return_data.size) + 32
            idx = idx + 1
            continue 
    else:
        require 0 < arg6.length
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < mem[128]:
            revert with 0, 
                        32,
                        38,
                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                        mem[(32 * arg6.length) + 234 len 26]
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, mem[128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg6.length) + 128] = 2
        mem[(32 * arg6.length) + 160] = arg1
        mem[(32 * arg6.length) + 192] = arg2
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg6.length
        mem[(32 * arg6.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg6.length) + 228] = mem[128]
        mem[(32 * arg6.length) + 260] = 0
        mem[(32 * arg6.length) + 324] = this.address
        mem[(32 * arg6.length) + 356] = block.timestamp
        mem[(32 * arg6.length) + 292] = 160
        mem[(32 * arg6.length) + 388] = 2
        mem[(32 * arg6.length) + 420 len 0] = None
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[128], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * arg6.length) + 420 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg6.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg6.length) + ceil32(return_data.size) + 224
        require return_data.size >= 32
        _117 = mem[(32 * arg6.length) + 224 len 4], mem[128 len 28]
        require mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] <= 4294967296
        require mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 32 <= return_data.size
        require mem[(32 * arg6.length) + mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 224] <= 4294967296 and mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + (32 * mem[(32 * arg6.length) + mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 224]) + 32 <= return_data.size
        mem[(32 * arg6.length) + ceil32(return_data.size) + 224] = mem[(32 * arg6.length) + mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 224]
        _123 = mem[(32 * arg6.length) + _117 + 224]
        mem[(32 * arg6.length) + ceil32(return_data.size) + 256 len floor32(mem[(32 * arg6.length) + _117 + 224])] = mem[(32 * arg6.length) + _117 + 256 len floor32(mem[(32 * arg6.length) + _117 + 224])]
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Eagle Swap Check'
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _123) + (32 * arg6.length) + ceil32(return_data.size) + 256] = 2
            mem[(32 * _123) + (32 * arg6.length) + ceil32(return_data.size) + 288] = arg2
            mem[(32 * _123) + (32 * arg6.length) + ceil32(return_data.size) + 320] = arg1
            mem[(32 * _123) + (32 * arg6.length) + ceil32(return_data.size) + 452] = this.address
            mem[(32 * _123) + (32 * arg6.length) + ceil32(return_data.size) + 484] = block.timestamp
            mem[(32 * _123) + (32 * arg6.length) + ceil32(return_data.size) + 420] = 160
            mem[(32 * _123) + (32 * arg6.length) + ceil32(return_data.size) + 516] = 2
            mem[(32 * _123) + (32 * arg6.length) + ceil32(return_data.size) + 548 len 0] = None
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _123) + (32 * arg6.length) + ceil32(return_data.size) + 548 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg6.length
            require 1 < arg6.length
            if mem[128] <= mem[160]:
                revert with 0, 'Eagle Swap Check'
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg3:
                revert with 0, 'yNot enough token base in the contractddres'
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _123) + (32 * arg6.length) + ceil32(return_data.size) + 352] = 2
            mem[64] = (32 * _123) + (32 * arg6.length) + ceil32(return_data.size) + 448
            mem[(32 * _123) + (32 * arg6.length) + ceil32(return_data.size) + 384] = arg1
            mem[(32 * _123) + (32 * arg6.length) + ceil32(return_data.size) + 416] = arg2
            require arg8
            idx = 0
            while idx < arg8:
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg3 / arg8
                mem[mem[64] + 36] = arg4
                mem[mem[64] + 100] = arg7
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[(32 * _123) + (32 * arg6.length) + ceil32(return_data.size) + 352]
                _275 = mem[(32 * _123) + (32 * arg6.length) + ceil32(return_data.size) + 352]
                s = 0
                while s < 32 * _275:
                    mem[s + mem[64] + 196] = mem[s + (32 * _123) + (32 * arg6.length) + ceil32(return_data.size) + 384]
                    s = s + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3 / arg8, arg4, 160, address(arg7), block.timestamp, mem[mem[64] + 164 len (32 * _275) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _286 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _287 = mem[_286]
                require mem[_286] <= 4294967296
                require mem[_286] + 32 <= return_data.size
                require mem[_286 + mem[_286]] <= 4294967296 and mem[_286] + (32 * mem[_286 + mem[_286]]) + 32 <= return_data.size
                mem[_286 + ceil32(return_data.size)] = mem[_286 + mem[_286]]
                _290 = mem[_286 + _287]
                s = 0
                while s < 32 * _290:
                    mem[s + _286 + ceil32(return_data.size) + 32] = mem[s + _286 + _287 + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _290) + _286 + ceil32(return_data.size) + 32
                idx = idx + 1
                continue 
}

function sub_5b6ada49(?) {
    require calldata.size - 4 >= 96
    mem[0] = msg.sender
    mem[32] = 11
    if bool(stor11[msg.sender]) != 1:
        revert with 0, 'Only Baby Eagles'
    if block.number < arg3:
        revert with 0, 'Not yet.'
    if arg1 < stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe4561676c657320616c72656164792063686173696e6720616e6f746865722070726579,
                    mem[200 len 28]
    if arg1 <= stor7:
        if uint8(stor10.field_192):
            revert with 0, 'Eagle abort'
        if uint8(stor10.field_184):
            if not uint8(stor10.field_168):
                require ext_code.size(stor8)
                staticcall stor8.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < stor3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                mem[202 len 26]
                require ext_code.size(stor8)
                call stor8.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 2
                mem[64] = 192
                mem[128] = stor8
                mem[160] = stor9
                require stor4
                idx = 0
                while idx < stor4:
                    _596 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor3 / stor4
                    mem[mem[64] + 36] = stor5
                    mem[mem[64] + 100] = arg2
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[s + mem[64] + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[96]) + _596 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1020 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1032 = mem[_1020]
                    require mem[_1020] <= 4294967296
                    require mem[_1020] + 32 <= return_data.size
                    require mem[_1020 + mem[_1020]] <= 4294967296 and mem[_1020] + (32 * mem[_1020 + mem[_1020]]) + 32 <= return_data.size
                    mem[_1020 + ceil32(return_data.size)] = mem[_1020 + mem[_1020]]
                    _1088 = mem[_1020 + _1032]
                    s = 0
                    while s < 32 * _1088:
                        mem[s + _1020 + ceil32(return_data.size) + 32] = mem[s + _1020 + _1032 + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1088) + _1020 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    continue 
            else:
                if not uint8(stor10.field_176):
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                    mem[202 len 26]
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 2
                    mem[64] = 192
                    mem[128] = stor8
                    mem[160] = stor9
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _599 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = arg2
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _599 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1021 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1034 = mem[_1021]
                        require mem[_1021] <= 4294967296
                        require mem[_1021] + 32 <= return_data.size
                        require mem[_1021 + mem[_1021]] <= 4294967296 and mem[_1021] + (32 * mem[_1021 + mem[_1021]]) + 32 <= return_data.size
                        mem[_1021 + ceil32(return_data.size)] = mem[_1021 + mem[_1021]]
                        _1089 = mem[_1021 + _1034]
                        s = 0
                        while s < 32 * _1089:
                            mem[s + _1021 + ceil32(return_data.size) + 32] = mem[s + _1021 + _1034 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1089) + _1021 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    uint8(stor10.field_192) = 1
                    require stor6.length
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < uint256(stor6.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                    mem[202 len 26]
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, uint256(stor6.field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 2
                    mem[128] = stor8
                    mem[160] = stor9
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require stor6.length
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = uint256(stor6.field_0)
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _648 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                    require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                    require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                    _704 = mem[_648 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_648 + 192])] = mem[_648 + 224 len floor32(mem[_648 + 192])]
                    require ext_code.size(stor9)
                    staticcall stor9.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require 0 < stor6.length
                        emit 0xd11b16a8: uint256(stor6.field_0), 0
                        return 0
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'Check: No returned tokens'
                    require ext_code.size(stor9)
                    call stor9.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _704) + ceil32(return_data.size) + 224] = 2
                    mem[(32 * _704) + ceil32(return_data.size) + 256] = stor9
                    mem[(32 * _704) + ceil32(return_data.size) + 288] = stor8
                    mem[(32 * _704) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _704) + ceil32(return_data.size) + 452] = block.timestamp
                    mem[(32 * _704) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _704) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _704) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _704) + ceil32(return_data.size) + 516 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require stor6.length
                    require 1 < stor6.length
                    require 0 < stor6.length
                    if uint256(stor6.field_0) <= uint256(stor6.field_256):
                        emit 0xd11b16a8: uint256(stor6.field_0), uint256(stor6.field_0)
                        return 0
                    mem[0] = 6
                    emit 0xccf83d08: uint256(stor6.field_0), uint256(stor6.field_0)
                    uint256(stor10.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor10.field_0)
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0, 'yNot enough token base in the contractddres'
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _704) + ceil32(return_data.size) + 320] = 2
                    mem[64] = (32 * _704) + ceil32(return_data.size) + 416
                    mem[(32 * _704) + ceil32(return_data.size) + 352] = stor8
                    mem[(32 * _704) + ceil32(return_data.size) + 384] = stor9
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _1492 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = arg2
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[(32 * _704) + ceil32(return_data.size) + 320]
                        _1494 = mem[(32 * _704) + ceil32(return_data.size) + 320]
                        s = 0
                        while s < 32 * _1494:
                            mem[s + mem[64] + 196] = mem[s + (32 * _704) + ceil32(return_data.size) + 352]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * _1494) + _1492 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1560 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1564 = mem[_1560]
                        require mem[_1560] <= 4294967296
                        require mem[_1560] + 32 <= return_data.size
                        require mem[_1560 + mem[_1560]] <= 4294967296 and mem[_1560] + (32 * mem[_1560 + mem[_1560]]) + 32 <= return_data.size
                        mem[_1560 + ceil32(return_data.size)] = mem[_1560 + mem[_1560]]
                        _1576 = mem[_1560 + _1564]
                        s = 0
                        while s < 32 * _1576:
                            mem[s + _1560 + ceil32(return_data.size) + 32] = mem[s + _1560 + _1564 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1576) + _1560 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
        else:
            if uint8(stor10.field_160):
                revert with 0, 'Eagle full'
            if not uint8(stor10.field_168):
                require ext_code.size(stor8)
                staticcall stor8.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < stor3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                mem[202 len 26]
                require ext_code.size(stor8)
                call stor8.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 2
                mem[64] = 192
                mem[128] = stor8
                mem[160] = stor9
                require stor4
                idx = 0
                while idx < stor4:
                    _604 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor3 / stor4
                    mem[mem[64] + 36] = stor5
                    mem[mem[64] + 100] = arg2
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[s + mem[64] + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[96]) + _604 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1023 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1037 = mem[_1023]
                    require mem[_1023] <= 4294967296
                    require mem[_1023] + 32 <= return_data.size
                    require mem[_1023 + mem[_1023]] <= 4294967296 and mem[_1023] + (32 * mem[_1023 + mem[_1023]]) + 32 <= return_data.size
                    mem[_1023 + ceil32(return_data.size)] = mem[_1023 + mem[_1023]]
                    _1090 = mem[_1023 + _1037]
                    s = 0
                    while s < 32 * _1090:
                        mem[s + _1023 + ceil32(return_data.size) + 32] = mem[s + _1023 + _1037 + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1090) + _1023 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    continue 
            else:
                if not uint8(stor10.field_176):
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                    mem[202 len 26]
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 2
                    mem[64] = 192
                    mem[128] = stor8
                    mem[160] = stor9
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _607 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = arg2
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _607 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1024 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1039 = mem[_1024]
                        require mem[_1024] <= 4294967296
                        require mem[_1024] + 32 <= return_data.size
                        require mem[_1024 + mem[_1024]] <= 4294967296 and mem[_1024] + (32 * mem[_1024 + mem[_1024]]) + 32 <= return_data.size
                        mem[_1024 + ceil32(return_data.size)] = mem[_1024 + mem[_1024]]
                        _1091 = mem[_1024 + _1039]
                        s = 0
                        while s < 32 * _1091:
                            mem[s + _1024 + ceil32(return_data.size) + 32] = mem[s + _1024 + _1039 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1091) + _1024 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    uint8(stor10.field_192) = 1
                    require stor6.length
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < uint256(stor6.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                    mem[202 len 26]
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, uint256(stor6.field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 2
                    mem[128] = stor8
                    mem[160] = stor9
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require stor6.length
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = uint256(stor6.field_0)
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _650 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                    require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                    require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                    _709 = mem[_650 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_650 + 192])] = mem[_650 + 224 len floor32(mem[_650 + 192])]
                    require ext_code.size(stor9)
                    staticcall stor9.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require 0 < stor6.length
                        emit 0xd11b16a8: uint256(stor6.field_0), 0
                        return 0
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'Check: No returned tokens'
                    require ext_code.size(stor9)
                    call stor9.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _709) + ceil32(return_data.size) + 224] = 2
                    mem[(32 * _709) + ceil32(return_data.size) + 256] = stor9
                    mem[(32 * _709) + ceil32(return_data.size) + 288] = stor8
                    mem[(32 * _709) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _709) + ceil32(return_data.size) + 452] = block.timestamp
                    mem[(32 * _709) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _709) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _709) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _709) + ceil32(return_data.size) + 516 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require stor6.length
                    require 1 < stor6.length
                    require 0 < stor6.length
                    if uint256(stor6.field_0) <= uint256(stor6.field_256):
                        emit 0xd11b16a8: uint256(stor6.field_0), uint256(stor6.field_0)
                        return 0
                    mem[0] = 6
                    emit 0xccf83d08: uint256(stor6.field_0), uint256(stor6.field_0)
                    uint256(stor10.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor10.field_0)
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0, 'yNot enough token base in the contractddres'
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _709) + ceil32(return_data.size) + 320] = 2
                    mem[64] = (32 * _709) + ceil32(return_data.size) + 416
                    mem[(32 * _709) + ceil32(return_data.size) + 352] = stor8
                    mem[(32 * _709) + ceil32(return_data.size) + 384] = stor9
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _1495 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = arg2
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[(32 * _709) + ceil32(return_data.size) + 320]
                        _1497 = mem[(32 * _709) + ceil32(return_data.size) + 320]
                        s = 0
                        while s < 32 * _1497:
                            mem[s + mem[64] + 196] = mem[s + (32 * _709) + ceil32(return_data.size) + 352]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * _1497) + _1495 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1561 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1566 = mem[_1561]
                        require mem[_1561] <= 4294967296
                        require mem[_1561] + 32 <= return_data.size
                        require mem[_1561 + mem[_1561]] <= 4294967296 and mem[_1561] + (32 * mem[_1561 + mem[_1561]]) + 32 <= return_data.size
                        mem[_1561 + ceil32(return_data.size)] = mem[_1561 + mem[_1561]]
                        _1577 = mem[_1561 + _1566]
                        s = 0
                        while s < 32 * _1577:
                            mem[s + _1561 + ceil32(return_data.size) + 32] = mem[s + _1561 + _1566 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1577) + _1561 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
    else:
        stor7 = arg1
        uint256(stor10.field_0) = 1
        if uint8(stor10.field_192):
            revert with 0, 'Eagle abort'
        if uint8(stor10.field_184):
            if not uint8(stor10.field_168):
                require ext_code.size(stor8)
                staticcall stor8.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < stor3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                mem[202 len 26]
                require ext_code.size(stor8)
                call stor8.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 2
                mem[64] = 192
                mem[128] = stor8
                mem[160] = stor9
                require stor4
                idx = 0
                while idx < stor4:
                    _612 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor3 / stor4
                    mem[mem[64] + 36] = stor5
                    mem[mem[64] + 100] = arg2
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[s + mem[64] + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[96]) + _612 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1026 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1042 = mem[_1026]
                    require mem[_1026] <= 4294967296
                    require mem[_1026] + 32 <= return_data.size
                    require mem[_1026 + mem[_1026]] <= 4294967296 and mem[_1026] + (32 * mem[_1026 + mem[_1026]]) + 32 <= return_data.size
                    mem[_1026 + ceil32(return_data.size)] = mem[_1026 + mem[_1026]]
                    _1092 = mem[_1026 + _1042]
                    s = 0
                    while s < 32 * _1092:
                        mem[s + _1026 + ceil32(return_data.size) + 32] = mem[s + _1026 + _1042 + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1092) + _1026 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    continue 
            else:
                if not uint8(stor10.field_176):
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                    mem[202 len 26]
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 2
                    mem[64] = 192
                    mem[128] = stor8
                    mem[160] = stor9
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _615 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = arg2
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _615 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1027 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1044 = mem[_1027]
                        require mem[_1027] <= 4294967296
                        require mem[_1027] + 32 <= return_data.size
                        require mem[_1027 + mem[_1027]] <= 4294967296 and mem[_1027] + (32 * mem[_1027 + mem[_1027]]) + 32 <= return_data.size
                        mem[_1027 + ceil32(return_data.size)] = mem[_1027 + mem[_1027]]
                        _1093 = mem[_1027 + _1044]
                        s = 0
                        while s < 32 * _1093:
                            mem[s + _1027 + ceil32(return_data.size) + 32] = mem[s + _1027 + _1044 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1093) + _1027 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    uint8(stor10.field_192) = 1
                    require stor6.length
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < uint256(stor6.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                    mem[202 len 26]
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, uint256(stor6.field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 2
                    mem[128] = stor8
                    mem[160] = stor9
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require stor6.length
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = uint256(stor6.field_0)
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _652 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                    require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                    require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                    _714 = mem[_652 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_652 + 192])] = mem[_652 + 224 len floor32(mem[_652 + 192])]
                    require ext_code.size(stor9)
                    staticcall stor9.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require 0 < stor6.length
                        emit 0xd11b16a8: uint256(stor6.field_0), 0
                        return 0
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'Check: No returned tokens'
                    require ext_code.size(stor9)
                    call stor9.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _714) + ceil32(return_data.size) + 224] = 2
                    mem[(32 * _714) + ceil32(return_data.size) + 256] = stor9
                    mem[(32 * _714) + ceil32(return_data.size) + 288] = stor8
                    mem[(32 * _714) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _714) + ceil32(return_data.size) + 452] = block.timestamp
                    mem[(32 * _714) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _714) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _714) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _714) + ceil32(return_data.size) + 516 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require stor6.length
                    require 1 < stor6.length
                    require 0 < stor6.length
                    if uint256(stor6.field_0) <= uint256(stor6.field_256):
                        emit 0xd11b16a8: uint256(stor6.field_0), uint256(stor6.field_0)
                        return 0
                    mem[0] = 6
                    emit 0xccf83d08: uint256(stor6.field_0), uint256(stor6.field_0)
                    uint256(stor10.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor10.field_0)
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0, 'yNot enough token base in the contractddres'
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _714) + ceil32(return_data.size) + 320] = 2
                    mem[64] = (32 * _714) + ceil32(return_data.size) + 416
                    mem[(32 * _714) + ceil32(return_data.size) + 352] = stor8
                    mem[(32 * _714) + ceil32(return_data.size) + 384] = stor9
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _1498 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = arg2
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[(32 * _714) + ceil32(return_data.size) + 320]
                        _1500 = mem[(32 * _714) + ceil32(return_data.size) + 320]
                        s = 0
                        while s < 32 * _1500:
                            mem[s + mem[64] + 196] = mem[s + (32 * _714) + ceil32(return_data.size) + 352]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * _1500) + _1498 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1562 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1568 = mem[_1562]
                        require mem[_1562] <= 4294967296
                        require mem[_1562] + 32 <= return_data.size
                        require mem[_1562 + mem[_1562]] <= 4294967296 and mem[_1562] + (32 * mem[_1562 + mem[_1562]]) + 32 <= return_data.size
                        mem[_1562 + ceil32(return_data.size)] = mem[_1562 + mem[_1562]]
                        _1578 = mem[_1562 + _1568]
                        s = 0
                        while s < 32 * _1578:
                            mem[s + _1562 + ceil32(return_data.size) + 32] = mem[s + _1562 + _1568 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1578) + _1562 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
        else:
            if uint8(stor10.field_160):
                revert with 0, 'Eagle full'
            if not uint8(stor10.field_168):
                require ext_code.size(stor8)
                staticcall stor8.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < stor3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                mem[202 len 26]
                require ext_code.size(stor8)
                call stor8.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 2
                mem[64] = 192
                mem[128] = stor8
                mem[160] = stor9
                require stor4
                idx = 0
                while idx < stor4:
                    _620 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor3 / stor4
                    mem[mem[64] + 36] = stor5
                    mem[mem[64] + 100] = arg2
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[s + mem[64] + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[96]) + _620 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1029 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1047 = mem[_1029]
                    require mem[_1029] <= 4294967296
                    require mem[_1029] + 32 <= return_data.size
                    require mem[_1029 + mem[_1029]] <= 4294967296 and mem[_1029] + (32 * mem[_1029 + mem[_1029]]) + 32 <= return_data.size
                    mem[_1029 + ceil32(return_data.size)] = mem[_1029 + mem[_1029]]
                    _1094 = mem[_1029 + _1047]
                    s = 0
                    while s < 32 * _1094:
                        mem[s + _1029 + ceil32(return_data.size) + 32] = mem[s + _1029 + _1047 + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1094) + _1029 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    continue 
            else:
                if not uint8(stor10.field_176):
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                    mem[202 len 26]
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 2
                    mem[64] = 192
                    mem[128] = stor8
                    mem[160] = stor9
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _623 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = arg2
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _623 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1030 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1049 = mem[_1030]
                        require mem[_1030] <= 4294967296
                        require mem[_1030] + 32 <= return_data.size
                        require mem[_1030 + mem[_1030]] <= 4294967296 and mem[_1030] + (32 * mem[_1030 + mem[_1030]]) + 32 <= return_data.size
                        mem[_1030 + ceil32(return_data.size)] = mem[_1030 + mem[_1030]]
                        _1095 = mem[_1030 + _1049]
                        s = 0
                        while s < 32 * _1095:
                            mem[s + _1030 + ceil32(return_data.size) + 32] = mem[s + _1030 + _1049 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1095) + _1030 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    uint8(stor10.field_192) = 1
                    require stor6.length
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < uint256(stor6.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                    mem[202 len 26]
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, uint256(stor6.field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 2
                    mem[128] = stor8
                    mem[160] = stor9
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require stor6.length
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = uint256(stor6.field_0)
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _654 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                    require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                    require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                    _719 = mem[_654 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_654 + 192])] = mem[_654 + 224 len floor32(mem[_654 + 192])]
                    require ext_code.size(stor9)
                    staticcall stor9.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require 0 < stor6.length
                        emit 0xd11b16a8: uint256(stor6.field_0), 0
                        return 0
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'Check: No returned tokens'
                    require ext_code.size(stor9)
                    call stor9.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _719) + ceil32(return_data.size) + 224] = 2
                    mem[(32 * _719) + ceil32(return_data.size) + 256] = stor9
                    mem[(32 * _719) + ceil32(return_data.size) + 288] = stor8
                    mem[(32 * _719) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _719) + ceil32(return_data.size) + 452] = block.timestamp
                    mem[(32 * _719) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _719) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _719) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _719) + ceil32(return_data.size) + 516 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require stor6.length
                    require 1 < stor6.length
                    require 0 < stor6.length
                    if uint256(stor6.field_0) <= uint256(stor6.field_256):
                        emit 0xd11b16a8: uint256(stor6.field_0), uint256(stor6.field_0)
                        return 0
                    mem[0] = 6
                    emit 0xccf83d08: uint256(stor6.field_0), uint256(stor6.field_0)
                    uint256(stor10.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor10.field_0)
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0, 'yNot enough token base in the contractddres'
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _719) + ceil32(return_data.size) + 320] = 2
                    mem[64] = (32 * _719) + ceil32(return_data.size) + 416
                    mem[(32 * _719) + ceil32(return_data.size) + 352] = stor8
                    mem[(32 * _719) + ceil32(return_data.size) + 384] = stor9
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _1501 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = arg2
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[(32 * _719) + ceil32(return_data.size) + 320]
                        _1503 = mem[(32 * _719) + ceil32(return_data.size) + 320]
                        s = 0
                        while s < 32 * _1503:
                            mem[s + mem[64] + 196] = mem[s + (32 * _719) + ceil32(return_data.size) + 352]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * _1503) + _1501 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1563 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1570 = mem[_1563]
                        require mem[_1563] <= 4294967296
                        require mem[_1563] + 32 <= return_data.size
                        require mem[_1563 + mem[_1563]] <= 4294967296 and mem[_1563] + (32 * mem[_1563 + mem[_1563]]) + 32 <= return_data.size
                        mem[_1563 + ceil32(return_data.size)] = mem[_1563 + mem[_1563]]
                        _1579 = mem[_1563 + _1570]
                        s = 0
                        while s < 32 * _1579:
                            mem[s + _1563 + ceil32(return_data.size) + 32] = mem[s + _1563 + _1570 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1579) + _1563 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
    if not uint8(stor10.field_184):
        uint8(stor10.field_160) = 1
    return 1
}

function sub_3ff0e1bf(?) {
    require calldata.size - 4 >= 96
    mem[0] = msg.sender
    mem[32] = 11
    if bool(stor11[msg.sender]) != 1:
        revert with 0, 'Only Baby Eagles'
    if arg1 < stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe4561676c657320616c72656164792063686173696e6720616e6f746865722070726579,
                    mem[200 len 28]
    if not arg3:
        if arg1 <= stor7:
            if uint8(stor10.field_192):
                revert with 0, 'Eagle abort'
            if uint8(stor10.field_184):
                if not uint8(stor10.field_168):
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                    mem[202 len 26]
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 2
                    mem[64] = 192
                    mem[128] = stor8
                    mem[160] = stor9
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _1472 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = arg2
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _1472 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2608 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2632 = mem[_2608]
                        require mem[_2608] <= 4294967296
                        require mem[_2608] + 32 <= return_data.size
                        require mem[_2608 + mem[_2608]] <= 4294967296 and mem[_2608] + (32 * mem[_2608 + mem[_2608]]) + 32 <= return_data.size
                        mem[_2608 + ceil32(return_data.size)] = mem[_2608 + mem[_2608]]
                        _2744 = mem[_2608 + _2632]
                        s = 0
                        while s < 32 * _2744:
                            mem[s + _2608 + ceil32(return_data.size) + 32] = mem[s + _2608 + _2632 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2744) + _2608 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    if not uint8(stor10.field_176):
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < stor3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                        mem[202 len 26]
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, stor3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 2
                        mem[64] = 192
                        mem[128] = stor8
                        mem[160] = stor9
                        require stor4
                        idx = 0
                        while idx < stor4:
                            _1475 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3 / stor4
                            mem[mem[64] + 36] = stor5
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + mem[64] + 196] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1475 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2609 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2634 = mem[_2609]
                            require mem[_2609] <= 4294967296
                            require mem[_2609] + 32 <= return_data.size
                            require mem[_2609 + mem[_2609]] <= 4294967296 and mem[_2609] + (32 * mem[_2609 + mem[_2609]]) + 32 <= return_data.size
                            mem[_2609 + ceil32(return_data.size)] = mem[_2609 + mem[_2609]]
                            _2745 = mem[_2609 + _2634]
                            s = 0
                            while s < 32 * _2745:
                                mem[s + _2609 + ceil32(return_data.size) + 32] = mem[s + _2609 + _2634 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2745) + _2609 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
                    else:
                        uint8(stor10.field_192) = 1
                        require stor6.length
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(stor6.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                        mem[202 len 26]
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, uint256(stor6.field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 2
                        mem[128] = stor8
                        mem[160] = stor9
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor6.length
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = uint256(stor6.field_0)
                        mem[228] = 0
                        mem[292] = this.address
                        mem[324] = block.timestamp
                        mem[260] = 160
                        mem[356] = 2
                        mem[388 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1576 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                        require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                        require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                        _1700 = mem[_1576 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1576 + 192])] = mem[_1576 + 224 len floor32(mem[_1576 + 192])]
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require 0 < stor6.length
                            emit 0xd11b16a8: uint256(stor6.field_0), 0
                            return 0
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Check: No returned tokens'
                        require ext_code.size(stor9)
                        call stor9.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _1700) + ceil32(return_data.size) + 224] = 2
                        mem[(32 * _1700) + ceil32(return_data.size) + 256] = stor9
                        mem[(32 * _1700) + ceil32(return_data.size) + 288] = stor8
                        mem[(32 * _1700) + ceil32(return_data.size) + 420] = this.address
                        mem[(32 * _1700) + ceil32(return_data.size) + 452] = block.timestamp
                        mem[(32 * _1700) + ceil32(return_data.size) + 388] = 160
                        mem[(32 * _1700) + ceil32(return_data.size) + 484] = 2
                        mem[(32 * _1700) + ceil32(return_data.size) + 516 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _1700) + ceil32(return_data.size) + 516 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor6.length
                        require 1 < stor6.length
                        require 0 < stor6.length
                        if uint256(stor6.field_0) <= uint256(stor6.field_256):
                            emit 0xd11b16a8: uint256(stor6.field_0), uint256(stor6.field_0)
                            return 0
                        mem[0] = 6
                        emit 0xccf83d08: uint256(stor6.field_0), uint256(stor6.field_0)
                        uint256(stor10.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor10.field_0)
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < stor3:
                            revert with 0, 'yNot enough token base in the contractddres'
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, stor3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _1700) + ceil32(return_data.size) + 320] = 2
                        mem[64] = (32 * _1700) + ceil32(return_data.size) + 416
                        mem[(32 * _1700) + ceil32(return_data.size) + 352] = stor8
                        mem[(32 * _1700) + ceil32(return_data.size) + 384] = stor9
                        require stor4
                        idx = 0
                        while idx < stor4:
                            _3804 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3 / stor4
                            mem[mem[64] + 36] = stor5
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[(32 * _1700) + ceil32(return_data.size) + 320]
                            _3806 = mem[(32 * _1700) + ceil32(return_data.size) + 320]
                            s = 0
                            while s < 32 * _3806:
                                mem[s + mem[64] + 196] = mem[s + (32 * _1700) + ceil32(return_data.size) + 352]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _3806) + _3804 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4012 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4020 = mem[_4012]
                            require mem[_4012] <= 4294967296
                            require mem[_4012] + 32 <= return_data.size
                            require mem[_4012 + mem[_4012]] <= 4294967296 and mem[_4012] + (32 * mem[_4012 + mem[_4012]]) + 32 <= return_data.size
                            mem[_4012 + ceil32(return_data.size)] = mem[_4012 + mem[_4012]]
                            _4044 = mem[_4012 + _4020]
                            s = 0
                            while s < 32 * _4044:
                                mem[s + _4012 + ceil32(return_data.size) + 32] = mem[s + _4012 + _4020 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _4044) + _4012 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
            else:
                if uint8(stor10.field_160):
                    revert with 0, 'Eagle full'
                if not uint8(stor10.field_168):
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                    mem[202 len 26]
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 2
                    mem[64] = 192
                    mem[128] = stor8
                    mem[160] = stor9
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _1480 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = arg2
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _1480 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2611 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2637 = mem[_2611]
                        require mem[_2611] <= 4294967296
                        require mem[_2611] + 32 <= return_data.size
                        require mem[_2611 + mem[_2611]] <= 4294967296 and mem[_2611] + (32 * mem[_2611 + mem[_2611]]) + 32 <= return_data.size
                        mem[_2611 + ceil32(return_data.size)] = mem[_2611 + mem[_2611]]
                        _2746 = mem[_2611 + _2637]
                        s = 0
                        while s < 32 * _2746:
                            mem[s + _2611 + ceil32(return_data.size) + 32] = mem[s + _2611 + _2637 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2746) + _2611 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    if not uint8(stor10.field_176):
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < stor3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                        mem[202 len 26]
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, stor3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 2
                        mem[64] = 192
                        mem[128] = stor8
                        mem[160] = stor9
                        require stor4
                        idx = 0
                        while idx < stor4:
                            _1483 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3 / stor4
                            mem[mem[64] + 36] = stor5
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + mem[64] + 196] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1483 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2612 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2639 = mem[_2612]
                            require mem[_2612] <= 4294967296
                            require mem[_2612] + 32 <= return_data.size
                            require mem[_2612 + mem[_2612]] <= 4294967296 and mem[_2612] + (32 * mem[_2612 + mem[_2612]]) + 32 <= return_data.size
                            mem[_2612 + ceil32(return_data.size)] = mem[_2612 + mem[_2612]]
                            _2747 = mem[_2612 + _2639]
                            s = 0
                            while s < 32 * _2747:
                                mem[s + _2612 + ceil32(return_data.size) + 32] = mem[s + _2612 + _2639 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2747) + _2612 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
                    else:
                        uint8(stor10.field_192) = 1
                        require stor6.length
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(stor6.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                        mem[202 len 26]
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, uint256(stor6.field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 2
                        mem[128] = stor8
                        mem[160] = stor9
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor6.length
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = uint256(stor6.field_0)
                        mem[228] = 0
                        mem[292] = this.address
                        mem[324] = block.timestamp
                        mem[260] = 160
                        mem[356] = 2
                        mem[388 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1578 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                        require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                        require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                        _1705 = mem[_1578 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1578 + 192])] = mem[_1578 + 224 len floor32(mem[_1578 + 192])]
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require 0 < stor6.length
                            emit 0xd11b16a8: uint256(stor6.field_0), 0
                            return 0
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Check: No returned tokens'
                        require ext_code.size(stor9)
                        call stor9.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _1705) + ceil32(return_data.size) + 224] = 2
                        mem[(32 * _1705) + ceil32(return_data.size) + 256] = stor9
                        mem[(32 * _1705) + ceil32(return_data.size) + 288] = stor8
                        mem[(32 * _1705) + ceil32(return_data.size) + 420] = this.address
                        mem[(32 * _1705) + ceil32(return_data.size) + 452] = block.timestamp
                        mem[(32 * _1705) + ceil32(return_data.size) + 388] = 160
                        mem[(32 * _1705) + ceil32(return_data.size) + 484] = 2
                        mem[(32 * _1705) + ceil32(return_data.size) + 516 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _1705) + ceil32(return_data.size) + 516 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor6.length
                        require 1 < stor6.length
                        require 0 < stor6.length
                        if uint256(stor6.field_0) <= uint256(stor6.field_256):
                            emit 0xd11b16a8: uint256(stor6.field_0), uint256(stor6.field_0)
                            return 0
                        mem[0] = 6
                        emit 0xccf83d08: uint256(stor6.field_0), uint256(stor6.field_0)
                        uint256(stor10.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor10.field_0)
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < stor3:
                            revert with 0, 'yNot enough token base in the contractddres'
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, stor3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _1705) + ceil32(return_data.size) + 320] = 2
                        mem[64] = (32 * _1705) + ceil32(return_data.size) + 416
                        mem[(32 * _1705) + ceil32(return_data.size) + 352] = stor8
                        mem[(32 * _1705) + ceil32(return_data.size) + 384] = stor9
                        require stor4
                        idx = 0
                        while idx < stor4:
                            _3807 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3 / stor4
                            mem[mem[64] + 36] = stor5
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[(32 * _1705) + ceil32(return_data.size) + 320]
                            _3809 = mem[(32 * _1705) + ceil32(return_data.size) + 320]
                            s = 0
                            while s < 32 * _3809:
                                mem[s + mem[64] + 196] = mem[s + (32 * _1705) + ceil32(return_data.size) + 352]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _3809) + _3807 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4013 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4022 = mem[_4013]
                            require mem[_4013] <= 4294967296
                            require mem[_4013] + 32 <= return_data.size
                            require mem[_4013 + mem[_4013]] <= 4294967296 and mem[_4013] + (32 * mem[_4013 + mem[_4013]]) + 32 <= return_data.size
                            mem[_4013 + ceil32(return_data.size)] = mem[_4013 + mem[_4013]]
                            _4045 = mem[_4013 + _4022]
                            s = 0
                            while s < 32 * _4045:
                                mem[s + _4013 + ceil32(return_data.size) + 32] = mem[s + _4013 + _4022 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _4045) + _4013 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
        else:
            stor7 = arg1
            uint256(stor10.field_0) = 1
            if uint8(stor10.field_192):
                revert with 0, 'Eagle abort'
            if uint8(stor10.field_184):
                if not uint8(stor10.field_168):
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                    mem[202 len 26]
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 2
                    mem[64] = 192
                    mem[128] = stor8
                    mem[160] = stor9
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _1488 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = arg2
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _1488 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2614 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2642 = mem[_2614]
                        require mem[_2614] <= 4294967296
                        require mem[_2614] + 32 <= return_data.size
                        require mem[_2614 + mem[_2614]] <= 4294967296 and mem[_2614] + (32 * mem[_2614 + mem[_2614]]) + 32 <= return_data.size
                        mem[_2614 + ceil32(return_data.size)] = mem[_2614 + mem[_2614]]
                        _2748 = mem[_2614 + _2642]
                        s = 0
                        while s < 32 * _2748:
                            mem[s + _2614 + ceil32(return_data.size) + 32] = mem[s + _2614 + _2642 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2748) + _2614 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    if not uint8(stor10.field_176):
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < stor3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                        mem[202 len 26]
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, stor3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 2
                        mem[64] = 192
                        mem[128] = stor8
                        mem[160] = stor9
                        require stor4
                        idx = 0
                        while idx < stor4:
                            _1491 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3 / stor4
                            mem[mem[64] + 36] = stor5
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + mem[64] + 196] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1491 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2615 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2644 = mem[_2615]
                            require mem[_2615] <= 4294967296
                            require mem[_2615] + 32 <= return_data.size
                            require mem[_2615 + mem[_2615]] <= 4294967296 and mem[_2615] + (32 * mem[_2615 + mem[_2615]]) + 32 <= return_data.size
                            mem[_2615 + ceil32(return_data.size)] = mem[_2615 + mem[_2615]]
                            _2749 = mem[_2615 + _2644]
                            s = 0
                            while s < 32 * _2749:
                                mem[s + _2615 + ceil32(return_data.size) + 32] = mem[s + _2615 + _2644 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2749) + _2615 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
                    else:
                        uint8(stor10.field_192) = 1
                        require stor6.length
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(stor6.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                        mem[202 len 26]
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, uint256(stor6.field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 2
                        mem[128] = stor8
                        mem[160] = stor9
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor6.length
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = uint256(stor6.field_0)
                        mem[228] = 0
                        mem[292] = this.address
                        mem[324] = block.timestamp
                        mem[260] = 160
                        mem[356] = 2
                        mem[388 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1580 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                        require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                        require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                        _1710 = mem[_1580 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1580 + 192])] = mem[_1580 + 224 len floor32(mem[_1580 + 192])]
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require 0 < stor6.length
                            emit 0xd11b16a8: uint256(stor6.field_0), 0
                            return 0
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Check: No returned tokens'
                        require ext_code.size(stor9)
                        call stor9.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _1710) + ceil32(return_data.size) + 224] = 2
                        mem[(32 * _1710) + ceil32(return_data.size) + 256] = stor9
                        mem[(32 * _1710) + ceil32(return_data.size) + 288] = stor8
                        mem[(32 * _1710) + ceil32(return_data.size) + 420] = this.address
                        mem[(32 * _1710) + ceil32(return_data.size) + 452] = block.timestamp
                        mem[(32 * _1710) + ceil32(return_data.size) + 388] = 160
                        mem[(32 * _1710) + ceil32(return_data.size) + 484] = 2
                        mem[(32 * _1710) + ceil32(return_data.size) + 516 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _1710) + ceil32(return_data.size) + 516 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor6.length
                        require 1 < stor6.length
                        require 0 < stor6.length
                        if uint256(stor6.field_0) <= uint256(stor6.field_256):
                            emit 0xd11b16a8: uint256(stor6.field_0), uint256(stor6.field_0)
                            return 0
                        mem[0] = 6
                        emit 0xccf83d08: uint256(stor6.field_0), uint256(stor6.field_0)
                        uint256(stor10.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor10.field_0)
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < stor3:
                            revert with 0, 'yNot enough token base in the contractddres'
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, stor3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _1710) + ceil32(return_data.size) + 320] = 2
                        mem[64] = (32 * _1710) + ceil32(return_data.size) + 416
                        mem[(32 * _1710) + ceil32(return_data.size) + 352] = stor8
                        mem[(32 * _1710) + ceil32(return_data.size) + 384] = stor9
                        require stor4
                        idx = 0
                        while idx < stor4:
                            _3810 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3 / stor4
                            mem[mem[64] + 36] = stor5
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[(32 * _1710) + ceil32(return_data.size) + 320]
                            _3812 = mem[(32 * _1710) + ceil32(return_data.size) + 320]
                            s = 0
                            while s < 32 * _3812:
                                mem[s + mem[64] + 196] = mem[s + (32 * _1710) + ceil32(return_data.size) + 352]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _3812) + _3810 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4014 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4024 = mem[_4014]
                            require mem[_4014] <= 4294967296
                            require mem[_4014] + 32 <= return_data.size
                            require mem[_4014 + mem[_4014]] <= 4294967296 and mem[_4014] + (32 * mem[_4014 + mem[_4014]]) + 32 <= return_data.size
                            mem[_4014 + ceil32(return_data.size)] = mem[_4014 + mem[_4014]]
                            _4046 = mem[_4014 + _4024]
                            s = 0
                            while s < 32 * _4046:
                                mem[s + _4014 + ceil32(return_data.size) + 32] = mem[s + _4014 + _4024 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _4046) + _4014 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
            else:
                if uint8(stor10.field_160):
                    revert with 0, 'Eagle full'
                if not uint8(stor10.field_168):
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                    mem[202 len 26]
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 2
                    mem[64] = 192
                    mem[128] = stor8
                    mem[160] = stor9
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _1496 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = arg2
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _1496 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2617 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2647 = mem[_2617]
                        require mem[_2617] <= 4294967296
                        require mem[_2617] + 32 <= return_data.size
                        require mem[_2617 + mem[_2617]] <= 4294967296 and mem[_2617] + (32 * mem[_2617 + mem[_2617]]) + 32 <= return_data.size
                        mem[_2617 + ceil32(return_data.size)] = mem[_2617 + mem[_2617]]
                        _2750 = mem[_2617 + _2647]
                        s = 0
                        while s < 32 * _2750:
                            mem[s + _2617 + ceil32(return_data.size) + 32] = mem[s + _2617 + _2647 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2750) + _2617 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    if not uint8(stor10.field_176):
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < stor3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                        mem[202 len 26]
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, stor3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 2
                        mem[64] = 192
                        mem[128] = stor8
                        mem[160] = stor9
                        require stor4
                        idx = 0
                        while idx < stor4:
                            _1499 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3 / stor4
                            mem[mem[64] + 36] = stor5
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + mem[64] + 196] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1499 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2618 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2649 = mem[_2618]
                            require mem[_2618] <= 4294967296
                            require mem[_2618] + 32 <= return_data.size
                            require mem[_2618 + mem[_2618]] <= 4294967296 and mem[_2618] + (32 * mem[_2618 + mem[_2618]]) + 32 <= return_data.size
                            mem[_2618 + ceil32(return_data.size)] = mem[_2618 + mem[_2618]]
                            _2751 = mem[_2618 + _2649]
                            s = 0
                            while s < 32 * _2751:
                                mem[s + _2618 + ceil32(return_data.size) + 32] = mem[s + _2618 + _2649 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2751) + _2618 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
                    else:
                        uint8(stor10.field_192) = 1
                        require stor6.length
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(stor6.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                        mem[202 len 26]
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, uint256(stor6.field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 2
                        mem[128] = stor8
                        mem[160] = stor9
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor6.length
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = uint256(stor6.field_0)
                        mem[228] = 0
                        mem[292] = this.address
                        mem[324] = block.timestamp
                        mem[260] = 160
                        mem[356] = 2
                        mem[388 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1582 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                        require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                        require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                        _1715 = mem[_1582 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1582 + 192])] = mem[_1582 + 224 len floor32(mem[_1582 + 192])]
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require 0 < stor6.length
                            emit 0xd11b16a8: uint256(stor6.field_0), 0
                            return 0
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Check: No returned tokens'
                        require ext_code.size(stor9)
                        call stor9.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _1715) + ceil32(return_data.size) + 224] = 2
                        mem[(32 * _1715) + ceil32(return_data.size) + 256] = stor9
                        mem[(32 * _1715) + ceil32(return_data.size) + 288] = stor8
                        mem[(32 * _1715) + ceil32(return_data.size) + 420] = this.address
                        mem[(32 * _1715) + ceil32(return_data.size) + 452] = block.timestamp
                        mem[(32 * _1715) + ceil32(return_data.size) + 388] = 160
                        mem[(32 * _1715) + ceil32(return_data.size) + 484] = 2
                        mem[(32 * _1715) + ceil32(return_data.size) + 516 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _1715) + ceil32(return_data.size) + 516 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor6.length
                        require 1 < stor6.length
                        require 0 < stor6.length
                        if uint256(stor6.field_0) <= uint256(stor6.field_256):
                            emit 0xd11b16a8: uint256(stor6.field_0), uint256(stor6.field_0)
                            return 0
                        mem[0] = 6
                        emit 0xccf83d08: uint256(stor6.field_0), uint256(stor6.field_0)
                        uint256(stor10.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor10.field_0)
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < stor3:
                            revert with 0, 'yNot enough token base in the contractddres'
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, stor3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _1715) + ceil32(return_data.size) + 320] = 2
                        mem[64] = (32 * _1715) + ceil32(return_data.size) + 416
                        mem[(32 * _1715) + ceil32(return_data.size) + 352] = stor8
                        mem[(32 * _1715) + ceil32(return_data.size) + 384] = stor9
                        require stor4
                        idx = 0
                        while idx < stor4:
                            _3813 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3 / stor4
                            mem[mem[64] + 36] = stor5
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[(32 * _1715) + ceil32(return_data.size) + 320]
                            _3815 = mem[(32 * _1715) + ceil32(return_data.size) + 320]
                            s = 0
                            while s < 32 * _3815:
                                mem[s + mem[64] + 196] = mem[s + (32 * _1715) + ceil32(return_data.size) + 352]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _3815) + _3813 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4015 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4026 = mem[_4015]
                            require mem[_4015] <= 4294967296
                            require mem[_4015] + 32 <= return_data.size
                            require mem[_4015 + mem[_4015]] <= 4294967296 and mem[_4015] + (32 * mem[_4015 + mem[_4015]]) + 32 <= return_data.size
                            mem[_4015 + ceil32(return_data.size)] = mem[_4015 + mem[_4015]]
                            _4047 = mem[_4015 + _4026]
                            s = 0
                            while s < 32 * _4047:
                                mem[s + _4015 + ceil32(return_data.size) + 32] = mem[s + _4015 + _4026 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _4047) + _4015 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
        if not uint8(stor10.field_184):
            uint8(stor10.field_160) = 1
    else:
        if arg1 <= stor7:
            if uint8(stor10.field_192):
                revert with 0, 'Eagle abort'
            if uint8(stor10.field_184):
                if not uint8(stor10.field_168):
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                    mem[202 len 26]
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 2
                    mem[64] = 192
                    mem[128] = stor8
                    mem[160] = stor9
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _1504 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = arg2
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _1504 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2620 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2652 = mem[_2620]
                        require mem[_2620] <= 4294967296
                        require mem[_2620] + 32 <= return_data.size
                        require mem[_2620 + mem[_2620]] <= 4294967296 and mem[_2620] + (32 * mem[_2620 + mem[_2620]]) + 32 <= return_data.size
                        mem[_2620 + ceil32(return_data.size)] = mem[_2620 + mem[_2620]]
                        _2752 = mem[_2620 + _2652]
                        s = 0
                        while s < 32 * _2752:
                            mem[s + _2620 + ceil32(return_data.size) + 32] = mem[s + _2620 + _2652 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2752) + _2620 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    if not uint8(stor10.field_176):
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < stor3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                        mem[202 len 26]
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, stor3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 2
                        mem[64] = 192
                        mem[128] = stor8
                        mem[160] = stor9
                        require stor4
                        idx = 0
                        while idx < stor4:
                            _1507 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3 / stor4
                            mem[mem[64] + 36] = stor5
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + mem[64] + 196] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1507 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2621 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2654 = mem[_2621]
                            require mem[_2621] <= 4294967296
                            require mem[_2621] + 32 <= return_data.size
                            require mem[_2621 + mem[_2621]] <= 4294967296 and mem[_2621] + (32 * mem[_2621 + mem[_2621]]) + 32 <= return_data.size
                            mem[_2621 + ceil32(return_data.size)] = mem[_2621 + mem[_2621]]
                            _2753 = mem[_2621 + _2654]
                            s = 0
                            while s < 32 * _2753:
                                mem[s + _2621 + ceil32(return_data.size) + 32] = mem[s + _2621 + _2654 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2753) + _2621 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
                    else:
                        uint8(stor10.field_192) = 1
                        require stor6.length
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(stor6.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                        mem[202 len 26]
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, uint256(stor6.field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 2
                        mem[128] = stor8
                        mem[160] = stor9
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor6.length
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = uint256(stor6.field_0)
                        mem[228] = 0
                        mem[292] = this.address
                        mem[324] = block.timestamp
                        mem[260] = 160
                        mem[356] = 2
                        mem[388 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1584 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                        require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                        require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                        _1718 = mem[_1584 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1584 + 192])] = mem[_1584 + 224 len floor32(mem[_1584 + 192])]
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require 0 < stor6.length
                            emit 0xd11b16a8: uint256(stor6.field_0), 0
                            require ext_code.size(chiTokenAddress)
                            staticcall chiTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(chiTokenAddress)
                                call chiTokenAddress.freeUpTo(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((16 * calldata.size) + 35154 / 41947)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                return 0
                            else:
                                return 0
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Check: No returned tokens'
                        require ext_code.size(stor9)
                        call stor9.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _1718) + ceil32(return_data.size) + 224] = 2
                        mem[(32 * _1718) + ceil32(return_data.size) + 256] = stor9
                        mem[(32 * _1718) + ceil32(return_data.size) + 288] = stor8
                        mem[(32 * _1718) + ceil32(return_data.size) + 420] = this.address
                        mem[(32 * _1718) + ceil32(return_data.size) + 452] = block.timestamp
                        mem[(32 * _1718) + ceil32(return_data.size) + 388] = 160
                        mem[(32 * _1718) + ceil32(return_data.size) + 484] = 2
                        mem[(32 * _1718) + ceil32(return_data.size) + 516 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _1718) + ceil32(return_data.size) + 516 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor6.length
                        require 1 < stor6.length
                        require 0 < stor6.length
                        if uint256(stor6.field_0) <= uint256(stor6.field_256):
                            emit 0xd11b16a8: uint256(stor6.field_0), uint256(stor6.field_0)
                            require ext_code.size(chiTokenAddress)
                            staticcall chiTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(chiTokenAddress)
                                call chiTokenAddress.freeUpTo(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((16 * calldata.size) + 35154 / 41947)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                return 0
                            else:
                                return 0
                        mem[0] = 6
                        emit 0xccf83d08: uint256(stor6.field_0), uint256(stor6.field_0)
                        uint256(stor10.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor10.field_0)
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < stor3:
                            revert with 0, 'yNot enough token base in the contractddres'
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, stor3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _1718) + ceil32(return_data.size) + 320] = 2
                        mem[64] = (32 * _1718) + ceil32(return_data.size) + 416
                        mem[(32 * _1718) + ceil32(return_data.size) + 352] = stor8
                        mem[(32 * _1718) + ceil32(return_data.size) + 384] = stor9
                        require stor4
                        idx = 0
                        while idx < stor4:
                            _3816 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3 / stor4
                            mem[mem[64] + 36] = stor5
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[(32 * _1718) + ceil32(return_data.size) + 320]
                            _3818 = mem[(32 * _1718) + ceil32(return_data.size) + 320]
                            s = 0
                            while s < 32 * _3818:
                                mem[s + mem[64] + 196] = mem[s + (32 * _1718) + ceil32(return_data.size) + 352]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _3818) + _3816 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4016 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4028 = mem[_4016]
                            require mem[_4016] <= 4294967296
                            require mem[_4016] + 32 <= return_data.size
                            require mem[_4016 + mem[_4016]] <= 4294967296 and mem[_4016] + (32 * mem[_4016 + mem[_4016]]) + 32 <= return_data.size
                            mem[_4016 + ceil32(return_data.size)] = mem[_4016 + mem[_4016]]
                            _4048 = mem[_4016 + _4028]
                            s = 0
                            while s < 32 * _4048:
                                mem[s + _4016 + ceil32(return_data.size) + 32] = mem[s + _4016 + _4028 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _4048) + _4016 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
            else:
                if uint8(stor10.field_160):
                    revert with 0, 'Eagle full'
                if not uint8(stor10.field_168):
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                    mem[202 len 26]
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 2
                    mem[64] = 192
                    mem[128] = stor8
                    mem[160] = stor9
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _1512 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = arg2
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _1512 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2623 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2657 = mem[_2623]
                        require mem[_2623] <= 4294967296
                        require mem[_2623] + 32 <= return_data.size
                        require mem[_2623 + mem[_2623]] <= 4294967296 and mem[_2623] + (32 * mem[_2623 + mem[_2623]]) + 32 <= return_data.size
                        mem[_2623 + ceil32(return_data.size)] = mem[_2623 + mem[_2623]]
                        _2754 = mem[_2623 + _2657]
                        s = 0
                        while s < 32 * _2754:
                            mem[s + _2623 + ceil32(return_data.size) + 32] = mem[s + _2623 + _2657 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2754) + _2623 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    if not uint8(stor10.field_176):
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < stor3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                        mem[202 len 26]
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, stor3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 2
                        mem[64] = 192
                        mem[128] = stor8
                        mem[160] = stor9
                        require stor4
                        idx = 0
                        while idx < stor4:
                            _1515 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3 / stor4
                            mem[mem[64] + 36] = stor5
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + mem[64] + 196] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1515 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2624 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2659 = mem[_2624]
                            require mem[_2624] <= 4294967296
                            require mem[_2624] + 32 <= return_data.size
                            require mem[_2624 + mem[_2624]] <= 4294967296 and mem[_2624] + (32 * mem[_2624 + mem[_2624]]) + 32 <= return_data.size
                            mem[_2624 + ceil32(return_data.size)] = mem[_2624 + mem[_2624]]
                            _2755 = mem[_2624 + _2659]
                            s = 0
                            while s < 32 * _2755:
                                mem[s + _2624 + ceil32(return_data.size) + 32] = mem[s + _2624 + _2659 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2755) + _2624 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
                    else:
                        uint8(stor10.field_192) = 1
                        require stor6.length
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(stor6.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                        mem[202 len 26]
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, uint256(stor6.field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 2
                        mem[128] = stor8
                        mem[160] = stor9
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor6.length
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = uint256(stor6.field_0)
                        mem[228] = 0
                        mem[292] = this.address
                        mem[324] = block.timestamp
                        mem[260] = 160
                        mem[356] = 2
                        mem[388 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1586 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                        require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                        require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                        _1721 = mem[_1586 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1586 + 192])] = mem[_1586 + 224 len floor32(mem[_1586 + 192])]
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require 0 < stor6.length
                            emit 0xd11b16a8: uint256(stor6.field_0), 0
                            require ext_code.size(chiTokenAddress)
                            staticcall chiTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(chiTokenAddress)
                                call chiTokenAddress.freeUpTo(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((16 * calldata.size) + 35154 / 41947)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                return 0
                            else:
                                return 0
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Check: No returned tokens'
                        require ext_code.size(stor9)
                        call stor9.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _1721) + ceil32(return_data.size) + 224] = 2
                        mem[(32 * _1721) + ceil32(return_data.size) + 256] = stor9
                        mem[(32 * _1721) + ceil32(return_data.size) + 288] = stor8
                        mem[(32 * _1721) + ceil32(return_data.size) + 420] = this.address
                        mem[(32 * _1721) + ceil32(return_data.size) + 452] = block.timestamp
                        mem[(32 * _1721) + ceil32(return_data.size) + 388] = 160
                        mem[(32 * _1721) + ceil32(return_data.size) + 484] = 2
                        mem[(32 * _1721) + ceil32(return_data.size) + 516 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _1721) + ceil32(return_data.size) + 516 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor6.length
                        require 1 < stor6.length
                        require 0 < stor6.length
                        if uint256(stor6.field_0) <= uint256(stor6.field_256):
                            emit 0xd11b16a8: uint256(stor6.field_0), uint256(stor6.field_0)
                            require ext_code.size(chiTokenAddress)
                            staticcall chiTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(chiTokenAddress)
                                call chiTokenAddress.freeUpTo(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((16 * calldata.size) + 35154 / 41947)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                return 0
                            else:
                                return 0
                        mem[0] = 6
                        emit 0xccf83d08: uint256(stor6.field_0), uint256(stor6.field_0)
                        uint256(stor10.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor10.field_0)
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < stor3:
                            revert with 0, 'yNot enough token base in the contractddres'
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, stor3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _1721) + ceil32(return_data.size) + 320] = 2
                        mem[64] = (32 * _1721) + ceil32(return_data.size) + 416
                        mem[(32 * _1721) + ceil32(return_data.size) + 352] = stor8
                        mem[(32 * _1721) + ceil32(return_data.size) + 384] = stor9
                        require stor4
                        idx = 0
                        while idx < stor4:
                            _3819 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3 / stor4
                            mem[mem[64] + 36] = stor5
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[(32 * _1721) + ceil32(return_data.size) + 320]
                            _3821 = mem[(32 * _1721) + ceil32(return_data.size) + 320]
                            s = 0
                            while s < 32 * _3821:
                                mem[s + mem[64] + 196] = mem[s + (32 * _1721) + ceil32(return_data.size) + 352]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _3821) + _3819 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4017 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4030 = mem[_4017]
                            require mem[_4017] <= 4294967296
                            require mem[_4017] + 32 <= return_data.size
                            require mem[_4017 + mem[_4017]] <= 4294967296 and mem[_4017] + (32 * mem[_4017 + mem[_4017]]) + 32 <= return_data.size
                            mem[_4017 + ceil32(return_data.size)] = mem[_4017 + mem[_4017]]
                            _4049 = mem[_4017 + _4030]
                            s = 0
                            while s < 32 * _4049:
                                mem[s + _4017 + ceil32(return_data.size) + 32] = mem[s + _4017 + _4030 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _4049) + _4017 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
        else:
            stor7 = arg1
            uint256(stor10.field_0) = 1
            if uint8(stor10.field_192):
                revert with 0, 'Eagle abort'
            if uint8(stor10.field_184):
                if not uint8(stor10.field_168):
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                    mem[202 len 26]
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 2
                    mem[64] = 192
                    mem[128] = stor8
                    mem[160] = stor9
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _1520 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = arg2
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _1520 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2626 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2662 = mem[_2626]
                        require mem[_2626] <= 4294967296
                        require mem[_2626] + 32 <= return_data.size
                        require mem[_2626 + mem[_2626]] <= 4294967296 and mem[_2626] + (32 * mem[_2626 + mem[_2626]]) + 32 <= return_data.size
                        mem[_2626 + ceil32(return_data.size)] = mem[_2626 + mem[_2626]]
                        _2756 = mem[_2626 + _2662]
                        s = 0
                        while s < 32 * _2756:
                            mem[s + _2626 + ceil32(return_data.size) + 32] = mem[s + _2626 + _2662 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2756) + _2626 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    if not uint8(stor10.field_176):
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < stor3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                        mem[202 len 26]
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, stor3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 2
                        mem[64] = 192
                        mem[128] = stor8
                        mem[160] = stor9
                        require stor4
                        idx = 0
                        while idx < stor4:
                            _1523 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3 / stor4
                            mem[mem[64] + 36] = stor5
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + mem[64] + 196] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1523 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2627 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2664 = mem[_2627]
                            require mem[_2627] <= 4294967296
                            require mem[_2627] + 32 <= return_data.size
                            require mem[_2627 + mem[_2627]] <= 4294967296 and mem[_2627] + (32 * mem[_2627 + mem[_2627]]) + 32 <= return_data.size
                            mem[_2627 + ceil32(return_data.size)] = mem[_2627 + mem[_2627]]
                            _2757 = mem[_2627 + _2664]
                            s = 0
                            while s < 32 * _2757:
                                mem[s + _2627 + ceil32(return_data.size) + 32] = mem[s + _2627 + _2664 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2757) + _2627 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
                    else:
                        uint8(stor10.field_192) = 1
                        require stor6.length
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(stor6.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                        mem[202 len 26]
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, uint256(stor6.field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 2
                        mem[128] = stor8
                        mem[160] = stor9
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor6.length
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = uint256(stor6.field_0)
                        mem[228] = 0
                        mem[292] = this.address
                        mem[324] = block.timestamp
                        mem[260] = 160
                        mem[356] = 2
                        mem[388 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1588 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                        require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                        require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                        _1724 = mem[_1588 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1588 + 192])] = mem[_1588 + 224 len floor32(mem[_1588 + 192])]
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require 0 < stor6.length
                            emit 0xd11b16a8: uint256(stor6.field_0), 0
                            require ext_code.size(chiTokenAddress)
                            staticcall chiTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(chiTokenAddress)
                                call chiTokenAddress.freeUpTo(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((16 * calldata.size) + 35154 / 41947)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                return 0
                            else:
                                return 0
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Check: No returned tokens'
                        require ext_code.size(stor9)
                        call stor9.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _1724) + ceil32(return_data.size) + 224] = 2
                        mem[(32 * _1724) + ceil32(return_data.size) + 256] = stor9
                        mem[(32 * _1724) + ceil32(return_data.size) + 288] = stor8
                        mem[(32 * _1724) + ceil32(return_data.size) + 420] = this.address
                        mem[(32 * _1724) + ceil32(return_data.size) + 452] = block.timestamp
                        mem[(32 * _1724) + ceil32(return_data.size) + 388] = 160
                        mem[(32 * _1724) + ceil32(return_data.size) + 484] = 2
                        mem[(32 * _1724) + ceil32(return_data.size) + 516 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _1724) + ceil32(return_data.size) + 516 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor6.length
                        require 1 < stor6.length
                        require 0 < stor6.length
                        if uint256(stor6.field_0) <= uint256(stor6.field_256):
                            emit 0xd11b16a8: uint256(stor6.field_0), uint256(stor6.field_0)
                            require ext_code.size(chiTokenAddress)
                            staticcall chiTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(chiTokenAddress)
                                call chiTokenAddress.freeUpTo(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((16 * calldata.size) + 35154 / 41947)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                return 0
                            else:
                                return 0
                        mem[0] = 6
                        emit 0xccf83d08: uint256(stor6.field_0), uint256(stor6.field_0)
                        uint256(stor10.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor10.field_0)
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < stor3:
                            revert with 0, 'yNot enough token base in the contractddres'
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, stor3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _1724) + ceil32(return_data.size) + 320] = 2
                        mem[64] = (32 * _1724) + ceil32(return_data.size) + 416
                        mem[(32 * _1724) + ceil32(return_data.size) + 352] = stor8
                        mem[(32 * _1724) + ceil32(return_data.size) + 384] = stor9
                        require stor4
                        idx = 0
                        while idx < stor4:
                            _3822 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3 / stor4
                            mem[mem[64] + 36] = stor5
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[(32 * _1724) + ceil32(return_data.size) + 320]
                            _3824 = mem[(32 * _1724) + ceil32(return_data.size) + 320]
                            s = 0
                            while s < 32 * _3824:
                                mem[s + mem[64] + 196] = mem[s + (32 * _1724) + ceil32(return_data.size) + 352]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _3824) + _3822 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4018 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4032 = mem[_4018]
                            require mem[_4018] <= 4294967296
                            require mem[_4018] + 32 <= return_data.size
                            require mem[_4018 + mem[_4018]] <= 4294967296 and mem[_4018] + (32 * mem[_4018 + mem[_4018]]) + 32 <= return_data.size
                            mem[_4018 + ceil32(return_data.size)] = mem[_4018 + mem[_4018]]
                            _4050 = mem[_4018 + _4032]
                            s = 0
                            while s < 32 * _4050:
                                mem[s + _4018 + ceil32(return_data.size) + 32] = mem[s + _4018 + _4032 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _4050) + _4018 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
            else:
                if uint8(stor10.field_160):
                    revert with 0, 'Eagle full'
                if not uint8(stor10.field_168):
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                    mem[202 len 26]
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 2
                    mem[64] = 192
                    mem[128] = stor8
                    mem[160] = stor9
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _1528 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = arg2
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _1528 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2629 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2667 = mem[_2629]
                        require mem[_2629] <= 4294967296
                        require mem[_2629] + 32 <= return_data.size
                        require mem[_2629 + mem[_2629]] <= 4294967296 and mem[_2629] + (32 * mem[_2629 + mem[_2629]]) + 32 <= return_data.size
                        mem[_2629 + ceil32(return_data.size)] = mem[_2629 + mem[_2629]]
                        _2758 = mem[_2629 + _2667]
                        s = 0
                        while s < 32 * _2758:
                            mem[s + _2629 + ceil32(return_data.size) + 32] = mem[s + _2629 + _2667 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2758) + _2629 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    if not uint8(stor10.field_176):
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < stor3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                        mem[202 len 26]
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, stor3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 2
                        mem[64] = 192
                        mem[128] = stor8
                        mem[160] = stor9
                        require stor4
                        idx = 0
                        while idx < stor4:
                            _1531 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3 / stor4
                            mem[mem[64] + 36] = stor5
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + mem[64] + 196] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1531 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2630 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2669 = mem[_2630]
                            require mem[_2630] <= 4294967296
                            require mem[_2630] + 32 <= return_data.size
                            require mem[_2630 + mem[_2630]] <= 4294967296 and mem[_2630] + (32 * mem[_2630 + mem[_2630]]) + 32 <= return_data.size
                            mem[_2630 + ceil32(return_data.size)] = mem[_2630 + mem[_2630]]
                            _2759 = mem[_2630 + _2669]
                            s = 0
                            while s < 32 * _2759:
                                mem[s + _2630 + ceil32(return_data.size) + 32] = mem[s + _2630 + _2669 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2759) + _2630 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
                    else:
                        uint8(stor10.field_192) = 1
                        require stor6.length
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(stor6.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x794e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                        mem[202 len 26]
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, uint256(stor6.field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 2
                        mem[128] = stor8
                        mem[160] = stor9
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor6.length
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = uint256(stor6.field_0)
                        mem[228] = 0
                        mem[292] = this.address
                        mem[324] = block.timestamp
                        mem[260] = 160
                        mem[356] = 2
                        mem[388 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1590 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                        require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                        require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                        _1727 = mem[_1590 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1590 + 192])] = mem[_1590 + 224 len floor32(mem[_1590 + 192])]
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require 0 < stor6.length
                            emit 0xd11b16a8: uint256(stor6.field_0), 0
                            require ext_code.size(chiTokenAddress)
                            staticcall chiTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(chiTokenAddress)
                                call chiTokenAddress.freeUpTo(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((16 * calldata.size) + 35154 / 41947)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                return 0
                            else:
                                return 0
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Check: No returned tokens'
                        require ext_code.size(stor9)
                        call stor9.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _1727) + ceil32(return_data.size) + 224] = 2
                        mem[(32 * _1727) + ceil32(return_data.size) + 256] = stor9
                        mem[(32 * _1727) + ceil32(return_data.size) + 288] = stor8
                        mem[(32 * _1727) + ceil32(return_data.size) + 420] = this.address
                        mem[(32 * _1727) + ceil32(return_data.size) + 452] = block.timestamp
                        mem[(32 * _1727) + ceil32(return_data.size) + 388] = 160
                        mem[(32 * _1727) + ceil32(return_data.size) + 484] = 2
                        mem[(32 * _1727) + ceil32(return_data.size) + 516 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _1727) + ceil32(return_data.size) + 516 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor6.length
                        require 1 < stor6.length
                        require 0 < stor6.length
                        if uint256(stor6.field_0) <= uint256(stor6.field_256):
                            emit 0xd11b16a8: uint256(stor6.field_0), uint256(stor6.field_0)
                            require ext_code.size(chiTokenAddress)
                            staticcall chiTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(chiTokenAddress)
                                call chiTokenAddress.freeUpTo(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((16 * calldata.size) + 35154 / 41947)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                return 0
                            else:
                                return 0
                        mem[0] = 6
                        emit 0xccf83d08: uint256(stor6.field_0), uint256(stor6.field_0)
                        uint256(stor10.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor10.field_0)
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < stor3:
                            revert with 0, 'yNot enough token base in the contractddres'
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, stor3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _1727) + ceil32(return_data.size) + 320] = 2
                        mem[64] = (32 * _1727) + ceil32(return_data.size) + 416
                        mem[(32 * _1727) + ceil32(return_data.size) + 352] = stor8
                        mem[(32 * _1727) + ceil32(return_data.size) + 384] = stor9
                        require stor4
                        idx = 0
                        while idx < stor4:
                            _3825 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3 / stor4
                            mem[mem[64] + 36] = stor5
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[(32 * _1727) + ceil32(return_data.size) + 320]
                            _3827 = mem[(32 * _1727) + ceil32(return_data.size) + 320]
                            s = 0
                            while s < 32 * _3827:
                                mem[s + mem[64] + 196] = mem[s + (32 * _1727) + ceil32(return_data.size) + 352]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _3827) + _3825 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4019 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4034 = mem[_4019]
                            require mem[_4019] <= 4294967296
                            require mem[_4019] + 32 <= return_data.size
                            require mem[_4019 + mem[_4019]] <= 4294967296 and mem[_4019] + (32 * mem[_4019 + mem[_4019]]) + 32 <= return_data.size
                            mem[_4019 + ceil32(return_data.size)] = mem[_4019 + mem[_4019]]
                            _4051 = mem[_4019 + _4034]
                            s = 0
                            while s < 32 * _4051:
                                mem[s + _4019 + ceil32(return_data.size) + 32] = mem[s + _4019 + _4034 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _4051) + _4019 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
        if not uint8(stor10.field_184):
            uint8(stor10.field_160) = 1
        require ext_code.size(chiTokenAddress)
        staticcall chiTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(chiTokenAddress)
            call chiTokenAddress.freeUpTo(uint256 arg1) with:
                 gas gas_remaining wei
                args ((16 * calldata.size) + 35154 / 41947)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    return 1
}



}
