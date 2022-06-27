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

function transfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require bool(stor0[address(msg.sender)]) == 1
    require bool(stor0[address(arg2)]) == 1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
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

function sub_42290bd0(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 100).length) + 128 > test266151307() or (32 * ('cd', 100).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = tx.origin
    mem[32] = 0
    require bool(stor0[tx.origin]) == 1
    if cd[36]:
        mem[(32 * ('cd', 100).length) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 100).length) + 132] = cd[36]
        mem[(32 * ('cd', 100).length) + 164] = cd[68]
        mem[(32 * ('cd', 100).length) + 196] = 160
        mem[(32 * ('cd', 100).length) + 292] = ('cd', 100).length
        idx = 0
        s = 128
        t = (32 * ('cd', 100).length) + 324
        while idx < ('cd', 100).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * ('cd', 100).length) + 228] = this.address
        mem[(32 * ('cd', 100).length) + 260] = 3 * 10^9
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[(32 * ('cd', 100).length) + 132 len (96 * ('cd', 100).length) + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * ('cd', 100).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * ('cd', 100).length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _25 = mem[(32 * ('cd', 100).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[(32 * ('cd', 100).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
        require (32 * ('cd', 100).length) + mem[(32 * ('cd', 100).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 159 < (32 * ('cd', 100).length) + return_data.size + 128
        _26 = mem[(32 * ('cd', 100).length) + mem[(32 * ('cd', 100).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]
        if mem[(32 * ('cd', 100).length) + mem[(32 * ('cd', 100).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (32 * ('cd', 100).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 100).length) + mem[(32 * ('cd', 100).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 160 > test266151307() or (32 * mem[(32 * ('cd', 100).length) + mem[(32 * ('cd', 100).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 32 < 0:
            revert with 'NH{q', 65
        mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 100).length) + mem[(32 * ('cd', 100).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]
        require _25 + (32 * _26) + 32 <= return_data.size
        idx = 0
        s = (32 * ('cd', 100).length) + _25 + 160
        t = (32 * ('cd', 100).length) + ceil32(return_data.size) + 160
        while idx < _26:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
}

function buy(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    mem[96] = 2
    mem[192] = 2
    mem[288] = 2
    mem[352] = arg1
    require ext_code.size(arg3)
    staticcall arg3.token0() with:
            gas gas_remaining wei
    mem[384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg3)
    staticcall arg3.getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 384 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg3)
    staticcall arg3.token1() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) == arg1:
        if ext_call.return_data[12 len 20] == arg1:
            revert with 0, 'Target token equal base token'
        if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        mem[320] = ext_call.return_data[12 len 20]
        mem[160] = 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
        mem[128] = 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
        mem[256] = Mask(112, 0, ext_call.return_data[0])
        mem[224] = Mask(112, 0, ext_call.return_data[32])
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= arg4:
            if arg4 < 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if arg4 - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) and Mask(112, 0, ext_call.return_data[0]) > -1 / arg4 - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 388] = this.address
            require ext_code.size(address(ext_call.return_data[12 len 20]))
            staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18 <= ext_call.return_data[0]:
                if Mask(112, 0, ext_call.return_data[32]) > -((arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18) - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) + ((arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) + ((arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                    revert with 'NH{q', 17
                if 9970 * Mask(112, 0, ext_call.return_data[0]) and (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18 > -1 / 9970 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if not (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18):
                    revert with 'NH{q', 18
                if 9970 * Mask(112, 0, ext_call.return_data[0]) * (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18) > 0:
                    mem[0] = tx.origin
                    mem[32] = 0
                    require bool(stor0[tx.origin]) == 1
                    if (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18:
                        mem[(6 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 388] = (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18
                        mem[(6 * ceil32(return_data.size)) + 420] = 9970 * Mask(112, 0, ext_call.return_data[0]) * (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18)
                        mem[(6 * ceil32(return_data.size)) + 452] = 160
                        mem[(6 * ceil32(return_data.size)) + 548] = 2
                        idx = 0
                        s = 320
                        t = (6 * ceil32(return_data.size)) + 580
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 484] = this.address
                        mem[(6 * ceil32(return_data.size)) + 516] = 3 * 10^9
                        require ext_code.size(arg2)
                        call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18, 9970 * Mask(112, 0, ext_call.return_data[0]) * (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18), 160, address(this.address), 3 * 10^9, 2, mem[(6 * ceil32(return_data.size)) + 580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        _135 = mem[(6 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18) >> 32 + 415 < (6 * ceil32(return_data.size)) + return_data.size + 384
                        _139 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18) >> 32 + 384]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18) >> 32 + 384] > test266151307():
                            revert with 'NH{q', 65
                        if (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18) >> 32 + 384]) + 416 > test266151307() or (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18) >> 32 + 384]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[(7 * ceil32(return_data.size)) + 384] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, (arg4 * Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) / 2 * 10^18) >> 32 + 384]
                        require _135 + (32 * _139) + 32 <= return_data.size
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + _135 + 416
                        t = (7 * ceil32(return_data.size)) + 416
                        while idx < _139:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
            else:
                if Mask(112, 0, ext_call.return_data[32]) > -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) + ext_call.return_data[0] and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) + ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                    revert with 'NH{q', 17
                if 9970 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 9970 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if not (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * ext_call.return_data[0]):
                    revert with 'NH{q', 18
                if 9970 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * ext_call.return_data[0]) > 0:
                    mem[0] = tx.origin
                    mem[32] = 0
                    require bool(stor0[tx.origin]) == 1
                    if ext_call.return_data[0]:
                        mem[(6 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 420] = 9970 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 452] = 160
                        mem[(6 * ceil32(return_data.size)) + 548] = 2
                        idx = 0
                        s = 320
                        t = (6 * ceil32(return_data.size)) + 580
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 484] = this.address
                        mem[(6 * ceil32(return_data.size)) + 516] = 3 * 10^9
                        require ext_code.size(arg2)
                        call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 9970 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * ext_call.return_data[0]), 160, address(this.address), 3 * 10^9, 2, mem[(6 * ceil32(return_data.size)) + 580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        _136 = mem[(6 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28]
                        require mem[(6 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 415 < (6 * ceil32(return_data.size)) + return_data.size + 384
                        _140 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384] > test266151307():
                            revert with 'NH{q', 65
                        if (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416 > test266151307() or (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[(7 * ceil32(return_data.size)) + 384] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]
                        require _136 + (32 * _140) + 32 <= return_data.size
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + _136 + 416
                        t = (7 * ceil32(return_data.size)) + 416
                        while idx < _140:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
    else:
        if ext_call.return_data[12 len 20] != arg1:
            revert with 0, 'Target token not found in the pool'
        if address(ext_call.return_data[0]) == arg1:
            revert with 0, 'Target token equal base token'
        if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        mem[320] = address(ext_call.return_data[0])
        mem[160] = 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
        mem[128] = 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
        mem[256] = Mask(112, 0, ext_call.return_data[32])
        mem[224] = Mask(112, 0, ext_call.return_data[0])
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= arg4:
            if arg4 < 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if arg4 - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, ext_call.return_data[32]) > -1 / arg4 - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 388] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18 <= ext_call.return_data[0]:
                if Mask(112, 0, ext_call.return_data[0]) > -((arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18) - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) + ((arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18) and 10000 > -1 / Mask(112, 0, ext_call.return_data[0]) + ((arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                    revert with 'NH{q', 17
                if 9970 * Mask(112, 0, ext_call.return_data[32]) and (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18 > -1 / 9970 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if not (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18):
                    revert with 'NH{q', 18
                if 9970 * Mask(112, 0, ext_call.return_data[32]) * (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18) > 0:
                    mem[0] = tx.origin
                    mem[32] = 0
                    require bool(stor0[tx.origin]) == 1
                    if (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18:
                        mem[(6 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 388] = (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18
                        mem[(6 * ceil32(return_data.size)) + 420] = 9970 * Mask(112, 0, ext_call.return_data[32]) * (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18)
                        mem[(6 * ceil32(return_data.size)) + 452] = 160
                        mem[(6 * ceil32(return_data.size)) + 548] = 2
                        idx = 0
                        s = 320
                        t = (6 * ceil32(return_data.size)) + 580
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 484] = this.address
                        mem[(6 * ceil32(return_data.size)) + 516] = 3 * 10^9
                        require ext_code.size(arg2)
                        call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18, 9970 * Mask(112, 0, ext_call.return_data[32]) * (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18), 160, address(this.address), 3 * 10^9, 2, mem[(6 * ceil32(return_data.size)) + 580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        _133 = mem[(6 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18) >> 32 + 415 < (6 * ceil32(return_data.size)) + return_data.size + 384
                        _137 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18) >> 32 + 384]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18) >> 32 + 384] > test266151307():
                            revert with 'NH{q', 65
                        if (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18) >> 32 + 384]) + 416 > test266151307() or (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18) >> 32 + 384]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[(7 * ceil32(return_data.size)) + 384] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, (arg4 * Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32])) / 2 * 10^18) >> 32 + 384]
                        require _133 + (32 * _137) + 32 <= return_data.size
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + _133 + 416
                        t = (7 * ceil32(return_data.size)) + 416
                        while idx < _137:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
            else:
                if Mask(112, 0, ext_call.return_data[0]) > -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) + ext_call.return_data[0] and 10000 > -1 / Mask(112, 0, ext_call.return_data[0]) + ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                    revert with 'NH{q', 17
                if 9970 * Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / 9970 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if not (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * ext_call.return_data[0]):
                    revert with 'NH{q', 18
                if 9970 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * ext_call.return_data[0]) > 0:
                    mem[0] = tx.origin
                    mem[32] = 0
                    require bool(stor0[tx.origin]) == 1
                    if ext_call.return_data[0]:
                        mem[(6 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 420] = 9970 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 452] = 160
                        mem[(6 * ceil32(return_data.size)) + 548] = 2
                        idx = 0
                        s = 320
                        t = (6 * ceil32(return_data.size)) + 580
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 484] = this.address
                        mem[(6 * ceil32(return_data.size)) + 516] = 3 * 10^9
                        require ext_code.size(arg2)
                        call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 9970 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * ext_call.return_data[0]), 160, address(this.address), 3 * 10^9, 2, mem[(6 * ceil32(return_data.size)) + 580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        _134 = mem[(6 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28]
                        require mem[(6 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 415 < (6 * ceil32(return_data.size)) + return_data.size + 384
                        _138 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384] > test266151307():
                            revert with 'NH{q', 65
                        if (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416 > test266151307() or (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[(7 * ceil32(return_data.size)) + 384] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]
                        require _134 + (32 * _138) + 32 <= return_data.size
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + _134 + 416
                        t = (7 * ceil32(return_data.size)) + 416
                        while idx < _138:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
}



}
