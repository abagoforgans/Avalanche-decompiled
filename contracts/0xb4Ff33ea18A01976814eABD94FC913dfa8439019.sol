contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
address routerAddress;
address factoryAddress;
uint256 stor2;
address wethAddress;
uint256 stor3;
uint256 stor4;

function getWeth() {
    return address(wethAddress)
}

function getFactory() {
    return address(factoryAddress)
}

function getOwner() {
    return owner
}

function getRouter() {
    return routerAddress
}

function _fallback() payable {
  stop
}

function transferOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Sender is not owner: Reject!'
    owner = arg1
    return owner
}

function claimEth() payable {
    if owner != msg.sender:
        revert with 0, 'Sender is not owner: Reject!'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2065615d(?) {
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

function sub_4ee41d36(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_4742bde3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Sender is not owner: Reject!'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Sender is not owner: Reject!'
    routerAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
}

function claimToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Sender is not owner: Reject!'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_1067bb2f(?) payable {
    require calldata.size - 4 >= 96
    mem[160] = arg1
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = msg.value
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _65 = mem[192 len 4], Mask(224, 32, msg.value) >> 32
    require mem[192 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    _68 = mem[_65 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_65 + 192])] = mem[_65 + 224 len floor32(mem[_65 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _119 = mem[ceil32(return_data.size) + 256]
    require 1 < mem[ceil32(return_data.size) + 192]
    _121 = mem[ceil32(return_data.size) + 256]
    require mem[ceil32(return_data.size) + 256] * arg2 / 100 <= mem[ceil32(return_data.size) + 256]
    mem[(32 * _68) + ceil32(return_data.size) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[(32 * _68) + ceil32(return_data.size) + 228] = _121 - (_119 * arg2 / 100)
    mem[(32 * _68) + ceil32(return_data.size) + 292] = this.address
    mem[(32 * _68) + ceil32(return_data.size) + 324] = block.timestamp
    mem[(32 * _68) + ceil32(return_data.size) + 260] = 128
    mem[(32 * _68) + ceil32(return_data.size) + 356] = 2
    mem[(32 * _68) + ceil32(return_data.size) + 388 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args _121 - (_119 * arg2 / 100), Array(len=2, data=mem[(32 * _68) + ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _68) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _68) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _168 = mem[(32 * _68) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _121 - (_119 * arg2 / 100)) >> 32
    require mem[(32 * _68) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _121 - (_119 * arg2 / 100)) >> 32 <= 4294967296
    require mem[(32 * _68) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _121 - (_119 * arg2 / 100)) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _68) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _121 - (_119 * arg2 / 100)) >> 32 + (32 * _68) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _68) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _121 - (_119 * arg2 / 100)) >> 32 + (32 * mem[mem[(32 * _68) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _121 - (_119 * arg2 / 100)) >> 32 + (32 * _68) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
    mem[(32 * _68) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _68) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _121 - (_119 * arg2 / 100)) >> 32 + (32 * _68) + ceil32(return_data.size) + 224]
    _171 = mem[_168 + (32 * _68) + ceil32(return_data.size) + 224]
    mem[(32 * _68) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_168 + (32 * _68) + ceil32(return_data.size) + 224])] = mem[_168 + (32 * _68) + ceil32(return_data.size) + 256 len floor32(mem[_168 + (32 * _68) + ceil32(return_data.size) + 224])]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0] / 100:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, stor4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    mem[(32 * _171) + (32 * _68) + (2 * ceil32(return_data.size)) + 452 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0] / 100, 0, 160, address(arg3), block.timestamp, 2, mem[(32 * _171) + (32 * _68) + (2 * ceil32(return_data.size)) + 452 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), ext_call.return_data[0] - (ext_call.return_data[0] / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
