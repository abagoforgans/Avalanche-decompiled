contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
address chiTokenAddress;
uint256 stor3;
uint256 stor4;
uint256 stor5;
array of struct stor6;
uint256 stor7;
address stor8;
uint8 stor9; offset 160
uint8 stor9; offset 168
uint8 stor9; offset 176
uint8 stor9; offset 184
uint8 stor9; offset 192
uint128 stor9; offset 184
uint128 stor9; offset 176
uint128 stor9; offset 168
address stor9;
uint256 stor9;
uint256 stor9;
mapping of uint8 stor10;
address stor11;

function chiToken() {
    return chiTokenAddress
}

function owner() {
    return owner
}

function sub_9fe6c6aa(?) {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
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
    uint8(stor9.field_160) = 1
}

function sub_378d77a3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    stor11 = arg1
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
    call chiTokenAddress.mint(uint256 arg1) with:
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
        mem[32] = 10
        stor10[mem[(32 * idx) + 140 len 20]] = 0
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
        mem[32] = 10
        stor10[mem[(32 * idx) + 140 len 20]] = 1
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
    call address(ext_call.return_data[0]).0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    mem[(32 * stor6.length) + 512 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
    return stor8, 
           address(stor9.field_0),
           stor3,
           stor4,
           stor5,
           bool(uint8(stor9.field_176)),
           bool(uint8(stor9.field_168)),
           bool(uint8(stor9.field_160)),
           bool(uint8(stor9.field_184)),
           stor7,
           Array(len=stor6.length, data=mem[128 len floor32(stor6.length)], mem[(32 * stor6.length) + floor32(stor6.length) + 512 len (32 * stor6.length) - floor32(stor6.length)])
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

function sub_2c2ab12e(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    routerAddress = arg1
    chiTokenAddress = arg2
    stor11 = arg3
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor10[ext_call.return_data[12 len 20]] = 1
    idx = 0
    while idx < arg4.length:
        require idx < arg4.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        stor10[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
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
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if arg2 == 100:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
    else:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg2 * ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_bc40b4b3(?) {
    require calldata.size - 4 >= 288
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
    address(stor9.field_0) = arg2
    stor5 = arg7
    Mask(80, 0, stor9.field_176) = Mask(80, 0, arg5)
    Mask(88, 0, stor9.field_168) = Mask(88, 0, arg5)
    Mask(72, 0, stor9.field_184) = Mask(72, 0, arg6)
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
    uint256(stor9.field_0) = 0xffffffffffffff00ffffff00ffffffffffffffffffffffffffffffffffffffff and Mask(48, 208, uint256(stor9.field_0)) or Mask(200, 0, stor9.field_0) or arg9 << 200
    stor7 = 0
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
    if bool(stor10[msg.sender]) != 1:
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
                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
    if bool(stor10[msg.sender]) != 1:
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
                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                    mem[202 len 26]
    require ext_code.size(stor8)
    call stor8.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, uint256(stor6.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = address(stor9.field_0)
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
    _61 = mem[192 len 4], Mask(224, 0, stor6.field_32)
    require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
    require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
    _64 = mem[_61 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_61 + 192])] = mem[_61 + 224 len floor32(mem[_61 + 192])]
    require ext_code.size(address(stor9.field_0))
    staticcall address(stor9.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 < stor6.length:
            return uint256(stor6.field_0), 0
    else:
        require ext_code.size(address(stor9.field_0))
        call address(stor9.field_0).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _64) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _64) + ceil32(return_data.size) + 516 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor8)
        staticcall stor8.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor6.length:
            if 0 < stor6.length:
                return uint256(stor6.field_0), uint256(stor6.field_0)
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
    mem[32] = 10
    if bool(stor10[msg.sender]) != 1:
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
                        0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
            args arg3, arg4, Array(len=2, data=mem[(32 * arg6.length) + 420 len 64]), stor11, block.timestamp
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
                        0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                revert with 0, 'sNot enough token base in the contractddres'
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
                args arg3, arg4, 160, 0, stor11, block.timestamp, 2, mem[(32 * _105) + (32 * arg6.length) + ceil32(return_data.size) + 644 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_88faa505(?) {
    require calldata.size - 4 >= 192
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[96] = arg6.length
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + 128] = 0
    mem[0] = msg.sender
    mem[32] = 10
    if bool(stor10[msg.sender]) != 1:
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
                        0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
            args arg3, arg4, Array(len=2, data=mem[(32 * arg6.length) + 420 len 64]), stor11, block.timestamp
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
                        0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
        _123 = mem[(32 * arg6.length) + 224 len 4], mem[128 len 28]
        require mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] <= 4294967296
        require mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 32 <= return_data.size
        require mem[(32 * arg6.length) + mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 224] <= 4294967296 and mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + (32 * mem[(32 * arg6.length) + mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 224]) + 32 <= return_data.size
        mem[(32 * arg6.length) + ceil32(return_data.size) + 224] = mem[(32 * arg6.length) + mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 224]
        _129 = mem[(32 * arg6.length) + _123 + 224]
        mem[(32 * arg6.length) + ceil32(return_data.size) + 256 len floor32(mem[(32 * arg6.length) + _123 + 224])] = mem[(32 * arg6.length) + _123 + 256 len floor32(mem[(32 * arg6.length) + _123 + 224])]
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
            mem[(32 * _129) + (32 * arg6.length) + ceil32(return_data.size) + 548 len 0] = None
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _129) + (32 * arg6.length) + ceil32(return_data.size) + 548 len 64]
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
                revert with 0, 'sNot enough token base in the contractddres'
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _129) + (32 * arg6.length) + ceil32(return_data.size) + 644 len 0] = None
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, 160, 0, stor11, block.timestamp, 2, mem[(32 * _129) + (32 * arg6.length) + ceil32(return_data.size) + 644 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
    mem[32] = 10
    if bool(stor10[msg.sender]) != 1:
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
                        0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
        mem[(32 * arg6.length) + 324] = stor11
        mem[(32 * arg6.length) + 356] = block.timestamp
        mem[(32 * arg6.length) + 292] = 160
        mem[(32 * arg6.length) + 388] = 2
        mem[(32 * arg6.length) + 420 len 0] = None
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[(32 * arg6.length) + 420 len 64]), stor11, block.timestamp
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
                        0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                revert with 0, 'sNot enough token base in the contractddres'
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
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 548] = stor11
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 580] = block.timestamp
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 516] = 160
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 612] = 2
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 644 len 0] = None
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, 160, 0, stor11, block.timestamp, 2, mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 644 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _121) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            require mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448] <= 4294967296 and mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 32 <= return_data.size
}

function sub_54c676aa(?) {
    require calldata.size - 4 >= 224
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[96] = arg6.length
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + 128] = 0
    mem[0] = msg.sender
    mem[32] = 10
    if bool(stor10[msg.sender]) != 1:
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
                        0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
        mem[(32 * arg6.length) + 324] = arg7
        mem[(32 * arg6.length) + 356] = block.timestamp
        mem[(32 * arg6.length) + 292] = 160
        mem[(32 * arg6.length) + 388] = 2
        mem[(32 * arg6.length) + 420 len 0] = None
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[(32 * arg6.length) + 420 len 64]), address(arg7), block.timestamp
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
                        0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                revert with 0, 'sNot enough token base in the contractddres'
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
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 548] = arg7
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 580] = block.timestamp
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 516] = 160
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 612] = 2
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 644 len 0] = None
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, 160, 0, address(arg7), block.timestamp, 2, mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 644 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _121) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            require mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448] <= 4294967296 and mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + mem[(32 * _121) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 32 <= return_data.size
}

