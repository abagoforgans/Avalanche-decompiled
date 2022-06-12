contract main {




// =====================  Runtime code  =====================


#
#  - sub_02204a52(?)
#
mapping of uint8 stor0;

function _fallback() payable {
    revert
}

function allow(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require bool(stor0[address(msg.sender)]) == 1
    stor0[address(arg1)] = 1
}

function sub_55528e8c(?) {
    require bool(stor0[address(msg.sender)]) == 1
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'refund failed'
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require bool(stor0[address(msg.sender)]) == 1
    mem[196 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, mem[196 len 28]
    call arg1.mem[196 len 4] with:
         gas gas_remaining wei
        args mem[200 len 64]
    if not ext_call.success:
        revert with 0, 'refund failed'
}

function sub_b83511a1(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require bool(stor0[address(msg.sender)]) == 1
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_491fd405(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require bool(stor0[address(msg.sender)]) == 1
    require bool(stor0[address(msg.sender)]) == 1
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transferAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require bool(stor0[address(msg.sender)]) == 1
    require bool(stor0[address(arg2)]) == 1
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
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getPrice(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if address(ext_call.return_data[0]) == arg2:
        if ext_call.return_data[18 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not ext_call.return_data[50 len 14]:
            revert with 'NH{q', 18
        return ext_call.return_data[18 len 14], 
               ext_call.return_data[32] << 144,
               10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
    if ext_call.return_data[50 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if not ext_call.return_data[18 len 14]:
        revert with 'NH{q', 18
    return ext_call.return_data[50 len 14], 
           ext_call.return_data[0] << 144,
           10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
}

function sub_52b683b3(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == arg5
    require arg6 == arg6
    require bool(stor0[address(msg.sender)]) == 1
    require ext_code.size(address(arg4))
    staticcall address(arg4).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg4))
    staticcall address(arg4).getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if address(ext_call.return_data[0]) == address(arg1):
        if ext_call.return_data[18 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not ext_call.return_data[50 len 14]:
            revert with 'NH{q', 18
        if arg5 < 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if arg5 - (10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]) and ext_call.return_data[50 len 14] > -1 / arg5 - (10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
            revert with 'NH{q', 17
        if (arg5 * ext_call.return_data[50 len 14]) - (10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) / 2 * 10^18 and 10^18 > -1 / (arg5 * ext_call.return_data[50 len 14]) - (10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) / 2 * 10^18:
            revert with 'NH{q', 17
        if not arg6:
            revert with 'NH{q', 18
        mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg2)
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 420
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 484 len 288] = 0, (arg5 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18, 10^18 * (arg5 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18 / arg6, 160, address(this.address), 3 * 10^9, 2, mem[(2 * ceil32(return_data.size)) + 420 len 92]
    else:
        if ext_call.return_data[50 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not ext_call.return_data[18 len 14]:
            revert with 'NH{q', 18
        if arg5 < 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if arg5 - (10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) and ext_call.return_data[18 len 14] > -1 / arg5 - (10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
            revert with 'NH{q', 17
        if (arg5 * ext_call.return_data[18 len 14]) - (10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * ext_call.return_data[18 len 14]) / 2 * 10^18 and 10^18 > -1 / (arg5 * ext_call.return_data[18 len 14]) - (10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * ext_call.return_data[18 len 14]) / 2 * 10^18:
            revert with 'NH{q', 17
        if not arg6:
            revert with 'NH{q', 18
        mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg2)
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 420
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 484 len 288] = 0, (arg5 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18, 10^18 * (arg5 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18 / arg6, 160, address(this.address), 3 * 10^9, 2, mem[(2 * ceil32(return_data.size)) + 420 len 92]
    call address(arg3).mem[(2 * ceil32(return_data.size)) + 484 len 4] with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 488 len 256]
    if not ext_call.success:
        revert with 0, 'swap execution failed'
}



}
