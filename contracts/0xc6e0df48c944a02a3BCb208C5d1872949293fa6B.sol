contract main {




// =====================  Runtime code  =====================


address owner;
address UNISWAP_ROUTER_ADDRESS;
address stor2;

function UNISWAP_ROUTER_ADDRESS() {
    return UNISWAP_ROUTER_ADDRESS
}

function owner() {
    return owner
}

function sendEther() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_0882de5c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    UNISWAP_ROUTER_ADDRESS = address(arg1)
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approval(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args UNISWAP_ROUTER_ADDRESS, 100000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b47825e7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_861f73d6(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    mem[96] = 2
    require ext_code.size(stor2)
    staticcall stor2.0xad5c4648 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = address(arg1)
    mem[ceil32(return_data.size) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg3
    mem[ceil32(return_data.size) + 228] = 128
    mem[ceil32(return_data.size) + 324] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 260] = 0x4d92d3f009c54ecb0afd31ee62c9986599070eef
    mem[ceil32(return_data.size) + 292] = 1642977938186
    require ext_code.size(stor2)
    call stor2.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg2 wei
         gas gas_remaining wei
        args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 356 len 64]), 0x4d92d3f009c54ecb0afd31ee62c9986599070eef, 1642977938186
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _20 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _21 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 < 0:
        revert with 'NH{q', 65
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require _20 + (32 * _21) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _20 + 224
    t = (2 * ceil32(return_data.size)) + 224
    while idx < _21:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function sub_d67317a6(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    mem[96] = 2
    mem[128] = address(arg1)
    mem[160] = address(arg2)
    mem[196] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 228] = arg3
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = 0x4d92d3f009c54ecb0afd31ee62c9986599070eef
    mem[ceil32(return_data.size) + 324] = 1642977938186
    require ext_code.size(stor2)
    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg3, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), 0x4d92d3f009c54ecb0afd31ee62c9986599070eef, 1642977938186
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _20 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
    _21 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 < 0:
        revert with 'NH{q', 65
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    require _20 + (32 * _21) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _20 + 224
    t = (2 * ceil32(return_data.size)) + 224
    while idx < _21:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}



}
