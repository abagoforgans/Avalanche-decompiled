contract main {




// =====================  Runtime code  =====================


#
#  - sub_27fd9763(?)
#  - sub_873cede4(?)
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

function getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 < arg1:
        revert with 'NH{q', 17
    if arg2 - arg1 and arg3 > -1 / arg2 - arg1:
        revert with 'NH{q', 17
    return ((arg2 * arg3) - (arg1 * arg3) / 2 * 10^18)
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require bool(stor0[address(msg.sender)]) == 1
    mem[196 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg2, mem[196 len 28]
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

function sub_6ad17234(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg3 and 10000 > -1 / arg1 + arg3:
        revert with 'NH{q', 17
    if arg2 > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
        revert with 'NH{q', 17
    if 9970 * arg2 and arg3 > -1 / 9970 * arg2:
        revert with 'NH{q', 17
    if not (10000 * arg1) + (10000 * arg3):
        revert with 'NH{q', 18
    return (9970 * arg2 * arg3 / (10000 * arg1) + (10000 * arg3))
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require bool(stor0[address(msg.sender)]) == 1
    require bool(stor0[address(arg2)]) == 1
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
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
    call arg1.transfer(address arg1, uint256 arg2) with:
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
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) == arg2:
        if ext_call.return_data[12 len 20] == arg2:
            revert with 0, 'Target token equal base token'
        if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        return ext_call.return_data[32] << 144, 
               ext_call.return_data[0] << 144,
               10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
               10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
               address(ext_call.return_data[0])
    if ext_call.return_data[12 len 20] != arg2:
        revert with 0, 'Target token not found in the pool'
    if address(ext_call.return_data[0]) == arg2:
        revert with 0, 'Target token equal base token'
    if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 18
    if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 18
    return ext_call.return_data[0] << 144, 
           ext_call.return_data[32] << 144,
           10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
           10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
           address(ext_call.return_data[0])
}



}