function sub_16571ddf(?) {
    require calldata.size - 4 >= 192
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[96] = arg6.length
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + 128] = 0
    mem[0] = msg.sender
    mem[32] = 10
    if bool(stor10[msg.sender]) != 1:
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
                        0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
        mem[(32 * arg6.length) + 324] = stor11
        mem[(32 * arg6.length) + 356] = block.timestamp
        mem[(32 * arg6.length) + 292] = 160
        mem[(32 * arg6.length) + 388] = 2
        mem[(32 * arg6.length) + 420 len 0] = None
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[(32 * arg6.length) + 420 len 64]), stor11, block.timestamp
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
                        0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
        _136 = mem[(32 * arg6.length) + 224 len 4], mem[128 len 28]
        require mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] <= 4294967296
        require mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 32 <= return_data.size
        require mem[(32 * arg6.length) + mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 224] <= 4294967296 and mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + (32 * mem[(32 * arg6.length) + mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 224]) + 32 <= return_data.size
        mem[(32 * arg6.length) + ceil32(return_data.size) + 224] = mem[(32 * arg6.length) + mem[(32 * arg6.length) + 224 len 4], mem[128 len 28] + 224]
        _142 = mem[(32 * arg6.length) + _136 + 224]
        mem[(32 * arg6.length) + ceil32(return_data.size) + 256 len floor32(mem[(32 * arg6.length) + _136 + 224])] = mem[(32 * arg6.length) + _136 + 256 len floor32(mem[(32 * arg6.length) + _136 + 224])]
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
            mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + 548 len 0] = None
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + 548 len 64]
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
                revert with 0, 'sNot enough token base in the contractddres'
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + 416] = arg2
            mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + 452] = arg3
            mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + 484] = arg4
            mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + 548] = stor11
            mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + 580] = block.timestamp
            mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + 516] = 160
            mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + 612] = 2
            mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + 644 len 0] = None
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, 160, 0, stor11, block.timestamp, 2, mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + 644 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _142) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            require mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448] <= 4294967296 and mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + mem[(32 * _142) + (32 * arg6.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 32 <= return_data.size
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
}

function sub_8cfe8593(?) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 10
    if bool(stor10[msg.sender]) != 1:
        revert with 0, 'Only Baby Eagles'
    if arg1 < stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe4561676c657320616c72656164792063686173696e6720616e6f746865722070726579,
                    mem[200 len 28]
    if arg1 <= stor7:
        if uint8(stor9.field_192):
            revert with 0, 'Eagle abort'
        if uint8(stor9.field_184):
            if not uint8(stor9.field_168):
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
                                0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                mem[160] = address(stor9.field_0)
                require stor4
                idx = 0
                while idx < stor4:
                    _594 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor3 / stor4
                    mem[mem[64] + 36] = stor5
                    mem[mem[64] + 100] = stor11
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
                        args mem[mem[64] + 4 len (32 * mem[96]) + _594 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1018 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1030 = mem[_1018]
                    require mem[_1018] <= 4294967296
                    require mem[_1018] + 32 <= return_data.size
                    require mem[_1018 + mem[_1018]] <= 4294967296 and mem[_1018] + (32 * mem[_1018 + mem[_1018]]) + 32 <= return_data.size
                    mem[_1018 + ceil32(return_data.size)] = mem[_1018 + mem[_1018]]
                    _1086 = mem[_1018 + _1030]
                    s = 0
                    while s < 32 * _1086:
                        mem[s + _1018 + ceil32(return_data.size) + 32] = mem[s + _1018 + _1030 + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1086) + _1018 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    continue 
            else:
                if not uint8(stor9.field_176):
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
                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                    mem[160] = address(stor9.field_0)
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _597 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = stor11
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
                            args mem[mem[64] + 4 len (32 * mem[96]) + _597 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1019 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1032 = mem[_1019]
                        require mem[_1019] <= 4294967296
                        require mem[_1019] + 32 <= return_data.size
                        require mem[_1019 + mem[_1019]] <= 4294967296 and mem[_1019] + (32 * mem[_1019 + mem[_1019]]) + 32 <= return_data.size
                        mem[_1019 + ceil32(return_data.size)] = mem[_1019 + mem[_1019]]
                        _1087 = mem[_1019 + _1032]
                        s = 0
                        while s < 32 * _1087:
                            mem[s + _1019 + ceil32(return_data.size) + 32] = mem[s + _1019 + _1032 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1087) + _1019 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    uint8(stor9.field_192) = 1
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
                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                    mem[172 len 20] = address(stor9.field_0)
                    mem[160 len 12] = 0
                    mem[160 len 0] = 0
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
                    _646 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                    require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                    require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                    _702 = mem[_646 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_646 + 192])] = mem[_646 + 224 len floor32(mem[_646 + 192])]
                    require ext_code.size(address(stor9.field_0))
                    staticcall address(stor9.field_0).0x70a08231 with:
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
                    require ext_code.size(address(stor9.field_0))
                    call address(stor9.field_0).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _702) + ceil32(return_data.size) + 224] = 2
                    mem[(32 * _702) + ceil32(return_data.size) + 256] = address(stor9.field_0)
                    mem[(32 * _702) + ceil32(return_data.size) + 288] = stor8
                    mem[(32 * _702) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _702) + ceil32(return_data.size) + 452] = block.timestamp
                    mem[(32 * _702) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _702) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _702) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _702) + ceil32(return_data.size) + 516 len 64]
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
                    uint256(stor9.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor9.field_0)
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0, 'sNot enough token base in the contractddres'
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _702) + ceil32(return_data.size) + 320] = 2
                    mem[64] = (32 * _702) + ceil32(return_data.size) + 416
                    mem[(32 * _702) + ceil32(return_data.size) + 352] = stor8
                    mem[(32 * _702) + ceil32(return_data.size) + 384] = address(stor9.field_0)
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _1490 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = stor11
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[(32 * _702) + ceil32(return_data.size) + 320]
                        _1492 = mem[(32 * _702) + ceil32(return_data.size) + 320]
                        s = 0
                        while s < 32 * _1492:
                            mem[s + mem[64] + 196] = mem[s + (32 * _702) + ceil32(return_data.size) + 352]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * _1492) + _1490 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1558 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1562 = mem[_1558]
                        require mem[_1558] <= 4294967296
                        require mem[_1558] + 32 <= return_data.size
                        require mem[_1558 + mem[_1558]] <= 4294967296 and mem[_1558] + (32 * mem[_1558 + mem[_1558]]) + 32 <= return_data.size
                        mem[_1558 + ceil32(return_data.size)] = mem[_1558 + mem[_1558]]
                        _1574 = mem[_1558 + _1562]
                        s = 0
                        while s < 32 * _1574:
                            mem[s + _1558 + ceil32(return_data.size) + 32] = mem[s + _1558 + _1562 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1574) + _1558 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
        else:
            if uint8(stor9.field_160):
                revert with 0, 'Eagle full'
            if not uint8(stor9.field_168):
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
                                0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                mem[160] = address(stor9.field_0)
                require stor4
                idx = 0
                while idx < stor4:
                    _602 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor3 / stor4
                    mem[mem[64] + 36] = stor5
                    mem[mem[64] + 100] = stor11
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
                        args mem[mem[64] + 4 len (32 * mem[96]) + _602 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1021 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1035 = mem[_1021]
                    require mem[_1021] <= 4294967296
                    require mem[_1021] + 32 <= return_data.size
                    require mem[_1021 + mem[_1021]] <= 4294967296 and mem[_1021] + (32 * mem[_1021 + mem[_1021]]) + 32 <= return_data.size
                    mem[_1021 + ceil32(return_data.size)] = mem[_1021 + mem[_1021]]
                    _1088 = mem[_1021 + _1035]
                    s = 0
                    while s < 32 * _1088:
                        mem[s + _1021 + ceil32(return_data.size) + 32] = mem[s + _1021 + _1035 + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1088) + _1021 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    continue 
            else:
                if not uint8(stor9.field_176):
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
                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                    mem[160] = address(stor9.field_0)
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _605 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = stor11
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
                            args mem[mem[64] + 4 len (32 * mem[96]) + _605 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1022 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1037 = mem[_1022]
                        require mem[_1022] <= 4294967296
                        require mem[_1022] + 32 <= return_data.size
                        require mem[_1022 + mem[_1022]] <= 4294967296 and mem[_1022] + (32 * mem[_1022 + mem[_1022]]) + 32 <= return_data.size
                        mem[_1022 + ceil32(return_data.size)] = mem[_1022 + mem[_1022]]
                        _1089 = mem[_1022 + _1037]
                        s = 0
                        while s < 32 * _1089:
                            mem[s + _1022 + ceil32(return_data.size) + 32] = mem[s + _1022 + _1037 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1089) + _1022 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    uint8(stor9.field_192) = 1
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
                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                    mem[172 len 20] = address(stor9.field_0)
                    mem[160 len 12] = 0
                    mem[160 len 0] = 0
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
                    _707 = mem[_648 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_648 + 192])] = mem[_648 + 224 len floor32(mem[_648 + 192])]
                    require ext_code.size(address(stor9.field_0))
                    staticcall address(stor9.field_0).0x70a08231 with:
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
                    require ext_code.size(address(stor9.field_0))
                    call address(stor9.field_0).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _707) + ceil32(return_data.size) + 224] = 2
                    mem[(32 * _707) + ceil32(return_data.size) + 256] = address(stor9.field_0)
                    mem[(32 * _707) + ceil32(return_data.size) + 288] = stor8
                    mem[(32 * _707) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _707) + ceil32(return_data.size) + 452] = block.timestamp
                    mem[(32 * _707) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _707) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _707) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _707) + ceil32(return_data.size) + 516 len 64]
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
                    uint256(stor9.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor9.field_0)
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0, 'sNot enough token base in the contractddres'
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _707) + ceil32(return_data.size) + 320] = 2
                    mem[64] = (32 * _707) + ceil32(return_data.size) + 416
                    mem[(32 * _707) + ceil32(return_data.size) + 352] = stor8
                    mem[(32 * _707) + ceil32(return_data.size) + 384] = address(stor9.field_0)
                    require stor4
                    idx = 0
                    while idx < stor4:
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = stor11
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[(32 * _707) + ceil32(return_data.size) + 320]
                        _1495 = mem[(32 * _707) + ceil32(return_data.size) + 320]
                        s = 0
                        while s < 32 * _1495:
                            mem[s + mem[64] + 196] = mem[s + (32 * _707) + ceil32(return_data.size) + 352]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args stor3 / stor4, stor5, 160, stor11, block.timestamp, mem[mem[64] + 164 len (32 * _1495) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1559 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1564 = mem[_1559]
                        require mem[_1559] <= 4294967296
                        require mem[_1559] + 32 <= return_data.size
                        require mem[_1559 + mem[_1559]] <= 4294967296 and mem[_1559] + (32 * mem[_1559 + mem[_1559]]) + 32 <= return_data.size
                        mem[_1559 + ceil32(return_data.size)] = mem[_1559 + mem[_1559]]
                        _1575 = mem[_1559 + _1564]
                        s = 0
                        while s < 32 * _1575:
                            mem[s + _1559 + ceil32(return_data.size) + 32] = mem[s + _1559 + _1564 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1575) + _1559 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
    else:
        stor7 = arg1
        uint256(stor9.field_0) = 1
        if uint8(stor9.field_192):
            revert with 0, 'Eagle abort'
        if uint8(stor9.field_184):
            if not uint8(stor9.field_168):
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
                                0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                mem[160] = address(stor9.field_0)
                require stor4
                idx = 0
                while idx < stor4:
                    _610 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor3 / stor4
                    mem[mem[64] + 36] = stor5
                    mem[mem[64] + 100] = stor11
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
                        args mem[mem[64] + 4 len (32 * mem[96]) + _610 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1024 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1040 = mem[_1024]
                    require mem[_1024] <= 4294967296
                    require mem[_1024] + 32 <= return_data.size
                    require mem[_1024 + mem[_1024]] <= 4294967296 and mem[_1024] + (32 * mem[_1024 + mem[_1024]]) + 32 <= return_data.size
                    mem[_1024 + ceil32(return_data.size)] = mem[_1024 + mem[_1024]]
                    _1090 = mem[_1024 + _1040]
                    s = 0
                    while s < 32 * _1090:
                        mem[s + _1024 + ceil32(return_data.size) + 32] = mem[s + _1024 + _1040 + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1090) + _1024 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    continue 
            else:
                if not uint8(stor9.field_176):
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
                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                    mem[160] = address(stor9.field_0)
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _613 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = stor11
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
                            args mem[mem[64] + 4 len (32 * mem[96]) + _613 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1025 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1042 = mem[_1025]
                        require mem[_1025] <= 4294967296
                        require mem[_1025] + 32 <= return_data.size
                        require mem[_1025 + mem[_1025]] <= 4294967296 and mem[_1025] + (32 * mem[_1025 + mem[_1025]]) + 32 <= return_data.size
                        mem[_1025 + ceil32(return_data.size)] = mem[_1025 + mem[_1025]]
                        _1091 = mem[_1025 + _1042]
                        s = 0
                        while s < 32 * _1091:
                            mem[s + _1025 + ceil32(return_data.size) + 32] = mem[s + _1025 + _1042 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1091) + _1025 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    uint8(stor9.field_192) = 1
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
                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                    mem[172 len 20] = address(stor9.field_0)
                    mem[160 len 12] = 0
                    mem[160 len 0] = 0
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
                    _712 = mem[_650 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_650 + 192])] = mem[_650 + 224 len floor32(mem[_650 + 192])]
                    require ext_code.size(address(stor9.field_0))
                    staticcall address(stor9.field_0).0x70a08231 with:
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
                    require ext_code.size(address(stor9.field_0))
                    call address(stor9.field_0).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _712) + ceil32(return_data.size) + 224] = 2
                    mem[(32 * _712) + ceil32(return_data.size) + 256] = address(stor9.field_0)
                    mem[(32 * _712) + ceil32(return_data.size) + 288] = stor8
                    mem[(32 * _712) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _712) + ceil32(return_data.size) + 452] = block.timestamp
                    mem[(32 * _712) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _712) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _712) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _712) + ceil32(return_data.size) + 516 len 64]
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
                    uint256(stor9.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor9.field_0)
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0, 'sNot enough token base in the contractddres'
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _712) + ceil32(return_data.size) + 320] = 2
                    mem[64] = (32 * _712) + ceil32(return_data.size) + 416
                    mem[(32 * _712) + ceil32(return_data.size) + 352] = stor8
                    mem[(32 * _712) + ceil32(return_data.size) + 384] = address(stor9.field_0)
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _1496 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = stor11
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[(32 * _712) + ceil32(return_data.size) + 320]
                        _1498 = mem[(32 * _712) + ceil32(return_data.size) + 320]
                        s = 0
                        while s < 32 * _1498:
                            mem[s + mem[64] + 196] = mem[s + (32 * _712) + ceil32(return_data.size) + 352]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * _1498) + _1496 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1560 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1566 = mem[_1560]
                        require mem[_1560] <= 4294967296
                        require mem[_1560] + 32 <= return_data.size
                        require mem[_1560 + mem[_1560]] <= 4294967296 and mem[_1560] + (32 * mem[_1560 + mem[_1560]]) + 32 <= return_data.size
                        mem[_1560 + ceil32(return_data.size)] = mem[_1560 + mem[_1560]]
                        _1576 = mem[_1560 + _1566]
                        s = 0
                        while s < 32 * _1576:
                            mem[s + _1560 + ceil32(return_data.size) + 32] = mem[s + _1560 + _1566 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1576) + _1560 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
        else:
            if uint8(stor9.field_160):
                revert with 0, 'Eagle full'
            if not uint8(stor9.field_168):
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
                                0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                mem[160] = address(stor9.field_0)
                require stor4
                idx = 0
                while idx < stor4:
                    _618 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor3 / stor4
                    mem[mem[64] + 36] = stor5
                    mem[mem[64] + 100] = stor11
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
                        args mem[mem[64] + 4 len (32 * mem[96]) + _618 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1027 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1045 = mem[_1027]
                    require mem[_1027] <= 4294967296
                    require mem[_1027] + 32 <= return_data.size
                    require mem[_1027 + mem[_1027]] <= 4294967296 and mem[_1027] + (32 * mem[_1027 + mem[_1027]]) + 32 <= return_data.size
                    mem[_1027 + ceil32(return_data.size)] = mem[_1027 + mem[_1027]]
                    _1092 = mem[_1027 + _1045]
                    s = 0
                    while s < 32 * _1092:
                        mem[s + _1027 + ceil32(return_data.size) + 32] = mem[s + _1027 + _1045 + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1092) + _1027 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    continue 
            else:
                if not uint8(stor9.field_176):
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
                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                    mem[160] = address(stor9.field_0)
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _621 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = stor11
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
                            args mem[mem[64] + 4 len (32 * mem[96]) + _621 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1028 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1047 = mem[_1028]
                        require mem[_1028] <= 4294967296
                        require mem[_1028] + 32 <= return_data.size
                        require mem[_1028 + mem[_1028]] <= 4294967296 and mem[_1028] + (32 * mem[_1028 + mem[_1028]]) + 32 <= return_data.size
                        mem[_1028 + ceil32(return_data.size)] = mem[_1028 + mem[_1028]]
                        _1093 = mem[_1028 + _1047]
                        s = 0
                        while s < 32 * _1093:
                            mem[s + _1028 + ceil32(return_data.size) + 32] = mem[s + _1028 + _1047 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1093) + _1028 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    uint8(stor9.field_192) = 1
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
                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                    mem[172 len 20] = address(stor9.field_0)
                    mem[160 len 12] = 0
                    mem[160 len 0] = 0
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
                    _717 = mem[_652 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_652 + 192])] = mem[_652 + 224 len floor32(mem[_652 + 192])]
                    require ext_code.size(address(stor9.field_0))
                    staticcall address(stor9.field_0).0x70a08231 with:
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
                    require ext_code.size(address(stor9.field_0))
                    call address(stor9.field_0).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _717) + ceil32(return_data.size) + 224] = 2
                    mem[(32 * _717) + ceil32(return_data.size) + 256] = address(stor9.field_0)
                    mem[(32 * _717) + ceil32(return_data.size) + 288] = stor8
                    mem[(32 * _717) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _717) + ceil32(return_data.size) + 452] = block.timestamp
                    mem[(32 * _717) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _717) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _717) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _717) + ceil32(return_data.size) + 516 len 64]
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
                    uint256(stor9.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor9.field_0)
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0, 'sNot enough token base in the contractddres'
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _717) + ceil32(return_data.size) + 320] = 2
                    mem[64] = (32 * _717) + ceil32(return_data.size) + 416
                    mem[(32 * _717) + ceil32(return_data.size) + 352] = stor8
                    mem[(32 * _717) + ceil32(return_data.size) + 384] = address(stor9.field_0)
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _1499 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = stor11
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[(32 * _717) + ceil32(return_data.size) + 320]
                        _1501 = mem[(32 * _717) + ceil32(return_data.size) + 320]
                        s = 0
                        while s < 32 * _1501:
                            mem[s + mem[64] + 196] = mem[s + (32 * _717) + ceil32(return_data.size) + 352]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * _1501) + _1499 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1561 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1568 = mem[_1561]
                        require mem[_1561] <= 4294967296
                        require mem[_1561] + 32 <= return_data.size
                        require mem[_1561 + mem[_1561]] <= 4294967296 and mem[_1561] + (32 * mem[_1561 + mem[_1561]]) + 32 <= return_data.size
                        mem[_1561 + ceil32(return_data.size)] = mem[_1561 + mem[_1561]]
                        _1577 = mem[_1561 + _1568]
                        s = 0
                        while s < 32 * _1577:
                            mem[s + _1561 + ceil32(return_data.size) + 32] = mem[s + _1561 + _1568 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1577) + _1561 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
    if not uint8(stor9.field_184):
        uint8(stor9.field_160) = 1
    return 1
}

