contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
array of address show;

function showAddress() payable {
    if 0 >= show.length:
        revert with 'NH{q', 50
    if 1 >= show.length:
        revert with 'NH{q', 50
    return address(show.field_0), address(show.field_256)
}

function _fallback() payable {
    revert
}

function getBalanceOfToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_99744d86(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    call address(arg2).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), 0x204fce5e3e2502610fffffff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function returnTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_4e331483(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    mem[128 len 64] = call.data[calldata.size len 64]
    show.length = 2
    s = 0
    idx = 128
    while 192 > idx:
        show[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while show.length > idx:
        show[idx].field_0 = 0
        idx = idx + 1
        continue 
    if 0 >= show.length:
        revert with 'NH{q', 50
    address(show.field_0) = address(arg2)
    if 1 >= show.length:
        revert with 'NH{q', 50
    address(show.field_256) = address(arg1)
    if block.timestamp > -121:
        revert with 'NH{q', 17
    idx = 0
    s = 0
    t = 388
    while idx < show.length:
        mem[t] = show[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(address(arg3))
    call address(arg3).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg4, 0, 160, stor0, block.timestamp + 120, show.length, mem[388 len 32 * show.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_035a9c7c(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    mem[96] = 2
    mem[128 len 64] = call.data[calldata.size len 64]
    show.length = 2
    s = 0
    idx = 128
    while 192 > idx:
        show[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while show.length > idx:
        show[idx].field_0 = 0
        idx = idx + 1
        continue 
    if 0 >= show.length:
        revert with 'NH{q', 50
    address(show.field_0) = address(arg2)
    if 1 >= show.length:
        revert with 'NH{q', 50
    address(show.field_256) = address(arg1)
    if block.timestamp > -121:
        revert with 'NH{q', 17
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg4
    mem[228] = 0
    mem[260] = 160
    mem[356] = show.length
    mem[0] = 2
    idx = 0
    s = 0
    t = 388
    while idx < show.length:
        mem[t] = show[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[292] = stor0
    mem[324] = block.timestamp + 120
    require ext_code.size(address(arg3))
    call address(arg3).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg4, 0, 160, stor0, block.timestamp + 120, show.length, mem[388 len 32 * show.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _65 = mem[192 len 4], Mask(224, 32, arg4) >> 32
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 223 < return_data.size + 192
    _66 = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    require _65 + (32 * _66) + 32 <= return_data.size
    idx = 0
    s = _65 + 224
    t = ceil32(return_data.size) + 224
    while idx < _66:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}



}