function sub_c46edd4a(?) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 10
    if bool(stor10[msg.sender]) != 1:
        revert with 0, 'Only Baby Eagles'
    if arg1 < stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe4561676c657320616c72656164792063686173696e6720616e6f746865722070726579,
                    mem[200 len 28]
    if arg1 <= stor7:
        if uint8(stor9.field_192):
            revert with 0, 'Eagle abort'
        if uint8(stor9.field_184):
            if not uint8(stor9.field_168):
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
                                0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                mem[160] = address(stor9.field_0)
                require stor4
                idx = 0
                while idx < stor4:
                    _882 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor3 / stor4
                    mem[mem[64] + 36] = stor5
                    mem[mem[64] + 100] = stor11
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
                        args mem[mem[64] + 4 len (32 * mem[96]) + _882 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1594 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1606 = mem[_1594]
                    require mem[_1594] <= 4294967296
                    require mem[_1594] + 32 <= return_data.size
                    require mem[_1594 + mem[_1594]] <= 4294967296 and mem[_1594] + (32 * mem[_1594 + mem[_1594]]) + 32 <= return_data.size
                    mem[_1594 + ceil32(return_data.size)] = mem[_1594 + mem[_1594]]
                    _1662 = mem[_1594 + _1606]
                    s = 0
                    while s < 32 * _1662:
                        mem[s + _1594 + ceil32(return_data.size) + 32] = mem[s + _1594 + _1606 + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1662) + _1594 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    continue 
            else:
                if not uint8(stor9.field_176):
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
                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                    mem[160] = address(stor9.field_0)
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _885 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = stor11
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
                            args mem[mem[64] + 4 len (32 * mem[96]) + _885 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1595 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1608 = mem[_1595]
                        require mem[_1595] <= 4294967296
                        require mem[_1595] + 32 <= return_data.size
                        require mem[_1595 + mem[_1595]] <= 4294967296 and mem[_1595] + (32 * mem[_1595 + mem[_1595]]) + 32 <= return_data.size
                        mem[_1595 + ceil32(return_data.size)] = mem[_1595 + mem[_1595]]
                        _1663 = mem[_1595 + _1608]
                        s = 0
                        while s < 32 * _1663:
                            mem[s + _1595 + ceil32(return_data.size) + 32] = mem[s + _1595 + _1608 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1663) + _1595 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    uint8(stor9.field_192) = 1
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
                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                    mem[172 len 20] = address(stor9.field_0)
                    mem[160 len 12] = 0
                    mem[160 len 0] = 0
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
                    _938 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                    require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                    require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                    _1014 = mem[_938 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_938 + 192])] = mem[_938 + 224 len floor32(mem[_938 + 192])]
                    require ext_code.size(address(stor9.field_0))
                    staticcall address(stor9.field_0).0x70a08231 with:
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
                    require ext_code.size(address(stor9.field_0))
                    call address(stor9.field_0).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _1014) + ceil32(return_data.size) + 224] = 2
                    mem[(32 * _1014) + ceil32(return_data.size) + 256] = address(stor9.field_0)
                    mem[(32 * _1014) + ceil32(return_data.size) + 288] = stor8
                    mem[(32 * _1014) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _1014) + ceil32(return_data.size) + 452] = block.timestamp
                    mem[(32 * _1014) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _1014) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _1014) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _1014) + ceil32(return_data.size) + 516 len 64]
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
                    uint256(stor9.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor9.field_0)
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0, 'sNot enough token base in the contractddres'
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _1014) + ceil32(return_data.size) + 320] = 2
                    mem[64] = (32 * _1014) + ceil32(return_data.size) + 416
                    mem[(32 * _1014) + ceil32(return_data.size) + 352] = stor8
                    mem[(32 * _1014) + ceil32(return_data.size) + 384] = address(stor9.field_0)
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _2318 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = stor11
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[(32 * _1014) + ceil32(return_data.size) + 320]
                        _2320 = mem[(32 * _1014) + ceil32(return_data.size) + 320]
                        s = 0
                        while s < 32 * _2320:
                            mem[s + mem[64] + 196] = mem[s + (32 * _1014) + ceil32(return_data.size) + 352]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * _2320) + _2318 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2458 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2462 = mem[_2458]
                        require mem[_2458] <= 4294967296
                        require mem[_2458] + 32 <= return_data.size
                        require mem[_2458 + mem[_2458]] <= 4294967296 and mem[_2458] + (32 * mem[_2458 + mem[_2458]]) + 32 <= return_data.size
                        mem[_2458 + ceil32(return_data.size)] = mem[_2458 + mem[_2458]]
                        _2474 = mem[_2458 + _2462]
                        s = 0
                        while s < 32 * _2474:
                            mem[s + _2458 + ceil32(return_data.size) + 32] = mem[s + _2458 + _2462 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2474) + _2458 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
        else:
            if uint8(stor9.field_160):
                revert with 0, 'Eagle full'
            if not uint8(stor9.field_168):
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
                                0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                mem[160] = address(stor9.field_0)
                require stor4
                idx = 0
                while idx < stor4:
                    _890 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor3 / stor4
                    mem[mem[64] + 36] = stor5
                    mem[mem[64] + 100] = stor11
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
                        args mem[mem[64] + 4 len (32 * mem[96]) + _890 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1597 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1611 = mem[_1597]
                    require mem[_1597] <= 4294967296
                    require mem[_1597] + 32 <= return_data.size
                    require mem[_1597 + mem[_1597]] <= 4294967296 and mem[_1597] + (32 * mem[_1597 + mem[_1597]]) + 32 <= return_data.size
                    mem[_1597 + ceil32(return_data.size)] = mem[_1597 + mem[_1597]]
                    _1664 = mem[_1597 + _1611]
                    s = 0
                    while s < 32 * _1664:
                        mem[s + _1597 + ceil32(return_data.size) + 32] = mem[s + _1597 + _1611 + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1664) + _1597 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    continue 
            else:
                if not uint8(stor9.field_176):
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
                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                    mem[160] = address(stor9.field_0)
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _893 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = stor11
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
                            args mem[mem[64] + 4 len (32 * mem[96]) + _893 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1598 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1613 = mem[_1598]
                        require mem[_1598] <= 4294967296
                        require mem[_1598] + 32 <= return_data.size
                        require mem[_1598 + mem[_1598]] <= 4294967296 and mem[_1598] + (32 * mem[_1598 + mem[_1598]]) + 32 <= return_data.size
                        mem[_1598 + ceil32(return_data.size)] = mem[_1598 + mem[_1598]]
                        _1665 = mem[_1598 + _1613]
                        s = 0
                        while s < 32 * _1665:
                            mem[s + _1598 + ceil32(return_data.size) + 32] = mem[s + _1598 + _1613 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1665) + _1598 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    uint8(stor9.field_192) = 1
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
                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                    mem[172 len 20] = address(stor9.field_0)
                    mem[160 len 12] = 0
                    mem[160 len 0] = 0
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
                    _944 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                    require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                    require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                    _1019 = mem[_944 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_944 + 192])] = mem[_944 + 224 len floor32(mem[_944 + 192])]
                    require ext_code.size(address(stor9.field_0))
                    staticcall address(stor9.field_0).0x70a08231 with:
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
                    require ext_code.size(address(stor9.field_0))
                    call address(stor9.field_0).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _1019) + ceil32(return_data.size) + 224] = 2
                    mem[(32 * _1019) + ceil32(return_data.size) + 256] = address(stor9.field_0)
                    mem[(32 * _1019) + ceil32(return_data.size) + 288] = stor8
                    mem[(32 * _1019) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _1019) + ceil32(return_data.size) + 452] = block.timestamp
                    mem[(32 * _1019) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _1019) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _1019) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _1019) + ceil32(return_data.size) + 516 len 64]
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
                    uint256(stor9.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor9.field_0)
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0, 'sNot enough token base in the contractddres'
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _1019) + ceil32(return_data.size) + 320] = 2
                    mem[64] = (32 * _1019) + ceil32(return_data.size) + 416
                    mem[(32 * _1019) + ceil32(return_data.size) + 352] = stor8
                    mem[(32 * _1019) + ceil32(return_data.size) + 384] = address(stor9.field_0)
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _2321 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = stor11
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[(32 * _1019) + ceil32(return_data.size) + 320]
                        _2323 = mem[(32 * _1019) + ceil32(return_data.size) + 320]
                        s = 0
                        while s < 32 * _2323:
                            mem[s + mem[64] + 196] = mem[s + (32 * _1019) + ceil32(return_data.size) + 352]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * _2323) + _2321 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2459 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2464 = mem[_2459]
                        require mem[_2459] <= 4294967296
                        require mem[_2459] + 32 <= return_data.size
                        require mem[_2459 + mem[_2459]] <= 4294967296 and mem[_2459] + (32 * mem[_2459 + mem[_2459]]) + 32 <= return_data.size
                        mem[_2459 + ceil32(return_data.size)] = mem[_2459 + mem[_2459]]
                        _2475 = mem[_2459 + _2464]
                        s = 0
                        while s < 32 * _2475:
                            mem[s + _2459 + ceil32(return_data.size) + 32] = mem[s + _2459 + _2464 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2475) + _2459 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
    else:
        stor7 = arg1
        uint256(stor9.field_0) = 1
        if uint8(stor9.field_192):
            revert with 0, 'Eagle abort'
        if uint8(stor9.field_184):
            if not uint8(stor9.field_168):
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
                                0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                mem[160] = address(stor9.field_0)
                require stor4
                idx = 0
                while idx < stor4:
                    _898 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor3 / stor4
                    mem[mem[64] + 36] = stor5
                    mem[mem[64] + 100] = stor11
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
                        args mem[mem[64] + 4 len (32 * mem[96]) + _898 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1600 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1616 = mem[_1600]
                    require mem[_1600] <= 4294967296
                    require mem[_1600] + 32 <= return_data.size
                    require mem[_1600 + mem[_1600]] <= 4294967296 and mem[_1600] + (32 * mem[_1600 + mem[_1600]]) + 32 <= return_data.size
                    mem[_1600 + ceil32(return_data.size)] = mem[_1600 + mem[_1600]]
                    _1666 = mem[_1600 + _1616]
                    s = 0
                    while s < 32 * _1666:
                        mem[s + _1600 + ceil32(return_data.size) + 32] = mem[s + _1600 + _1616 + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1666) + _1600 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    continue 
            else:
                if not uint8(stor9.field_176):
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
                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                    mem[160] = address(stor9.field_0)
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _901 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = stor11
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
                            args mem[mem[64] + 4 len (32 * mem[96]) + _901 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1601 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1618 = mem[_1601]
                        require mem[_1601] <= 4294967296
                        require mem[_1601] + 32 <= return_data.size
                        require mem[_1601 + mem[_1601]] <= 4294967296 and mem[_1601] + (32 * mem[_1601 + mem[_1601]]) + 32 <= return_data.size
                        mem[_1601 + ceil32(return_data.size)] = mem[_1601 + mem[_1601]]
                        _1667 = mem[_1601 + _1618]
                        s = 0
                        while s < 32 * _1667:
                            mem[s + _1601 + ceil32(return_data.size) + 32] = mem[s + _1601 + _1618 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1667) + _1601 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    uint8(stor9.field_192) = 1
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
                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                    mem[172 len 20] = address(stor9.field_0)
                    mem[160 len 12] = 0
                    mem[160 len 0] = 0
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
                    _950 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                    require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                    require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                    _1024 = mem[_950 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_950 + 192])] = mem[_950 + 224 len floor32(mem[_950 + 192])]
                    require ext_code.size(address(stor9.field_0))
                    staticcall address(stor9.field_0).0x70a08231 with:
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
                    require ext_code.size(address(stor9.field_0))
                    call address(stor9.field_0).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _1024) + ceil32(return_data.size) + 224] = 2
                    mem[(32 * _1024) + ceil32(return_data.size) + 256] = address(stor9.field_0)
                    mem[(32 * _1024) + ceil32(return_data.size) + 288] = stor8
                    mem[(32 * _1024) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _1024) + ceil32(return_data.size) + 452] = block.timestamp
                    mem[(32 * _1024) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _1024) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _1024) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _1024) + ceil32(return_data.size) + 516 len 64]
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
                    uint256(stor9.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor9.field_0)
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0, 'sNot enough token base in the contractddres'
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _1024) + ceil32(return_data.size) + 320] = 2
                    mem[64] = (32 * _1024) + ceil32(return_data.size) + 416
                    mem[(32 * _1024) + ceil32(return_data.size) + 352] = stor8
                    mem[(32 * _1024) + ceil32(return_data.size) + 384] = address(stor9.field_0)
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _2324 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = stor11
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[(32 * _1024) + ceil32(return_data.size) + 320]
                        _2326 = mem[(32 * _1024) + ceil32(return_data.size) + 320]
                        s = 0
                        while s < 32 * _2326:
                            mem[s + mem[64] + 196] = mem[s + (32 * _1024) + ceil32(return_data.size) + 352]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * _2326) + _2324 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2460 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2466 = mem[_2460]
                        require mem[_2460] <= 4294967296
                        require mem[_2460] + 32 <= return_data.size
                        require mem[_2460 + mem[_2460]] <= 4294967296 and mem[_2460] + (32 * mem[_2460 + mem[_2460]]) + 32 <= return_data.size
                        mem[_2460 + ceil32(return_data.size)] = mem[_2460 + mem[_2460]]
                        _2476 = mem[_2460 + _2466]
                        s = 0
                        while s < 32 * _2476:
                            mem[s + _2460 + ceil32(return_data.size) + 32] = mem[s + _2460 + _2466 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2476) + _2460 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
        else:
            if uint8(stor9.field_160):
                revert with 0, 'Eagle full'
            if not uint8(stor9.field_168):
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
                                0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                mem[160] = address(stor9.field_0)
                require stor4
                idx = 0
                while idx < stor4:
                    _906 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor3 / stor4
                    mem[mem[64] + 36] = stor5
                    mem[mem[64] + 100] = stor11
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
                        args mem[mem[64] + 4 len (32 * mem[96]) + _906 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1603 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1621 = mem[_1603]
                    require mem[_1603] <= 4294967296
                    require mem[_1603] + 32 <= return_data.size
                    require mem[_1603 + mem[_1603]] <= 4294967296 and mem[_1603] + (32 * mem[_1603 + mem[_1603]]) + 32 <= return_data.size
                    mem[_1603 + ceil32(return_data.size)] = mem[_1603 + mem[_1603]]
                    _1668 = mem[_1603 + _1621]
                    s = 0
                    while s < 32 * _1668:
                        mem[s + _1603 + ceil32(return_data.size) + 32] = mem[s + _1603 + _1621 + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1668) + _1603 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    continue 
            else:
                if not uint8(stor9.field_176):
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
                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                    mem[160] = address(stor9.field_0)
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _909 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = stor11
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
                            args mem[mem[64] + 4 len (32 * mem[96]) + _909 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1604 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1623 = mem[_1604]
                        require mem[_1604] <= 4294967296
                        require mem[_1604] + 32 <= return_data.size
                        require mem[_1604 + mem[_1604]] <= 4294967296 and mem[_1604] + (32 * mem[_1604 + mem[_1604]]) + 32 <= return_data.size
                        mem[_1604 + ceil32(return_data.size)] = mem[_1604 + mem[_1604]]
                        _1669 = mem[_1604 + _1623]
                        s = 0
                        while s < 32 * _1669:
                            mem[s + _1604 + ceil32(return_data.size) + 32] = mem[s + _1604 + _1623 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1669) + _1604 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    uint8(stor9.field_192) = 1
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
                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
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
                    mem[172 len 20] = address(stor9.field_0)
                    mem[160 len 12] = 0
                    mem[160 len 0] = 0
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
                    _956 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                    require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                    require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                    _1029 = mem[_956 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_956 + 192])] = mem[_956 + 224 len floor32(mem[_956 + 192])]
                    require ext_code.size(address(stor9.field_0))
                    staticcall address(stor9.field_0).0x70a08231 with:
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
                    require ext_code.size(address(stor9.field_0))
                    call address(stor9.field_0).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _1029) + ceil32(return_data.size) + 224] = 2
                    mem[(32 * _1029) + ceil32(return_data.size) + 256] = address(stor9.field_0)
                    mem[(32 * _1029) + ceil32(return_data.size) + 288] = stor8
                    mem[(32 * _1029) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _1029) + ceil32(return_data.size) + 452] = block.timestamp
                    mem[(32 * _1029) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _1029) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _1029) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _1029) + ceil32(return_data.size) + 516 len 64]
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
                    uint256(stor9.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor9.field_0)
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor3:
                        revert with 0, 'sNot enough token base in the contractddres'
                    require ext_code.size(stor8)
                    call stor8.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _1029) + ceil32(return_data.size) + 320] = 2
                    mem[64] = (32 * _1029) + ceil32(return_data.size) + 416
                    mem[(32 * _1029) + ceil32(return_data.size) + 352] = stor8
                    mem[(32 * _1029) + ceil32(return_data.size) + 384] = address(stor9.field_0)
                    require stor4
                    idx = 0
                    while idx < stor4:
                        _2327 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3 / stor4
                        mem[mem[64] + 36] = stor5
                        mem[mem[64] + 100] = stor11
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[(32 * _1029) + ceil32(return_data.size) + 320]
                        _2329 = mem[(32 * _1029) + ceil32(return_data.size) + 320]
                        s = 0
                        while s < 32 * _2329:
                            mem[s + mem[64] + 196] = mem[s + (32 * _1029) + ceil32(return_data.size) + 352]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * _2329) + _2327 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2461 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2468 = mem[_2461]
                        require mem[_2461] <= 4294967296
                        require mem[_2461] + 32 <= return_data.size
                        require mem[_2461 + mem[_2461]] <= 4294967296 and mem[_2461] + (32 * mem[_2461 + mem[_2461]]) + 32 <= return_data.size
                        mem[_2461 + ceil32(return_data.size)] = mem[_2461 + mem[_2461]]
                        _2477 = mem[_2461 + _2468]
                        s = 0
                        while s < 32 * _2477:
                            mem[s + _2461 + ceil32(return_data.size) + 32] = mem[s + _2461 + _2468 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2477) + _2461 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
    if not uint8(stor9.field_184):
        uint8(stor9.field_160) = 1
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

function sub_598cc6b6(?) {
    require calldata.size - 4 >= 64
    mem[0] = msg.sender
    mem[32] = 10
    if bool(stor10[msg.sender]) != 1:
        revert with 0, 'Only Baby Eagles'
    else:
        if arg1 < stor7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x724561676c657320616c72656164792063686173696e6720616e6f7468657220707265,
                        mem[199 len 29]
        else:
            if arg1 <= stor7:
                if uint8(stor9.field_192):
                    revert with 0, 'Eagle abort'
                else:
                    if uint8(stor9.field_184):
                        if not uint8(stor9.field_168):
                            require ext_code.size(stor8)
                            staticcall stor8.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                if ext_call.return_data[0] < stor3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                                mem[202 len 26]
                                else:
                                    require ext_code.size(stor8)
                                    call stor8.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, stor3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        mem[96] = 2
                                        mem[64] = 192
                                        mem[128] = stor8
                                        mem[160] = address(stor9.field_0)
                                        require stor4
                                        idx = 0
                                        while idx < stor4:
                                            _594 = mem[64]
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
                                                args mem[mem[64] + 4 len (32 * mem[96]) + _594 + -mem[64] + 192]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _1018 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _1030 = mem[_1018]
                                                require mem[_1018] <= 4294967296
                                                require mem[_1018] + 32 <= return_data.size
                                                require mem[_1018 + mem[_1018]] <= 4294967296 and mem[_1018] + (32 * mem[_1018 + mem[_1018]]) + 32 <= return_data.size
                                                mem[_1018 + ceil32(return_data.size)] = mem[_1018 + mem[_1018]]
                                                _1086 = mem[_1018 + _1030]
                                                s = 0
                                                while s < 32 * _1086:
                                                    mem[s + _1018 + ceil32(return_data.size) + 32] = mem[s + _1018 + _1030 + 32]
                                                    s = s + 32
                                                    continue 
                                                mem[64] = (32 * _1086) + _1018 + ceil32(return_data.size) + 32
                                                idx = idx + 1
                                                continue 
                                        if uint8(stor9.field_184):
                                            return 1
                                        else:
                                            uint8(stor9.field_160) = 1
                                            return 1
                        else:
                            if not uint8(stor9.field_176):
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < stor3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                                    mem[202 len 26]
                                    else:
                                        require ext_code.size(stor8)
                                        call stor8.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args routerAddress, stor3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            mem[96] = 2
                                            mem[64] = 192
                                            mem[128] = stor8
                                            mem[160] = address(stor9.field_0)
                                            require stor4
                                            idx = 0
                                            while idx < stor4:
                                                _597 = mem[64]
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
                                                    args mem[mem[64] + 4 len (32 * mem[96]) + _597 + -mem[64] + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _1019 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _1032 = mem[_1019]
                                                    require mem[_1019] <= 4294967296
                                                    require mem[_1019] + 32 <= return_data.size
                                                    require mem[_1019 + mem[_1019]] <= 4294967296 and mem[_1019] + (32 * mem[_1019 + mem[_1019]]) + 32 <= return_data.size
                                                    mem[_1019 + ceil32(return_data.size)] = mem[_1019 + mem[_1019]]
                                                    _1087 = mem[_1019 + _1032]
                                                    s = 0
                                                    while s < 32 * _1087:
                                                        mem[s + _1019 + ceil32(return_data.size) + 32] = mem[s + _1019 + _1032 + 32]
                                                        s = s + 32
                                                        continue 
                                                    mem[64] = (32 * _1087) + _1019 + ceil32(return_data.size) + 32
                                                    idx = idx + 1
                                                    continue 
                                            if uint8(stor9.field_184):
                                                return 1
                                            else:
                                                uint8(stor9.field_160) = 1
                                                return 1
                            else:
                                uint8(stor9.field_192) = 1
                                require stor6.length
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < uint256(stor6.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                                    mem[202 len 26]
                                    else:
                                        require ext_code.size(stor8)
                                        call stor8.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args routerAddress, uint256(stor6.field_0)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            mem[96] = 2
                                            mem[128] = stor8
                                            mem[172 len 20] = address(stor9.field_0)
                                            mem[160 len 12] = 0
                                            mem[160 len 0] = 0
                                            require ext_code.size(stor8)
                                            staticcall stor8.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
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
                                                else:
                                                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(return_data.size) + 192
                                                    require return_data.size >= 32
                                                    _646 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                                                    require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                                                    require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                                                    require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                                                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                                                    _702 = mem[_646 + 192]
                                                    mem[ceil32(return_data.size) + 224 len floor32(mem[_646 + 192])] = mem[_646 + 224 len floor32(mem[_646 + 192])]
                                                    require ext_code.size(address(stor9.field_0))
                                                    staticcall address(stor9.field_0).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0]:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'Check: No returned tokens'
                                                            else:
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).approve(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args routerAddress, ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    mem[(32 * _702) + ceil32(return_data.size) + 224] = 2
                                                                    mem[(32 * _702) + ceil32(return_data.size) + 256] = address(stor9.field_0)
                                                                    mem[(32 * _702) + ceil32(return_data.size) + 288] = stor8
                                                                    mem[(32 * _702) + ceil32(return_data.size) + 420] = this.address
                                                                    mem[(32 * _702) + ceil32(return_data.size) + 452] = block.timestamp
                                                                    mem[(32 * _702) + ceil32(return_data.size) + 388] = 160
                                                                    mem[(32 * _702) + ceil32(return_data.size) + 484] = 2
                                                                    mem[(32 * _702) + ceil32(return_data.size) + 516 len 0] = None
                                                                    require ext_code.size(routerAddress)
                                                                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _702) + ceil32(return_data.size) + 516 len 64]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(stor8)
                                                                        staticcall stor8.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require stor6.length
                                                                            require 1 < stor6.length
                                                                            if uint256(stor6.field_0) > uint256(stor6.field_256):
                                                                                require 0 < stor6.length
                                                                                mem[0] = 6
                                                                                emit 0xccf83d08: uint256(stor6.field_0), uint256(stor6.field_0)
                                                                                uint256(stor9.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor9.field_0)
                                                                                require ext_code.size(stor8)
                                                                                staticcall stor8.0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args this.address
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if ext_call.return_data[0] < stor3:
                                                                                        revert with 0, 'sNot enough token base in the contractddres'
                                                                                    else:
                                                                                        require ext_code.size(stor8)
                                                                                        call stor8.approve(address arg1, uint256 arg2) with:
                                                                                             gas gas_remaining wei
                                                                                            args routerAddress, stor3
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            mem[(32 * _702) + ceil32(return_data.size) + 320] = 2
                                                                                            mem[64] = (32 * _702) + ceil32(return_data.size) + 416
                                                                                            mem[(32 * _702) + ceil32(return_data.size) + 352] = stor8
                                                                                            mem[(32 * _702) + ceil32(return_data.size) + 384] = address(stor9.field_0)
                                                                                            require stor4
                                                                                            idx = 0
                                                                                            while idx < stor4:
                                                                                                _1490 = mem[64]
                                                                                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                                                mem[mem[64] + 4] = stor3 / stor4
                                                                                                mem[mem[64] + 36] = stor5
                                                                                                mem[mem[64] + 100] = arg2
                                                                                                mem[mem[64] + 132] = block.timestamp
                                                                                                mem[mem[64] + 68] = 160
                                                                                                mem[mem[64] + 164] = mem[(32 * _702) + ceil32(return_data.size) + 320]
                                                                                                _1492 = mem[(32 * _702) + ceil32(return_data.size) + 320]
                                                                                                s = 0
                                                                                                while s < 32 * _1492:
                                                                                                    mem[s + mem[64] + 196] = mem[s + (32 * _702) + ceil32(return_data.size) + 352]
                                                                                                    s = s + 32
                                                                                                    continue 
                                                                                                require ext_code.size(routerAddress)
                                                                                                call routerAddress.mem[mem[64] len 4] with:
                                                                                                     gas gas_remaining wei
                                                                                                    args mem[mem[64] + 4 len (32 * _1492) + _1490 + -mem[64] + 192]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _1558 = mem[64]
                                                                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    _1562 = mem[_1558]
                                                                                                    require mem[_1558] <= 4294967296
                                                                                                    require mem[_1558] + 32 <= return_data.size
                                                                                                    require mem[_1558 + mem[_1558]] <= 4294967296 and mem[_1558] + (32 * mem[_1558 + mem[_1558]]) + 32 <= return_data.size
                                                                                                    mem[_1558 + ceil32(return_data.size)] = mem[_1558 + mem[_1558]]
                                                                                                    _1574 = mem[_1558 + _1562]
                                                                                                    s = 0
                                                                                                    while s < 32 * _1574:
                                                                                                        mem[s + _1558 + ceil32(return_data.size) + 32] = mem[s + _1558 + _1562 + 32]
                                                                                                        s = s + 32
                                                                                                        continue 
                                                                                                    mem[64] = (32 * _1574) + _1558 + ceil32(return_data.size) + 32
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                            if uint8(stor9.field_184):
                                                                                                return 1
                                                                                            else:
                                                                                                uint8(stor9.field_160) = 1
                                                                                                return 1
                                                                            else:
                                                                                require 0 < stor6.length
                                                                                emit 0xd11b16a8: uint256(stor6.field_0), uint256(stor6.field_0)
                                                                                return 0
                                                        else:
                                                            require 0 < stor6.length
                                                            emit 0xd11b16a8: uint256(stor6.field_0), 0
                                                            return 0
                    else:
                        if uint8(stor9.field_160):
                            revert with 0, 'Eagle full'
                        else:
                            if not uint8(stor9.field_168):
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < stor3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                                    mem[202 len 26]
                                    else:
                                        require ext_code.size(stor8)
                                        call stor8.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args routerAddress, stor3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            mem[96] = 2
                                            mem[64] = 192
                                            mem[128] = stor8
                                            mem[160] = address(stor9.field_0)
                                            require stor4
                                            idx = 0
                                            while idx < stor4:
                                                _602 = mem[64]
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
                                                    args mem[mem[64] + 4 len (32 * mem[96]) + _602 + -mem[64] + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _1021 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _1035 = mem[_1021]
                                                    require mem[_1021] <= 4294967296
                                                    require mem[_1021] + 32 <= return_data.size
                                                    require mem[_1021 + mem[_1021]] <= 4294967296 and mem[_1021] + (32 * mem[_1021 + mem[_1021]]) + 32 <= return_data.size
                                                    mem[_1021 + ceil32(return_data.size)] = mem[_1021 + mem[_1021]]
                                                    _1088 = mem[_1021 + _1035]
                                                    s = 0
                                                    while s < 32 * _1088:
                                                        mem[s + _1021 + ceil32(return_data.size) + 32] = mem[s + _1021 + _1035 + 32]
                                                        s = s + 32
                                                        continue 
                                                    mem[64] = (32 * _1088) + _1021 + ceil32(return_data.size) + 32
                                                    idx = idx + 1
                                                    continue 
                                            if uint8(stor9.field_184):
                                                return 1
                                            else:
                                                uint8(stor9.field_160) = 1
                                                return 1
                            else:
                                if not uint8(stor9.field_176):
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < stor3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        38,
                                                        0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                                        mem[202 len 26]
                                        else:
                                            require ext_code.size(stor8)
                                            call stor8.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args routerAddress, stor3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                mem[96] = 2
                                                mem[64] = 192
                                                mem[128] = stor8
                                                mem[160] = address(stor9.field_0)
                                                require stor4
                                                idx = 0
                                                while idx < stor4:
                                                    _605 = mem[64]
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
                                                        args mem[mem[64] + 4 len (32 * mem[96]) + _605 + -mem[64] + 192]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1022 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _1037 = mem[_1022]
                                                        require mem[_1022] <= 4294967296
                                                        require mem[_1022] + 32 <= return_data.size
                                                        require mem[_1022 + mem[_1022]] <= 4294967296 and mem[_1022] + (32 * mem[_1022 + mem[_1022]]) + 32 <= return_data.size
                                                        mem[_1022 + ceil32(return_data.size)] = mem[_1022 + mem[_1022]]
                                                        _1089 = mem[_1022 + _1037]
                                                        s = 0
                                                        while s < 32 * _1089:
                                                            mem[s + _1022 + ceil32(return_data.size) + 32] = mem[s + _1022 + _1037 + 32]
                                                            s = s + 32
                                                            continue 
                                                        mem[64] = (32 * _1089) + _1022 + ceil32(return_data.size) + 32
                                                        idx = idx + 1
                                                        continue 
                                                if uint8(stor9.field_184):
                                                    return 1
                                                else:
                                                    uint8(stor9.field_160) = 1
                                                    return 1
                                else:
                                    uint8(stor9.field_192) = 1
                                    require stor6.length
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < uint256(stor6.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        38,
                                                        0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                                        mem[202 len 26]
                                        else:
                                            require ext_code.size(stor8)
                                            call stor8.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args routerAddress, uint256(stor6.field_0)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                mem[96] = 2
                                                mem[128] = stor8
                                                mem[172 len 20] = address(stor9.field_0)
                                                mem[160 len 12] = 0
                                                mem[160 len 0] = 0
                                                require ext_code.size(stor8)
                                                staticcall stor8.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
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
                                                    else:
                                                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(return_data.size) + 192
                                                        require return_data.size >= 32
                                                        _648 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                                                        require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                                                        require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                                                        require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                                                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                                                        _707 = mem[_648 + 192]
                                                        mem[ceil32(return_data.size) + 224 len floor32(mem[_648 + 192])] = mem[_648 + 224 len floor32(mem[_648 + 192])]
                                                        require ext_code.size(address(stor9.field_0))
                                                        staticcall address(stor9.field_0).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0]:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'Check: No returned tokens'
                                                                else:
                                                                    require ext_code.size(address(stor9.field_0))
                                                                    call address(stor9.field_0).approve(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args routerAddress, ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        mem[(32 * _707) + ceil32(return_data.size) + 224] = 2
                                                                        mem[(32 * _707) + ceil32(return_data.size) + 256] = address(stor9.field_0)
                                                                        mem[(32 * _707) + ceil32(return_data.size) + 288] = stor8
                                                                        mem[(32 * _707) + ceil32(return_data.size) + 420] = this.address
                                                                        mem[(32 * _707) + ceil32(return_data.size) + 452] = block.timestamp
                                                                        mem[(32 * _707) + ceil32(return_data.size) + 388] = 160
                                                                        mem[(32 * _707) + ceil32(return_data.size) + 484] = 2
                                                                        mem[(32 * _707) + ceil32(return_data.size) + 516 len 0] = None
                                                                        require ext_code.size(routerAddress)
                                                                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                             gas gas_remaining wei
                                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _707) + ceil32(return_data.size) + 516 len 64]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor8)
                                                                            staticcall stor8.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require stor6.length
                                                                                require 1 < stor6.length
                                                                                if uint256(stor6.field_0) > uint256(stor6.field_256):
                                                                                    require 0 < stor6.length
                                                                                    mem[0] = 6
                                                                                    emit 0xccf83d08: uint256(stor6.field_0), uint256(stor6.field_0)
                                                                                    uint256(stor9.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor9.field_0)
                                                                                    require ext_code.size(stor8)
                                                                                    staticcall stor8.0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args this.address
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if ext_call.return_data[0] < stor3:
                                                                                            revert with 0, 'sNot enough token base in the contractddres'
                                                                                        else:
                                                                                            require ext_code.size(stor8)
                                                                                            call stor8.approve(address arg1, uint256 arg2) with:
                                                                                                 gas gas_remaining wei
                                                                                                args routerAddress, stor3
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                mem[(32 * _707) + ceil32(return_data.size) + 320] = 2
                                                                                                mem[64] = (32 * _707) + ceil32(return_data.size) + 416
                                                                                                mem[(32 * _707) + ceil32(return_data.size) + 352] = stor8
                                                                                                mem[(32 * _707) + ceil32(return_data.size) + 384] = address(stor9.field_0)
                                                                                                require stor4
                                                                                                idx = 0
                                                                                                while idx < stor4:
                                                                                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                                                    mem[mem[64] + 4] = stor3 / stor4
                                                                                                    mem[mem[64] + 36] = stor5
                                                                                                    mem[mem[64] + 100] = arg2
                                                                                                    mem[mem[64] + 132] = block.timestamp
                                                                                                    mem[mem[64] + 68] = 160
                                                                                                    mem[mem[64] + 164] = mem[(32 * _707) + ceil32(return_data.size) + 320]
                                                                                                    _1495 = mem[(32 * _707) + ceil32(return_data.size) + 320]
                                                                                                    s = 0
                                                                                                    while s < 32 * _1495:
                                                                                                        mem[s + mem[64] + 196] = mem[s + (32 * _707) + ceil32(return_data.size) + 352]
                                                                                                        s = s + 32
                                                                                                        continue 
                                                                                                    require ext_code.size(routerAddress)
                                                                                                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args stor3 / stor4, stor5, 160, address(arg2), block.timestamp, mem[mem[64] + 164 len (32 * _1495) + 32]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _1559 = mem[64]
                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _1564 = mem[_1559]
                                                                                                        require mem[_1559] <= 4294967296
                                                                                                        require mem[_1559] + 32 <= return_data.size
                                                                                                        require mem[_1559 + mem[_1559]] <= 4294967296 and mem[_1559] + (32 * mem[_1559 + mem[_1559]]) + 32 <= return_data.size
                                                                                                        mem[_1559 + ceil32(return_data.size)] = mem[_1559 + mem[_1559]]
                                                                                                        _1575 = mem[_1559 + _1564]
                                                                                                        s = 0
                                                                                                        while s < 32 * _1575:
                                                                                                            mem[s + _1559 + ceil32(return_data.size) + 32] = mem[s + _1559 + _1564 + 32]
                                                                                                            s = s + 32
                                                                                                            continue 
                                                                                                        mem[64] = (32 * _1575) + _1559 + ceil32(return_data.size) + 32
                                                                                                        idx = idx + 1
                                                                                                        continue 
                                                                                                if uint8(stor9.field_184):
                                                                                                    return 1
                                                                                                else:
                                                                                                    uint8(stor9.field_160) = 1
                                                                                                    return 1
                                                                                else:
                                                                                    require 0 < stor6.length
                                                                                    emit 0xd11b16a8: uint256(stor6.field_0), uint256(stor6.field_0)
                                                                                    return 0
                                                            else:
                                                                require 0 < stor6.length
                                                                emit 0xd11b16a8: uint256(stor6.field_0), 0
                                                                return 0
            else:
                stor7 = arg1
                uint256(stor9.field_0) = 1
                if uint8(stor9.field_192):
                    revert with 0, 'Eagle abort'
                else:
                    if uint8(stor9.field_184):
                        if not uint8(stor9.field_168):
                            require ext_code.size(stor8)
                            staticcall stor8.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                if ext_call.return_data[0] < stor3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                                mem[202 len 26]
                                else:
                                    require ext_code.size(stor8)
                                    call stor8.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, stor3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        mem[96] = 2
                                        mem[64] = 192
                                        mem[128] = stor8
                                        mem[160] = address(stor9.field_0)
                                        require stor4
                                        idx = 0
                                        while idx < stor4:
                                            _610 = mem[64]
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
                                                args mem[mem[64] + 4 len (32 * mem[96]) + _610 + -mem[64] + 192]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _1024 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _1040 = mem[_1024]
                                                require mem[_1024] <= 4294967296
                                                require mem[_1024] + 32 <= return_data.size
                                                require mem[_1024 + mem[_1024]] <= 4294967296 and mem[_1024] + (32 * mem[_1024 + mem[_1024]]) + 32 <= return_data.size
                                                mem[_1024 + ceil32(return_data.size)] = mem[_1024 + mem[_1024]]
                                                _1090 = mem[_1024 + _1040]
                                                s = 0
                                                while s < 32 * _1090:
                                                    mem[s + _1024 + ceil32(return_data.size) + 32] = mem[s + _1024 + _1040 + 32]
                                                    s = s + 32
                                                    continue 
                                                mem[64] = (32 * _1090) + _1024 + ceil32(return_data.size) + 32
                                                idx = idx + 1
                                                continue 
                                        if uint8(stor9.field_184):
                                            return 1
                                        else:
                                            uint8(stor9.field_160) = 1
                                            return 1
                        else:
                            if not uint8(stor9.field_176):
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < stor3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                                    mem[202 len 26]
                                    else:
                                        require ext_code.size(stor8)
                                        call stor8.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args routerAddress, stor3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            mem[96] = 2
                                            mem[64] = 192
                                            mem[128] = stor8
                                            mem[160] = address(stor9.field_0)
                                            require stor4
                                            idx = 0
                                            while idx < stor4:
                                                _613 = mem[64]
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
                                                    args mem[mem[64] + 4 len (32 * mem[96]) + _613 + -mem[64] + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _1025 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _1042 = mem[_1025]
                                                    require mem[_1025] <= 4294967296
                                                    require mem[_1025] + 32 <= return_data.size
                                                    require mem[_1025 + mem[_1025]] <= 4294967296 and mem[_1025] + (32 * mem[_1025 + mem[_1025]]) + 32 <= return_data.size
                                                    mem[_1025 + ceil32(return_data.size)] = mem[_1025 + mem[_1025]]
                                                    _1091 = mem[_1025 + _1042]
                                                    s = 0
                                                    while s < 32 * _1091:
                                                        mem[s + _1025 + ceil32(return_data.size) + 32] = mem[s + _1025 + _1042 + 32]
                                                        s = s + 32
                                                        continue 
                                                    mem[64] = (32 * _1091) + _1025 + ceil32(return_data.size) + 32
                                                    idx = idx + 1
                                                    continue 
                                            if uint8(stor9.field_184):
                                                return 1
                                            else:
                                                uint8(stor9.field_160) = 1
                                                return 1
                            else:
                                uint8(stor9.field_192) = 1
                                require stor6.length
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < uint256(stor6.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                                    mem[202 len 26]
                                    else:
                                        require ext_code.size(stor8)
                                        call stor8.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args routerAddress, uint256(stor6.field_0)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            mem[96] = 2
                                            mem[128] = stor8
                                            mem[172 len 20] = address(stor9.field_0)
                                            mem[160 len 12] = 0
                                            mem[160 len 0] = 0
                                            require ext_code.size(stor8)
                                            staticcall stor8.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
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
                                                else:
                                                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(return_data.size) + 192
                                                    require return_data.size >= 32
                                                    _650 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                                                    require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                                                    require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                                                    require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                                                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                                                    _712 = mem[_650 + 192]
                                                    mem[ceil32(return_data.size) + 224 len floor32(mem[_650 + 192])] = mem[_650 + 224 len floor32(mem[_650 + 192])]
                                                    require ext_code.size(address(stor9.field_0))
                                                    staticcall address(stor9.field_0).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0]:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'Check: No returned tokens'
                                                            else:
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).approve(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args routerAddress, ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    mem[(32 * _712) + ceil32(return_data.size) + 224] = 2
                                                                    mem[(32 * _712) + ceil32(return_data.size) + 256] = address(stor9.field_0)
                                                                    mem[(32 * _712) + ceil32(return_data.size) + 288] = stor8
                                                                    mem[(32 * _712) + ceil32(return_data.size) + 420] = this.address
                                                                    mem[(32 * _712) + ceil32(return_data.size) + 452] = block.timestamp
                                                                    mem[(32 * _712) + ceil32(return_data.size) + 388] = 160
                                                                    mem[(32 * _712) + ceil32(return_data.size) + 484] = 2
                                                                    mem[(32 * _712) + ceil32(return_data.size) + 516 len 0] = None
                                                                    require ext_code.size(routerAddress)
                                                                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _712) + ceil32(return_data.size) + 516 len 64]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(stor8)
                                                                        staticcall stor8.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require stor6.length
                                                                            require 1 < stor6.length
                                                                            if uint256(stor6.field_0) > uint256(stor6.field_256):
                                                                                require 0 < stor6.length
                                                                                mem[0] = 6
                                                                                emit 0xccf83d08: uint256(stor6.field_0), uint256(stor6.field_0)
                                                                                uint256(stor9.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor9.field_0)
                                                                                require ext_code.size(stor8)
                                                                                staticcall stor8.0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args this.address
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if ext_call.return_data[0] < stor3:
                                                                                        revert with 0, 'sNot enough token base in the contractddres'
                                                                                    else:
                                                                                        require ext_code.size(stor8)
                                                                                        call stor8.approve(address arg1, uint256 arg2) with:
                                                                                             gas gas_remaining wei
                                                                                            args routerAddress, stor3
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            mem[(32 * _712) + ceil32(return_data.size) + 320] = 2
                                                                                            mem[64] = (32 * _712) + ceil32(return_data.size) + 416
                                                                                            mem[(32 * _712) + ceil32(return_data.size) + 352] = stor8
                                                                                            mem[(32 * _712) + ceil32(return_data.size) + 384] = address(stor9.field_0)
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
                                                                                                mem[mem[64] + 164] = mem[(32 * _712) + ceil32(return_data.size) + 320]
                                                                                                _1498 = mem[(32 * _712) + ceil32(return_data.size) + 320]
                                                                                                s = 0
                                                                                                while s < 32 * _1498:
                                                                                                    mem[s + mem[64] + 196] = mem[s + (32 * _712) + ceil32(return_data.size) + 352]
                                                                                                    s = s + 32
                                                                                                    continue 
                                                                                                require ext_code.size(routerAddress)
                                                                                                call routerAddress.mem[mem[64] len 4] with:
                                                                                                     gas gas_remaining wei
                                                                                                    args mem[mem[64] + 4 len (32 * _1498) + _1496 + -mem[64] + 192]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _1560 = mem[64]
                                                                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    _1566 = mem[_1560]
                                                                                                    require mem[_1560] <= 4294967296
                                                                                                    require mem[_1560] + 32 <= return_data.size
                                                                                                    require mem[_1560 + mem[_1560]] <= 4294967296 and mem[_1560] + (32 * mem[_1560 + mem[_1560]]) + 32 <= return_data.size
                                                                                                    mem[_1560 + ceil32(return_data.size)] = mem[_1560 + mem[_1560]]
                                                                                                    _1576 = mem[_1560 + _1566]
                                                                                                    s = 0
                                                                                                    while s < 32 * _1576:
                                                                                                        mem[s + _1560 + ceil32(return_data.size) + 32] = mem[s + _1560 + _1566 + 32]
                                                                                                        s = s + 32
                                                                                                        continue 
                                                                                                    mem[64] = (32 * _1576) + _1560 + ceil32(return_data.size) + 32
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                            if uint8(stor9.field_184):
                                                                                                return 1
                                                                                            else:
                                                                                                uint8(stor9.field_160) = 1
                                                                                                return 1
                                                                            else:
                                                                                require 0 < stor6.length
                                                                                emit 0xd11b16a8: uint256(stor6.field_0), uint256(stor6.field_0)
                                                                                return 0
                                                        else:
                                                            require 0 < stor6.length
                                                            emit 0xd11b16a8: uint256(stor6.field_0), 0
                                                            return 0
                    else:
                        if uint8(stor9.field_160):
                            revert with 0, 'Eagle full'
                        else:
                            if not uint8(stor9.field_168):
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < stor3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                                    mem[202 len 26]
                                    else:
                                        require ext_code.size(stor8)
                                        call stor8.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args routerAddress, stor3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            mem[96] = 2
                                            mem[64] = 192
                                            mem[128] = stor8
                                            mem[160] = address(stor9.field_0)
                                            require stor4
                                            idx = 0
                                            while idx < stor4:
                                                _618 = mem[64]
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
                                                    args mem[mem[64] + 4 len (32 * mem[96]) + _618 + -mem[64] + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _1027 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _1045 = mem[_1027]
                                                    require mem[_1027] <= 4294967296
                                                    require mem[_1027] + 32 <= return_data.size
                                                    require mem[_1027 + mem[_1027]] <= 4294967296 and mem[_1027] + (32 * mem[_1027 + mem[_1027]]) + 32 <= return_data.size
                                                    mem[_1027 + ceil32(return_data.size)] = mem[_1027 + mem[_1027]]
                                                    _1092 = mem[_1027 + _1045]
                                                    s = 0
                                                    while s < 32 * _1092:
                                                        mem[s + _1027 + ceil32(return_data.size) + 32] = mem[s + _1027 + _1045 + 32]
                                                        s = s + 32
                                                        continue 
                                                    mem[64] = (32 * _1092) + _1027 + ceil32(return_data.size) + 32
                                                    idx = idx + 1
                                                    continue 
                                            if uint8(stor9.field_184):
                                                return 1
                                            else:
                                                uint8(stor9.field_160) = 1
                                                return 1
                            else:
                                if not uint8(stor9.field_176):
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < stor3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        38,
                                                        0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                                        mem[202 len 26]
                                        else:
                                            require ext_code.size(stor8)
                                            call stor8.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args routerAddress, stor3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                mem[96] = 2
                                                mem[64] = 192
                                                mem[128] = stor8
                                                mem[160] = address(stor9.field_0)
                                                require stor4
                                                idx = 0
                                                while idx < stor4:
                                                    _621 = mem[64]
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
                                                        args mem[mem[64] + 4 len (32 * mem[96]) + _621 + -mem[64] + 192]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1028 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _1047 = mem[_1028]
                                                        require mem[_1028] <= 4294967296
                                                        require mem[_1028] + 32 <= return_data.size
                                                        require mem[_1028 + mem[_1028]] <= 4294967296 and mem[_1028] + (32 * mem[_1028 + mem[_1028]]) + 32 <= return_data.size
                                                        mem[_1028 + ceil32(return_data.size)] = mem[_1028 + mem[_1028]]
                                                        _1093 = mem[_1028 + _1047]
                                                        s = 0
                                                        while s < 32 * _1093:
                                                            mem[s + _1028 + ceil32(return_data.size) + 32] = mem[s + _1028 + _1047 + 32]
                                                            s = s + 32
                                                            continue 
                                                        mem[64] = (32 * _1093) + _1028 + ceil32(return_data.size) + 32
                                                        idx = idx + 1
                                                        continue 
                                                if uint8(stor9.field_184):
                                                    return 1
                                                else:
                                                    uint8(stor9.field_160) = 1
                                                    return 1
                                else:
                                    uint8(stor9.field_192) = 1
                                    require stor6.length
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < uint256(stor6.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        38,
                                                        0x734e6f7420656e6f75676820746f6b656e206261736520696e2074686520636f6e7472616374,
                                                        mem[202 len 26]
                                        else:
                                            require ext_code.size(stor8)
                                            call stor8.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args routerAddress, uint256(stor6.field_0)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                mem[96] = 2
                                                mem[128] = stor8
                                                mem[172 len 20] = address(stor9.field_0)
                                                mem[160 len 12] = 0
                                                mem[160 len 0] = 0
                                                require ext_code.size(stor8)
                                                staticcall stor8.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
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
                                                    else:
                                                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(return_data.size) + 192
                                                        require return_data.size >= 32
                                                        _652 = mem[192 len 4], Mask(224, 0, stor6.field_32)
                                                        require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                                                        require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                                                        require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
                                                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
                                                        _717 = mem[_652 + 192]
                                                        mem[ceil32(return_data.size) + 224 len floor32(mem[_652 + 192])] = mem[_652 + 224 len floor32(mem[_652 + 192])]
                                                        require ext_code.size(address(stor9.field_0))
                                                        staticcall address(stor9.field_0).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0]:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'Check: No returned tokens'
                                                                else:
                                                                    require ext_code.size(address(stor9.field_0))
                                                                    call address(stor9.field_0).approve(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args routerAddress, ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        mem[(32 * _717) + ceil32(return_data.size) + 224] = 2
                                                                        mem[(32 * _717) + ceil32(return_data.size) + 256] = address(stor9.field_0)
                                                                        mem[(32 * _717) + ceil32(return_data.size) + 288] = stor8
                                                                        mem[(32 * _717) + ceil32(return_data.size) + 420] = this.address
                                                                        mem[(32 * _717) + ceil32(return_data.size) + 452] = block.timestamp
                                                                        mem[(32 * _717) + ceil32(return_data.size) + 388] = 160
                                                                        mem[(32 * _717) + ceil32(return_data.size) + 484] = 2
                                                                        mem[(32 * _717) + ceil32(return_data.size) + 516 len 0] = None
                                                                        require ext_code.size(routerAddress)
                                                                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                             gas gas_remaining wei
                                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _717) + ceil32(return_data.size) + 516 len 64]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor8)
                                                                            staticcall stor8.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require stor6.length
                                                                                require 1 < stor6.length
                                                                                if uint256(stor6.field_0) > uint256(stor6.field_256):
                                                                                    require 0 < stor6.length
                                                                                    mem[0] = 6
                                                                                    emit 0xccf83d08: uint256(stor6.field_0), uint256(stor6.field_0)
                                                                                    uint256(stor9.field_0) = 0xffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffffff and uint256(stor9.field_0)
                                                                                    require ext_code.size(stor8)
                                                                                    staticcall stor8.0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args this.address
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if ext_call.return_data[0] < stor3:
                                                                                            revert with 0, 'sNot enough token base in the contractddres'
                                                                                        else:
                                                                                            require ext_code.size(stor8)
                                                                                            call stor8.approve(address arg1, uint256 arg2) with:
                                                                                                 gas gas_remaining wei
                                                                                                args routerAddress, stor3
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                mem[(32 * _717) + ceil32(return_data.size) + 320] = 2
                                                                                                mem[64] = (32 * _717) + ceil32(return_data.size) + 416
                                                                                                mem[(32 * _717) + ceil32(return_data.size) + 352] = stor8
                                                                                                mem[(32 * _717) + ceil32(return_data.size) + 384] = address(stor9.field_0)
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
                                                                                                    mem[mem[64] + 164] = mem[(32 * _717) + ceil32(return_data.size) + 320]
                                                                                                    _1501 = mem[(32 * _717) + ceil32(return_data.size) + 320]
                                                                                                    s = 0
                                                                                                    while s < 32 * _1501:
                                                                                                        mem[s + mem[64] + 196] = mem[s + (32 * _717) + ceil32(return_data.size) + 352]
                                                                                                        s = s + 32
                                                                                                        continue 
                                                                                                    require ext_code.size(routerAddress)
                                                                                                    call routerAddress.mem[mem[64] len 4] with:
                                                                                                         gas gas_remaining wei
                                                                                                        args mem[mem[64] + 4 len (32 * _1501) + _1499 + -mem[64] + 192]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _1561 = mem[64]
                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _1568 = mem[_1561]
                                                                                                        require mem[_1561] <= 4294967296
                                                                                                        require mem[_1561] + 32 <= return_data.size
                                                                                                        require mem[_1561 + mem[_1561]] <= 4294967296 and mem[_1561] + (32 * mem[_1561 + mem[_1561]]) + 32 <= return_data.size
                                                                                                        mem[_1561 + ceil32(return_data.size)] = mem[_1561 + mem[_1561]]
                                                                                                        _1577 = mem[_1561 + _1568]
                                                                                                        s = 0
                                                                                                        while s < 32 * _1577:
                                                                                                            mem[s + _1561 + ceil32(return_data.size) + 32] = mem[s + _1561 + _1568 + 32]
                                                                                                            s = s + 32
                                                                                                            continue 
                                                                                                        mem[64] = (32 * _1577) + _1561 + ceil32(return_data.size) + 32
                                                                                                        idx = idx + 1
                                                                                                        continue 
                                                                                                if uint8(stor9.field_184):
                                                                                                    return 1
                                                                                                else:
                                                                                                    uint8(stor9.field_160) = 1
                                                                                                    return 1
                                                                                else:
                                                                                    require 0 < stor6.length
                                                                                    emit 0xd11b16a8: uint256(stor6.field_0), uint256(stor6.field_0)
                                                                                    return 0
                                                            else:
                                                                require 0 < stor6.length
                                                                emit 0xd11b16a8: uint256(stor6.field_0), 0
                                                                return 0
}



}
