contract main {




// =====================  Runtime code  =====================


#
#  - pay(address arg1, address arg2, address arg3, uint256 arg4)
#  - exp(address arg1, address arg2, uint256 arg3)
#
address stor0;
address stor1;
mapping of uint256 stor2;
uint8 stor3;

function setFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    stor2[address(arg1)] = arg2
}

function sub_73825a2c(?) payable {
    require calldata.size - 4 >= 128
    if arg1 and arg4 > -1 / arg1:
        revert with 0, 17
    if arg2 and arg3 > -1 / arg2:
        revert with 0, 17
    if arg2 * arg3 >= arg1 * arg4:
        if arg1 and arg2 > -1 / arg1:
            revert with 0, 17
        if arg3 and arg4 > -1 / arg3:
            revert with 0, 17
        if arg1 * arg2 <= arg3 * arg4:
            if arg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 10^18 * arg3 / arg1 and 10^18 * arg4 / arg2 > -1 / 10^18 * arg3 / arg1:
                revert with 0, 17
            if 10^18 * arg3 / arg1 * 10^18 * arg4 / arg2 <= 3:
                if arg4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not 10^18 * arg3 / arg1 * 10^18 * arg4 / arg2:
                    if arg2 and 0 > -1 / arg2:
                        revert with 0, 17
                    if 0 < 10^18 * arg4:
                        revert with 0, 17
                    return 0, -1 * 10^18 * arg4 / 10^18
                if arg2 and 1 > -1 / arg2:
                    revert with 0, 17
                if arg2 < 10^18 * arg4:
                    revert with 0, 17
                return 0, arg2 - (10^18 * arg4) / 1000000000000000001
            if 1 > !(10^18 * arg3 / arg1 * 10^18 * arg4 / arg2 / 2):
                revert with 0, 17
            s = (10^18 * arg3 / arg1 * 10^18 * arg4 / arg2 / 2) + 1
            t = 10^18 * arg3 / arg1 * 10^18 * arg4 / arg2
            while s < t:
                if not s:
                    revert with 0, 18
                if 10^18 * arg3 / arg1 * 10^18 * arg4 / arg2 / s > !s:
                    revert with 0, 17
                s = (10^18 * arg3 / arg1 * 10^18 * arg4 / arg2 / s) + s / 2
                t = s
                continue 
            if 10^18 > !t:
                revert with 0, 17
            if arg4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if arg2 and t > -1 / arg2:
                revert with 0, 17
            if arg2 * t < 10^18 * arg4:
                revert with 0, 17
            if not t + 10^18:
                revert with 0, 18
            return 0, (arg2 * t) - (10^18 * arg4) / t + 10^18
        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not arg3:
            revert with 0, 18
        if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not arg4:
            revert with 0, 18
        if 10^18 * arg1 / arg3 and 10^18 * arg2 / arg4 > -1 / 10^18 * arg1 / arg3:
            revert with 0, 17
        if 10^18 * arg1 / arg3 * 10^18 * arg2 / arg4 <= 3:
            if not 10^18 * arg1 / arg3 * 10^18 * arg2 / arg4:
                if False and arg4 > 0:
                    revert with 0, 17
                if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * arg2 < 0:
                    revert with 0, 17
                return 0, 10^18 * arg2 / 10^18
            if arg4 > -1:
                revert with 0, 17
            if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * arg2 < arg4:
                revert with 0, 17
            return 0, (10^18 * arg2) - arg4 / 1000000000000000001
        if 1 > !(10^18 * arg1 / arg3 * 10^18 * arg2 / arg4 / 2):
            revert with 0, 17
        s = (10^18 * arg1 / arg3 * 10^18 * arg2 / arg4 / 2) + 1
        t = 10^18 * arg1 / arg3 * 10^18 * arg2 / arg4
        while s < t:
            if not s:
                revert with 0, 18
            if 10^18 * arg1 / arg3 * 10^18 * arg2 / arg4 / s > !s:
                revert with 0, 17
            s = (10^18 * arg1 / arg3 * 10^18 * arg2 / arg4 / s) + s / 2
            t = s
            continue 
        if 10^18 > !t:
            revert with 0, 17
        if t and arg4 > -1 / t:
            revert with 0, 17
        if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * arg2 < t * arg4:
            revert with 0, 17
        if not t + 10^18:
            revert with 0, 18
        return 0, (10^18 * arg2) - (t * arg4) / t + 10^18
    if arg3 and arg4 > -1 / arg3:
        revert with 0, 17
    if arg1 and arg2 > -1 / arg1:
        revert with 0, 17
    if arg3 * arg4 <= arg1 * arg2:
        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not arg3:
            revert with 0, 18
        if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not arg4:
            revert with 0, 18
        if 10^18 * arg1 / arg3 and 10^18 * arg2 / arg4 > -1 / 10^18 * arg1 / arg3:
            revert with 0, 17
        if 10^18 * arg1 / arg3 * 10^18 * arg2 / arg4 <= 3:
            if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not 10^18 * arg1 / arg3 * 10^18 * arg2 / arg4:
                if arg4 and 0 > -1 / arg4:
                    revert with 0, 17
                if 0 < 10^18 * arg2:
                    revert with 0, 17
                return 1, -1 * 10^18 * arg2 / 10^18
            if arg4 and 1 > -1 / arg4:
                revert with 0, 17
            if arg4 < 10^18 * arg2:
                revert with 0, 17
            return 1, arg4 - (10^18 * arg2) / 1000000000000000001
        if 1 > !(10^18 * arg1 / arg3 * 10^18 * arg2 / arg4 / 2):
            revert with 0, 17
        s = (10^18 * arg1 / arg3 * 10^18 * arg2 / arg4 / 2) + 1
        t = 10^18 * arg1 / arg3 * 10^18 * arg2 / arg4
        while s < t:
            if not s:
                revert with 0, 18
            if 10^18 * arg1 / arg3 * 10^18 * arg2 / arg4 / s > !s:
                revert with 0, 17
            s = (10^18 * arg1 / arg3 * 10^18 * arg2 / arg4 / s) + s / 2
            t = s
            continue 
        if 10^18 > !t:
            revert with 0, 17
        if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if arg4 and t > -1 / arg4:
            revert with 0, 17
        if arg4 * t < 10^18 * arg2:
            revert with 0, 17
        if not t + 10^18:
            revert with 0, 18
        return 1, (arg4 * t) - (10^18 * arg2) / t + 10^18
    if arg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if 10^18 * arg3 / arg1 and 10^18 * arg4 / arg2 > -1 / 10^18 * arg3 / arg1:
        revert with 0, 17
    if 10^18 * arg3 / arg1 * 10^18 * arg4 / arg2 <= 3:
        if not 10^18 * arg3 / arg1 * 10^18 * arg4 / arg2:
            if False and arg2 > 0:
                revert with 0, 17
            if arg4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * arg4 < 0:
                revert with 0, 17
            return 1, 10^18 * arg4 / 10^18
        if arg2 > -1:
            revert with 0, 17
        if arg4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * arg4 < arg2:
            revert with 0, 17
        return 1, (10^18 * arg4) - arg2 / 1000000000000000001
    if 1 > !(10^18 * arg3 / arg1 * 10^18 * arg4 / arg2 / 2):
        revert with 0, 17
    s = (10^18 * arg3 / arg1 * 10^18 * arg4 / arg2 / 2) + 1
    t = 10^18 * arg3 / arg1 * 10^18 * arg4 / arg2
    while s < t:
        if not s:
            revert with 0, 18
        if 10^18 * arg3 / arg1 * 10^18 * arg4 / arg2 / s > !s:
            revert with 0, 17
        s = (10^18 * arg3 / arg1 * 10^18 * arg4 / arg2 / s) + s / 2
        t = s
        continue 
    if 10^18 > !t:
        revert with 0, 17
    if t and arg2 > -1 / t:
        revert with 0, 17
    if arg4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * arg4 < t * arg2:
        revert with 0, 17
    if not t + 10^18:
        revert with 0, 18
    return 1, (10^18 * arg4) - (t * arg2) / t + 10^18
}

function sub_af3f6ab3(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not stor3:
        require arg4.length >= 96
        _4 = mem[128]
        require mem[128] == mem[140 len 20]
        _6 = mem[160]
        _7 = mem[192]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if stor0 == ext_call.return_data[12 len 20]:
            require ext_code.size(msg.sender)
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg3:
                revert with 0, 'amount1!'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(mem[128]), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if mem[160] < 1:
                revert with 0, 17
            mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 165] = 0
            mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 197] = this.address
            mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 229] = 128
            mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 261] = 0
            mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 293 len 0] = None
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args _6 - 1, 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= _7:
                revert with 0, 'BNBIn!'
            mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 165] = _7
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address, mem[ceil32(ceil32(arg4.length)) + (9 * ceil32(return_data.size)) + 165 len 5 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args stor1, ext_call.return_data[0], mem[ceil32(ceil32(arg4.length)) + (11 * ceil32(return_data.size)) + 197 len 9 * ceil32(return_data.size)]
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg2:
                revert with 0, 'amount0!'
            mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 101] = mem[140 len 20]
            mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 133] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(_4), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if _6 < 1:
                revert with 0, 17
            mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 165] = _6 - 1
            mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 197] = this.address
            mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 229] = 128
            mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 261] = 0
            mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 293 len 0] = None
            require ext_code.size(address(_4))
            call address(_4).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, _6 - 1, address(this.address), 128, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 133] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= _7:
                revert with 0, 'BNBIn!', mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 229 len 9 * ceil32(return_data.size)]
            mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 133] = msg.sender
            mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 165] = _7
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _7, mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 197 len 9 * ceil32(return_data.size)]
            mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 133] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 133 len (13 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 133] = stor1
            mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 133 len (15 * ceil32(return_data.size)) + 64]
    else:
        require arg4.length >= 160
        _5 = mem[128]
        require mem[128] == mem[140 len 20]
        _8 = mem[160]
        require mem[160] == mem[172 len 20]
        _12 = mem[192]
        _13 = mem[224]
        _14 = mem[256]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if stor0 == ext_call.return_data[12 len 20]:
            require ext_code.size(msg.sender)
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg3:
                revert with 0, 'amount!'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(mem[128]), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 197] = mem[172 len 20]
            mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 229] = 128
            mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 261] = 0
            mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 293 len 0] = None
            require ext_code.size(mem[140 len 20])
            if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args _12, 0, address(mem[160]), 128, 0, None
            else:
                call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, _12, address(mem[160]), 128, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[172 len 20])
            staticcall mem[172 len 20].token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if _13 < 1:
                revert with 0, 17
            if ext_call.return_data[12 len 20] != stor0:
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 197] = _13 - 1
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 229] = this.address
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 261] = 128
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 293] = 0
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 325 len 0] = None
                require ext_code.size(mem[172 len 20])
                call mem[172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, _13 - 1, address(this.address), 128, 0, None
            else:
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 197] = 0
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 229] = this.address
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 261] = 128
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 293] = 0
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 325 len 0] = None
                require ext_code.size(mem[172 len 20])
                call mem[172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args _13 - 1, 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= _14:
                revert with 0, 'BNBIn!', mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 261 len 17 * ceil32(return_data.size)]
            mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 197] = _14
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _14, mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 229 len 17 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address, mem[ceil32(ceil32(arg4.length)) + (12 * ceil32(return_data.size)) + 197 len 20 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args stor1, ext_call.return_data[0], mem[ceil32(ceil32(arg4.length)) + (14 * ceil32(return_data.size)) + 229 len 24 * ceil32(return_data.size)]
        else:
            mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 101] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg2:
                revert with 0, 'amount!'
            mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 101] = address(_5)
            mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 133] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(_5), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(_5))
            staticcall address(_5).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 165] = 0
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 197] = address(_8)
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 229] = 128
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 261] = 0
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 293 len 0] = None
                require ext_code.size(address(_5))
                call address(_5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args _12, 0, address(_8), 128, 0, None
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(_8))
                staticcall address(_8).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if _13 < 1:
                    revert with 0, 17
                if ext_call.return_data[12 len 20] != stor0:
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _13 - 1, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= _14:
                        revert with 0, 'BNBIn!'
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _14
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, ext_call.return_data[0]
                else:
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 197] = 0
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 229] = this.address
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 261] = 128
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 293] = 0
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 325 len 0] = None
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _13 - 1, 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 165] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 161] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= _14:
                        mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 161] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 165] = 32
                        mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 197] = 6
                        mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 229] = 0x424e42496e210000000000000000000000000000000000000000000000000000
                        revert with memory
                          from ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 161
                           len ceil32(return_data.size) + 100
                    mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 165] = msg.sender
                    mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 197] = _14
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 165 len ceil32(return_data.size) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address, mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 197 len 5 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, ext_call.return_data[0], mem[ceil32(ceil32(arg4.length)) + (12 * ceil32(return_data.size)) + 229 len 9 * ceil32(return_data.size)]
            else:
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 133] = 0
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 165] = _12
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 197] = address(_8)
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 229] = 128
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 261] = 0
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 293 len 0] = None
                require ext_code.size(address(_5))
                call address(_5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, _12, address(_8), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(_8))
                staticcall address(_8).token0() with:
                        gas gas_remaining wei
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if _13 < 1:
                    revert with 0, 17
                if ext_call.return_data[12 len 20] != stor0:
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _13 - 1, address(this.address), 128, 0, None
                else:
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 161] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 165] = _13 - 1
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 197] = 0
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 229] = this.address
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 261] = 128
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 293] = mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 129]
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 129])] = mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 161 len ceil32(mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 129])]
                    if ceil32(mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 129]) > mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 129]:
                        mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 129] + 325] = 0
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _13 - 1, 0, address(this.address), 128, mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 129], mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 129])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= _14:
                    revert with 0, 'BNBIn!'
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() payable {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not stor3:
        require arg4.length >= 96
        _4 = mem[128]
        require mem[128] == mem[140 len 20]
        _6 = mem[160]
        _7 = mem[192]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if stor0 == ext_call.return_data[12 len 20]:
            require ext_code.size(msg.sender)
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg3:
                revert with 0, 'amount1!'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(mem[128]), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if mem[160] < 1:
                revert with 0, 17
            mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 165] = 0
            mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 197] = this.address
            mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 229] = 128
            mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 261] = 0
            mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 293 len 0] = None
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args _6 - 1, 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= _7:
                revert with 0, 'BNBIn!'
            mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 165] = _7
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address, mem[ceil32(ceil32(arg4.length)) + (9 * ceil32(return_data.size)) + 165 len 5 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args stor1, ext_call.return_data[0], mem[ceil32(ceil32(arg4.length)) + (11 * ceil32(return_data.size)) + 197 len 9 * ceil32(return_data.size)]
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg2:
                revert with 0, 'amount0!'
            mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 101] = mem[140 len 20]
            mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 133] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(_4), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if _6 < 1:
                revert with 0, 17
            mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 165] = _6 - 1
            mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 197] = this.address
            mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 229] = 128
            mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 261] = 0
            mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 293 len 0] = None
            require ext_code.size(address(_4))
            call address(_4).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, _6 - 1, address(this.address), 128, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 133] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= _7:
                revert with 0, 'BNBIn!', mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 229 len 9 * ceil32(return_data.size)]
            mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 133] = msg.sender
            mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 165] = _7
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _7, mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 197 len 9 * ceil32(return_data.size)]
            mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 133] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 133 len (13 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 133] = stor1
            mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 133 len (15 * ceil32(return_data.size)) + 64]
    else:
        require arg4.length >= 160
        _5 = mem[128]
        require mem[128] == mem[140 len 20]
        _8 = mem[160]
        require mem[160] == mem[172 len 20]
        _12 = mem[192]
        _13 = mem[224]
        _14 = mem[256]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if stor0 == ext_call.return_data[12 len 20]:
            require ext_code.size(msg.sender)
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg3:
                revert with 0, 'amount!'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(mem[128]), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 197] = mem[172 len 20]
            mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 229] = 128
            mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 261] = 0
            mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 293 len 0] = None
            require ext_code.size(mem[140 len 20])
            if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args _12, 0, address(mem[160]), 128, 0, None
            else:
                call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, _12, address(mem[160]), 128, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[172 len 20])
            staticcall mem[172 len 20].token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if _13 < 1:
                revert with 0, 17
            if ext_call.return_data[12 len 20] != stor0:
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 197] = _13 - 1
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 229] = this.address
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 261] = 128
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 293] = 0
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 325 len 0] = None
                require ext_code.size(mem[172 len 20])
                call mem[172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, _13 - 1, address(this.address), 128, 0, None
            else:
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 197] = 0
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 229] = this.address
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 261] = 128
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 293] = 0
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 325 len 0] = None
                require ext_code.size(mem[172 len 20])
                call mem[172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args _13 - 1, 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= _14:
                revert with 0, 'BNBIn!', mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 261 len 17 * ceil32(return_data.size)]
            mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 197] = _14
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _14, mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 229 len 17 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address, mem[ceil32(ceil32(arg4.length)) + (12 * ceil32(return_data.size)) + 197 len 20 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args stor1, ext_call.return_data[0], mem[ceil32(ceil32(arg4.length)) + (14 * ceil32(return_data.size)) + 229 len 24 * ceil32(return_data.size)]
        else:
            mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 101] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg2:
                revert with 0, 'amount!'
            mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 101] = address(_5)
            mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 133] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(_5), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(_5))
            staticcall address(_5).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 165] = 0
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 197] = address(_8)
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 229] = 128
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 261] = 0
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 293 len 0] = None
                require ext_code.size(address(_5))
                call address(_5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args _12, 0, address(_8), 128, 0, None
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(_8))
                staticcall address(_8).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if _13 < 1:
                    revert with 0, 17
                if ext_call.return_data[12 len 20] != stor0:
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _13 - 1, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= _14:
                        revert with 0, 'BNBIn!'
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _14
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, ext_call.return_data[0]
                else:
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 197] = 0
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 229] = this.address
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 261] = 128
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 293] = 0
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 325 len 0] = None
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _13 - 1, 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 165] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 161] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= _14:
                        mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 161] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 165] = 32
                        mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 197] = 6
                        mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 229] = 0x424e42496e210000000000000000000000000000000000000000000000000000
                        revert with memory
                          from ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 161
                           len ceil32(return_data.size) + 100
                    mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 165] = msg.sender
                    mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 197] = _14
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 165 len ceil32(return_data.size) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address, mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 197 len 5 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, ext_call.return_data[0], mem[ceil32(ceil32(arg4.length)) + (12 * ceil32(return_data.size)) + 229 len 9 * ceil32(return_data.size)]
            else:
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 133] = 0
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 165] = _12
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 197] = address(_8)
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 229] = 128
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 261] = 0
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 293 len 0] = None
                require ext_code.size(address(_5))
                call address(_5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, _12, address(_8), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(_8))
                staticcall address(_8).token0() with:
                        gas gas_remaining wei
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if _13 < 1:
                    revert with 0, 17
                if ext_call.return_data[12 len 20] != stor0:
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _13 - 1, address(this.address), 128, 0, None
                else:
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 161] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 165] = _13 - 1
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 197] = 0
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 229] = this.address
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 261] = 128
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 293] = mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 129]
                    mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 129])] = mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 161 len ceil32(mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 129])]
                    if ceil32(mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 129]) > mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 129]:
                        mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 129] + 325] = 0
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _13 - 1, 0, address(this.address), 128, mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 129], mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 129])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= _14:
                    revert with 0, 'BNBIn!'
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_fd025320(?) payable {
    require calldata.size - 4 >= 288
    if arg1 and arg3 > -1 / arg1:
        revert with 0, 17
    if arg1 * arg3 / 10^18 and arg6 > -1 / arg1 * arg3 / 10^18:
        revert with 0, 17
    if arg2 and arg4 > -1 / arg2:
        revert with 0, 17
    if arg2 * arg4 / 10^18 and arg5 > -1 / arg2 * arg4 / 10^18:
        revert with 0, 17
    if arg2 * arg4 / 10^18 * arg5 >= arg1 * arg3 / 10^18 * arg6:
        if arg1 and arg2 > -1 / arg1:
            revert with 0, 17
        if arg3 and arg4 > -1 / arg3:
            revert with 0, 17
        if arg5 and arg6 > -1 / arg5:
            revert with 0, 17
        if arg3 * arg4 / 10^18 and arg5 * arg6 / 10^18 > -1 / arg3 * arg4 / 10^18:
            revert with 0, 17
        if arg1 * arg2 / 1000000000000000000 * 10^18 <= arg3 * arg4 / 10^18 * arg5 * arg6 / 10^18:
            if arg3 and arg5 > -1 / arg3:
                revert with 0, 17
            if arg3 * arg5 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg4 and arg6 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 10^18 * arg4 * arg6 / arg2 <= 3:
                if not 10^18 * arg4 * arg6 / arg2:
                    if 10^18 * arg3 * arg5 / arg1 > 3:
                        if 1 > !(10^18 * arg3 * arg5 / arg1 / 2):
                            revert with 0, 17
                        s = (10^18 * arg3 * arg5 / arg1 / 2) + 1
                        t = 10^18 * arg3 * arg5 / arg1
                        while s < t:
                            if not s:
                                revert with 0, 18
                            if 10^18 * arg3 * arg5 / arg1 / s > !s:
                                revert with 0, 17
                            s = (10^18 * arg3 * arg5 / arg1 / s) + s / 2
                            t = s
                            continue 
                        if t and 0 > -1 / t:
                            revert with 0, 17
                    if arg3 and arg6 > -1 / arg3:
                        revert with 0, 17
                    if arg3 * arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 and 0 > -1 / arg2:
                        revert with 0, 17
                    if 0 < 10^18 * arg3 * arg6:
                        revert with 0, 17
                    if arg8 and arg9 > -1 / arg8:
                        revert with 0, 17
                    if arg8 * arg9 and arg4 > -1 / arg8 * arg9:
                        revert with 0, 17
                    if arg8 * arg9 * arg4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg8 and arg6 > -1 / arg8:
                        revert with 0, 17
                    if arg8 * arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * arg8 * arg6 / 10000 > !(10^18 * arg8 * arg9 * arg4 / 100 * 10^6):
                        revert with 0, 17
                    if (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6) > -1:
                        revert with 0, 17
                    if not (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6):
                        revert with 0, 18
                    return 0, -1 * 10^18 * arg3 * arg6 / (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6)
                if 10^18 * arg3 * arg5 / arg1 <= 3:
                    if arg3 and arg6 > -1 / arg3:
                        revert with 0, 17
                    if arg3 * arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^18 * arg3 * arg5 / arg1:
                        if arg2 and 0 > -1 / arg2:
                            revert with 0, 17
                        if 0 < 10^18 * arg3 * arg6:
                            revert with 0, 17
                        if arg8 and arg9 > -1 / arg8:
                            revert with 0, 17
                        if arg8 * arg9 and arg4 > -1 / arg8 * arg9:
                            revert with 0, 17
                        if arg8 * arg9 * arg4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if arg8 and arg6 > -1 / arg8:
                            revert with 0, 17
                        if arg8 * arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * arg8 * arg6 / 10000 > !(10^18 * arg8 * arg9 * arg4 / 100 * 10^6):
                            revert with 0, 17
                        if (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6) > -1:
                            revert with 0, 17
                        if not (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6):
                            revert with 0, 18
                        return 0, -1 * 10^18 * arg3 * arg6 / (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6)
                    if arg2 and 1 > -1 / arg2:
                        revert with 0, 17
                    if arg2 < 10^18 * arg3 * arg6:
                        revert with 0, 17
                    if arg8 and arg9 > -1 / arg8:
                        revert with 0, 17
                    if arg8 * arg9 and arg4 > -1 / arg8 * arg9:
                        revert with 0, 17
                    if arg8 * arg9 * arg4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg8 and arg6 > -1 / arg8:
                        revert with 0, 17
                    if arg8 * arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * arg8 * arg6 / 10000 > !(10^18 * arg8 * arg9 * arg4 / 100 * 10^6):
                        revert with 0, 17
                    if (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6) > -2:
                        revert with 0, 17
                    if not (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6) + 1:
                        revert with 0, 18
                    return 0, arg2 - (10^18 * arg3 * arg6) / (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6) + 1
                if 1 > !(10^18 * arg3 * arg5 / arg1 / 2):
                    revert with 0, 17
                s = (10^18 * arg3 * arg5 / arg1 / 2) + 1
                t = 10^18 * arg3 * arg5 / arg1
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * arg3 * arg5 / arg1 / s > !s:
                        revert with 0, 17
                    s = (10^18 * arg3 * arg5 / arg1 / s) + s / 2
                    t = s
                    continue 
                if t and 1 > -1 / t:
                    revert with 0, 17
                if arg3 and arg6 > -1 / arg3:
                    revert with 0, 17
                if arg3 * arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if arg2 and t > -1 / arg2:
                    revert with 0, 17
                if arg2 * t < 10^18 * arg3 * arg6:
                    revert with 0, 17
                if arg8 and arg9 > -1 / arg8:
                    revert with 0, 17
                if arg8 * arg9 and arg4 > -1 / arg8 * arg9:
                    revert with 0, 17
                if arg8 * arg9 * arg4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if arg8 and arg6 > -1 / arg8:
                    revert with 0, 17
                if arg8 * arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * arg8 * arg6 / 10000 > !(10^18 * arg8 * arg9 * arg4 / 100 * 10^6):
                    revert with 0, 17
                if (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6) > !t:
                    revert with 0, 17
                if not (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6) + t:
                    revert with 0, 18
                return 0, (arg2 * t) - (10^18 * arg3 * arg6) / (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6) + t
            if 1 > !(10^18 * arg4 * arg6 / arg2 / 2):
                revert with 0, 17
            s = (10^18 * arg4 * arg6 / arg2 / 2) + 1
            t = 10^18 * arg4 * arg6 / arg2
            while s < t:
                if not s:
                    revert with 0, 18
                if 10^18 * arg4 * arg6 / arg2 / s > !s:
                    revert with 0, 17
                s = (10^18 * arg4 * arg6 / arg2 / s) + s / 2
                t = s
                continue 
            if 10^18 * arg3 * arg5 / arg1 <= 3:
                if not 10^18 * arg3 * arg5 / arg1:
                    if False and t > 0:
                        revert with 0, 17
                    if arg3 and arg6 > -1 / arg3:
                        revert with 0, 17
                    if arg3 * arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 and 0 > -1 / arg2:
                        revert with 0, 17
                    if 0 < 10^18 * arg3 * arg6:
                        revert with 0, 17
                    if arg8 and arg9 > -1 / arg8:
                        revert with 0, 17
                    if arg8 * arg9 and arg4 > -1 / arg8 * arg9:
                        revert with 0, 17
                    if arg8 * arg9 * arg4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg8 and arg6 > -1 / arg8:
                        revert with 0, 17
                    if arg8 * arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * arg8 * arg6 / 10000 > !(10^18 * arg8 * arg9 * arg4 / 100 * 10^6):
                        revert with 0, 17
                    if (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6) > -1:
                        revert with 0, 17
                    if not (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6):
                        revert with 0, 18
                    return 0, -1 * 10^18 * arg3 * arg6 / (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6)
                if t > -1:
                    revert with 0, 17
                if arg3 and arg6 > -1 / arg3:
                    revert with 0, 17
                if arg3 * arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if arg2 and t > -1 / arg2:
                    revert with 0, 17
                if arg2 * t < 10^18 * arg3 * arg6:
                    revert with 0, 17
                if arg8 and arg9 > -1 / arg8:
                    revert with 0, 17
                if arg8 * arg9 and arg4 > -1 / arg8 * arg9:
                    revert with 0, 17
                if arg8 * arg9 * arg4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if arg8 and arg6 > -1 / arg8:
                    revert with 0, 17
                if arg8 * arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * arg8 * arg6 / 10000 > !(10^18 * arg8 * arg9 * arg4 / 100 * 10^6):
                    revert with 0, 17
                if (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6) > !t:
                    revert with 0, 17
                if not (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6) + t:
                    revert with 0, 18
                return 0, (arg2 * t) - (10^18 * arg3 * arg6) / (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6) + t
            if 1 > !(10^18 * arg3 * arg5 / arg1 / 2):
                revert with 0, 17
            s = (10^18 * arg3 * arg5 / arg1 / 2) + 1
            u = 10^18 * arg3 * arg5 / arg1
            while s < u:
                if not s:
                    revert with 0, 18
                if 10^18 * arg3 * arg5 / arg1 / s > !s:
                    revert with 0, 17
                s = (10^18 * arg3 * arg5 / arg1 / s) + s / 2
                u = s
                continue 
            if u and t > -1 / u:
                revert with 0, 17
            if arg3 and arg6 > -1 / arg3:
                revert with 0, 17
            if arg3 * arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if arg2 and u * t > -1 / arg2:
                revert with 0, 17
            if arg2 * u * t < 10^18 * arg3 * arg6:
                revert with 0, 17
            if arg8 and arg9 > -1 / arg8:
                revert with 0, 17
            if arg8 * arg9 and arg4 > -1 / arg8 * arg9:
                revert with 0, 17
            if arg8 * arg9 * arg4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if arg8 and arg6 > -1 / arg8:
                revert with 0, 17
            if arg8 * arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * arg8 * arg6 / 10000 > !(10^18 * arg8 * arg9 * arg4 / 100 * 10^6):
                revert with 0, 17
            if (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6) > !(u * t):
                revert with 0, 17
            if not (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6) + (u * t):
                revert with 0, 18
            return 0, 
                   (arg2 * u * t) - (10^18 * arg3 * arg6) / (10^18 * arg8 * arg6 / 10000) + (10^18 * arg8 * arg9 * arg4 / 100 * 10^6) + (u * t)
        if arg1 > 0x154484932d2e725a5bbca17a3aba173d3d5:
            revert with 0, 17
        if not arg3:
            revert with 0, 18
        if not arg5:
            revert with 0, 18
        if arg2 > 0x154484932d2e725a5bbca17a3aba173d3d5:
            revert with 0, 17
        if not arg4:
            revert with 0, 18
        if not arg6:
            revert with 0, 18
        if 1000000000000000000 * 10^18 * arg2 / arg4 / arg6 <= 3:
            if not 1000000000000000000 * 10^18 * arg2 / arg4 / arg6:
                if 1000000000000000000 * 10^18 * arg1 / arg3 / arg5 > 3:
                    if 1 > !(1000000000000000000 * 10^18 * arg1 / arg3 / arg5 / 2):
                        revert with 0, 17
                    s = (1000000000000000000 * 10^18 * arg1 / arg3 / arg5 / 2) + 1
                    t = 1000000000000000000 * 10^18 * arg1 / arg3 / arg5
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if 1000000000000000000 * 10^18 * arg1 / arg3 / arg5 / s > !s:
                            revert with 0, 17
                        s = (1000000000000000000 * 10^18 * arg1 / arg3 / arg5 / s) + s / 2
                        t = s
                        continue 
                    if t and 0 > -1 / t:
                        revert with 0, 17
                if arg3 and arg6 > -1 / arg3:
                    revert with 0, 17
                if arg3 * arg6 and 0 > -1 / arg3 * arg6:
                    revert with 0, 17
                if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * arg2 < 0:
                    revert with 0, 17
                if arg8 and arg9 > -1 / arg8:
                    revert with 0, 17
                if arg8 * arg9 and arg4 > -1 / arg8 * arg9:
                    revert with 0, 17
                if arg8 * arg9 * arg4 / 100 * 10^6 and 0 > -1 / arg8 * arg9 * arg4 / 100 * 10^6:
                    revert with 0, 17
                if arg8 and arg6 > -1 / arg8:
                    revert with 0, 17
                if arg8 * arg6 / 10000 and 0 > -1 / arg8 * arg6 / 10000:
                    revert with 0, 17
                return 0, 10^18 * arg2 / 10^18
            if 1000000000000000000 * 10^18 * arg1 / arg3 / arg5 <= 3:
                if arg3 and arg6 > -1 / arg3:
                    revert with 0, 17
                if arg3 * arg6 and 0 > -1 / arg3 * arg6:
                    revert with 0, 17
                if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * arg2 < 0:
                    revert with 0, 17
                if arg8 and arg9 > -1 / arg8:
                    revert with 0, 17
                if arg8 * arg9 and arg4 > -1 / arg8 * arg9:
                    revert with 0, 17
                if arg8 * arg9 * arg4 / 100 * 10^6 and 0 > -1 / arg8 * arg9 * arg4 / 100 * 10^6:
                    revert with 0, 17
                if arg8 and arg6 > -1 / arg8:
                    revert with 0, 17
                if arg8 * arg6 / 10000 and 0 > -1 / arg8 * arg6 / 10000:
                    revert with 0, 17
                return 0, 10^18 * arg2 / 10^18
            if 1 > !(1000000000000000000 * 10^18 * arg1 / arg3 / arg5 / 2):
                revert with 0, 17
            s = (1000000000000000000 * 10^18 * arg1 / arg3 / arg5 / 2) + 1
            t = 1000000000000000000 * 10^18 * arg1 / arg3 / arg5
            while s < t:
                if not s:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 * arg1 / arg3 / arg5 / s > !s:
                    revert with 0, 17
                s = (1000000000000000000 * 10^18 * arg1 / arg3 / arg5 / s) + s / 2
                t = s
                continue 
            if t and 1 > -1 / t:
                revert with 0, 17
            if arg3 and arg6 > -1 / arg3:
                revert with 0, 17
            if arg3 * arg6 and t / 10^18 > -1 / arg3 * arg6:
                revert with 0, 17
            if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * arg2 < arg3 * arg6 * t / 10^18:
                revert with 0, 17
            if arg8 and arg9 > -1 / arg8:
                revert with 0, 17
            if arg8 * arg9 and arg4 > -1 / arg8 * arg9:
                revert with 0, 17
            if arg8 * arg9 * arg4 / 100 * 10^6 and t / 10^18 > -1 / arg8 * arg9 * arg4 / 100 * 10^6:
                revert with 0, 17
            if arg8 and arg6 > -1 / arg8:
                revert with 0, 17
            if arg8 * arg6 / 10000 and t / 10^18 > -1 / arg8 * arg6 / 10000:
                revert with 0, 17
            if arg8 * arg6 / 10000 * t / 10^18 > !(arg8 * arg9 * arg4 / 100 * 10^6 * t / 10^18):
                revert with 0, 17
            if 10^18 > !((arg8 * arg6 / 10000 * t / 10^18) + (arg8 * arg9 * arg4 / 100 * 10^6 * t / 10^18)):
                revert with 0, 17
            if not (arg8 * arg6 / 10000 * t / 10^18) + (arg8 * arg9 * arg4 / 100 * 10^6 * t / 10^18) + 10^18:
                revert with 0, 18
            return 0, 
                   (10^18 * arg2) - (arg3 * arg6 * t / 10^18) / (arg8 * arg6 / 10000 * t / 10^18) + (arg8 * arg9 * arg4 / 100 * 10^6 * t / 10^18) + 10^18
        if 1 > !(1000000000000000000 * 10^18 * arg2 / arg4 / arg6 / 2):
            revert with 0, 17
        s = (1000000000000000000 * 10^18 * arg2 / arg4 / arg6 / 2) + 1
        t = 1000000000000000000 * 10^18 * arg2 / arg4 / arg6
        while s < t:
            if not s:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * arg2 / arg4 / arg6 / s > !s:
                revert with 0, 17
            s = (1000000000000000000 * 10^18 * arg2 / arg4 / arg6 / s) + s / 2
            t = s
            continue 
        if 1000000000000000000 * 10^18 * arg1 / arg3 / arg5 <= 3:
            if not 1000000000000000000 * 10^18 * arg1 / arg3 / arg5:
                if False and t > 0:
                    revert with 0, 17
                if arg3 and arg6 > -1 / arg3:
                    revert with 0, 17
                if arg3 * arg6 and 0 > -1 / arg3 * arg6:
                    revert with 0, 17
                if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * arg2 < 0:
                    revert with 0, 17
                if arg8 and arg9 > -1 / arg8:
                    revert with 0, 17
                if arg8 * arg9 and arg4 > -1 / arg8 * arg9:
                    revert with 0, 17
                if arg8 * arg9 * arg4 / 100 * 10^6 and 0 > -1 / arg8 * arg9 * arg4 / 100 * 10^6:
                    revert with 0, 17
                if arg8 and arg6 > -1 / arg8:
                    revert with 0, 17
                if arg8 * arg6 / 10000 and 0 > -1 / arg8 * arg6 / 10000:
                    revert with 0, 17
                return 0, 10^18 * arg2 / 10^18
            if t > -1:
                revert with 0, 17
            if arg3 and arg6 > -1 / arg3:
                revert with 0, 17
            if arg3 * arg6 and t / 10^18 > -1 / arg3 * arg6:
                revert with 0, 17
            if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * arg2 < arg3 * arg6 * t / 10^18:
                revert with 0, 17
            if arg8 and arg9 > -1 / arg8:
                revert with 0, 17
            if arg8 * arg9 and arg4 > -1 / arg8 * arg9:
                revert with 0, 17
            if arg8 * arg9 * arg4 / 100 * 10^6 and t / 10^18 > -1 / arg8 * arg9 * arg4 / 100 * 10^6:
                revert with 0, 17
            if arg8 and arg6 > -1 / arg8:
                revert with 0, 17
            if arg8 * arg6 / 10000 and t / 10^18 > -1 / arg8 * arg6 / 10000:
                revert with 0, 17
            if arg8 * arg6 / 10000 * t / 10^18 > !(arg8 * arg9 * arg4 / 100 * 10^6 * t / 10^18):
                revert with 0, 17
            if 10^18 > !((arg8 * arg6 / 10000 * t / 10^18) + (arg8 * arg9 * arg4 / 100 * 10^6 * t / 10^18)):
                revert with 0, 17
            if not (arg8 * arg6 / 10000 * t / 10^18) + (arg8 * arg9 * arg4 / 100 * 10^6 * t / 10^18) + 10^18:
                revert with 0, 18
            return 0, 
                   (10^18 * arg2) - (arg3 * arg6 * t / 10^18) / (arg8 * arg6 / 10000 * t / 10^18) + (arg8 * arg9 * arg4 / 100 * 10^6 * t / 10^18) + 10^18
        if 1 > !(1000000000000000000 * 10^18 * arg1 / arg3 / arg5 / 2):
            revert with 0, 17
        s = (1000000000000000000 * 10^18 * arg1 / arg3 / arg5 / 2) + 1
        u = 1000000000000000000 * 10^18 * arg1 / arg3 / arg5
        while s < u:
            if not s:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * arg1 / arg3 / arg5 / s > !s:
                revert with 0, 17
            s = (1000000000000000000 * 10^18 * arg1 / arg3 / arg5 / s) + s / 2
            u = s
            continue 
        if u and t > -1 / u:
            revert with 0, 17
        if arg3 and arg6 > -1 / arg3:
            revert with 0, 17
        if arg3 * arg6 and u * t / 10^18 > -1 / arg3 * arg6:
            revert with 0, 17
        if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * arg2 < arg3 * arg6 * u * t / 10^18:
            revert with 0, 17
        if arg8 and arg9 > -1 / arg8:
            revert with 0, 17
        if arg8 * arg9 and arg4 > -1 / arg8 * arg9:
            revert with 0, 17
        if arg8 * arg9 * arg4 / 100 * 10^6 and u * t / 10^18 > -1 / arg8 * arg9 * arg4 / 100 * 10^6:
            revert with 0, 17
        if arg8 and arg6 > -1 / arg8:
            revert with 0, 17
        if arg8 * arg6 / 10000 and u * t / 10^18 > -1 / arg8 * arg6 / 10000:
            revert with 0, 17
        if arg8 * arg6 / 10000 * u * t / 10^18 > !(arg8 * arg9 * arg4 / 100 * 10^6 * u * t / 10^18):
            revert with 0, 17
        if 10^18 > !((arg8 * arg6 / 10000 * u * t / 10^18) + (arg8 * arg9 * arg4 / 100 * 10^6 * u * t / 10^18)):
            revert with 0, 17
        if not (arg8 * arg6 / 10000 * u * t / 10^18) + (arg8 * arg9 * arg4 / 100 * 10^6 * u * t / 10^18) + 10^18:
            revert with 0, 18
        return 0, 
               (10^18 * arg2) - (arg3 * arg6 * u * t / 10^18) / (arg8 * arg6 / 10000 * u * t / 10^18) + (arg8 * arg9 * arg4 / 100 * 10^6 * u * t / 10^18) + 10^18
    if arg5 and arg6 > -1 / arg5:
        revert with 0, 17
    if arg4 and arg3 > -1 / arg4:
        revert with 0, 17
    if arg1 and arg2 > -1 / arg1:
        revert with 0, 17
    if arg4 * arg3 / 10^18 and arg1 * arg2 / 10^18 > -1 / arg4 * arg3 / 10^18:
        revert with 0, 17
    if arg5 * arg6 / 1000000000000000000 * 10^18 <= arg4 * arg3 / 10^18 * arg1 * arg2 / 10^18:
        if arg4 and arg1 > -1 / arg4:
            revert with 0, 17
        if arg4 * arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not arg5:
            revert with 0, 18
        if arg3 and arg2 > -1 / arg3:
            revert with 0, 17
        if arg3 * arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not arg6:
            revert with 0, 18
        if 10^18 * arg3 * arg2 / arg6 <= 3:
            if not 10^18 * arg3 * arg2 / arg6:
                if 10^18 * arg4 * arg1 / arg5 > 3:
                    if 1 > !(10^18 * arg4 * arg1 / arg5 / 2):
                        revert with 0, 17
                    s = (10^18 * arg4 * arg1 / arg5 / 2) + 1
                    t = 10^18 * arg4 * arg1 / arg5
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if 10^18 * arg4 * arg1 / arg5 / s > !s:
                            revert with 0, 17
                        s = (10^18 * arg4 * arg1 / arg5 / s) + s / 2
                        t = s
                        continue 
                    if t and 0 > -1 / t:
                        revert with 0, 17
                if arg4 and arg2 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if arg6 and 0 > -1 / arg6:
                    revert with 0, 17
                if 0 < 10^18 * arg4 * arg2:
                    revert with 0, 17
                if arg8 and arg7 > -1 / arg8:
                    revert with 0, 17
                if arg8 * arg7 and arg3 > -1 / arg8 * arg7:
                    revert with 0, 17
                if arg8 * arg7 * arg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if arg8 and arg2 > -1 / arg8:
                    revert with 0, 17
                if arg8 * arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * arg8 * arg2 / 10000 > !(10^18 * arg8 * arg7 * arg3 / 100 * 10^6):
                    revert with 0, 17
                if (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6) > -1:
                    revert with 0, 17
                if not (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6):
                    revert with 0, 18
                return 1, -1 * 10^18 * arg4 * arg2 / (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6)
            if 10^18 * arg4 * arg1 / arg5 <= 3:
                if arg4 and arg2 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not 10^18 * arg4 * arg1 / arg5:
                    if arg6 and 0 > -1 / arg6:
                        revert with 0, 17
                    if 0 < 10^18 * arg4 * arg2:
                        revert with 0, 17
                    if arg8 and arg7 > -1 / arg8:
                        revert with 0, 17
                    if arg8 * arg7 and arg3 > -1 / arg8 * arg7:
                        revert with 0, 17
                    if arg8 * arg7 * arg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg8 and arg2 > -1 / arg8:
                        revert with 0, 17
                    if arg8 * arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * arg8 * arg2 / 10000 > !(10^18 * arg8 * arg7 * arg3 / 100 * 10^6):
                        revert with 0, 17
                    if (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6) > -1:
                        revert with 0, 17
                    if not (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6):
                        revert with 0, 18
                    return 1, -1 * 10^18 * arg4 * arg2 / (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6)
                if arg6 and 1 > -1 / arg6:
                    revert with 0, 17
                if arg6 < 10^18 * arg4 * arg2:
                    revert with 0, 17
                if arg8 and arg7 > -1 / arg8:
                    revert with 0, 17
                if arg8 * arg7 and arg3 > -1 / arg8 * arg7:
                    revert with 0, 17
                if arg8 * arg7 * arg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if arg8 and arg2 > -1 / arg8:
                    revert with 0, 17
                if arg8 * arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * arg8 * arg2 / 10000 > !(10^18 * arg8 * arg7 * arg3 / 100 * 10^6):
                    revert with 0, 17
                if (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6) > -2:
                    revert with 0, 17
                if not (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6) + 1:
                    revert with 0, 18
                return 1, arg6 - (10^18 * arg4 * arg2) / (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6) + 1
            if 1 > !(10^18 * arg4 * arg1 / arg5 / 2):
                revert with 0, 17
            s = (10^18 * arg4 * arg1 / arg5 / 2) + 1
            t = 10^18 * arg4 * arg1 / arg5
            while s < t:
                if not s:
                    revert with 0, 18
                if 10^18 * arg4 * arg1 / arg5 / s > !s:
                    revert with 0, 17
                s = (10^18 * arg4 * arg1 / arg5 / s) + s / 2
                t = s
                continue 
            if t and 1 > -1 / t:
                revert with 0, 17
            if arg4 and arg2 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if arg6 and t > -1 / arg6:
                revert with 0, 17
            if arg6 * t < 10^18 * arg4 * arg2:
                revert with 0, 17
            if arg8 and arg7 > -1 / arg8:
                revert with 0, 17
            if arg8 * arg7 and arg3 > -1 / arg8 * arg7:
                revert with 0, 17
            if arg8 * arg7 * arg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if arg8 and arg2 > -1 / arg8:
                revert with 0, 17
            if arg8 * arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * arg8 * arg2 / 10000 > !(10^18 * arg8 * arg7 * arg3 / 100 * 10^6):
                revert with 0, 17
            if (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6) > !t:
                revert with 0, 17
            if not (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6) + t:
                revert with 0, 18
            return 1, (arg6 * t) - (10^18 * arg4 * arg2) / (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6) + t
        if 1 > !(10^18 * arg3 * arg2 / arg6 / 2):
            revert with 0, 17
        s = (10^18 * arg3 * arg2 / arg6 / 2) + 1
        t = 10^18 * arg3 * arg2 / arg6
        while s < t:
            if not s:
                revert with 0, 18
            if 10^18 * arg3 * arg2 / arg6 / s > !s:
                revert with 0, 17
            s = (10^18 * arg3 * arg2 / arg6 / s) + s / 2
            t = s
            continue 
        if 10^18 * arg4 * arg1 / arg5 <= 3:
            if not 10^18 * arg4 * arg1 / arg5:
                if False and t > 0:
                    revert with 0, 17
                if arg4 and arg2 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if arg6 and 0 > -1 / arg6:
                    revert with 0, 17
                if 0 < 10^18 * arg4 * arg2:
                    revert with 0, 17
                if arg8 and arg7 > -1 / arg8:
                    revert with 0, 17
                if arg8 * arg7 and arg3 > -1 / arg8 * arg7:
                    revert with 0, 17
                if arg8 * arg7 * arg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if arg8 and arg2 > -1 / arg8:
                    revert with 0, 17
                if arg8 * arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * arg8 * arg2 / 10000 > !(10^18 * arg8 * arg7 * arg3 / 100 * 10^6):
                    revert with 0, 17
                if (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6) > -1:
                    revert with 0, 17
                if not (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6):
                    revert with 0, 18
                return 1, -1 * 10^18 * arg4 * arg2 / (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6)
            if t > -1:
                revert with 0, 17
            if arg4 and arg2 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if arg6 and t > -1 / arg6:
                revert with 0, 17
            if arg6 * t < 10^18 * arg4 * arg2:
                revert with 0, 17
            if arg8 and arg7 > -1 / arg8:
                revert with 0, 17
            if arg8 * arg7 and arg3 > -1 / arg8 * arg7:
                revert with 0, 17
            if arg8 * arg7 * arg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if arg8 and arg2 > -1 / arg8:
                revert with 0, 17
            if arg8 * arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * arg8 * arg2 / 10000 > !(10^18 * arg8 * arg7 * arg3 / 100 * 10^6):
                revert with 0, 17
            if (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6) > !t:
                revert with 0, 17
            if not (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6) + t:
                revert with 0, 18
            return 1, (arg6 * t) - (10^18 * arg4 * arg2) / (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6) + t
        if 1 > !(10^18 * arg4 * arg1 / arg5 / 2):
            revert with 0, 17
        s = (10^18 * arg4 * arg1 / arg5 / 2) + 1
        u = 10^18 * arg4 * arg1 / arg5
        while s < u:
            if not s:
                revert with 0, 18
            if 10^18 * arg4 * arg1 / arg5 / s > !s:
                revert with 0, 17
            s = (10^18 * arg4 * arg1 / arg5 / s) + s / 2
            u = s
            continue 
        if u and t > -1 / u:
            revert with 0, 17
        if arg4 and arg2 > -1 / arg4:
            revert with 0, 17
        if arg4 * arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if arg6 and u * t > -1 / arg6:
            revert with 0, 17
        if arg6 * u * t < 10^18 * arg4 * arg2:
            revert with 0, 17
        if arg8 and arg7 > -1 / arg8:
            revert with 0, 17
        if arg8 * arg7 and arg3 > -1 / arg8 * arg7:
            revert with 0, 17
        if arg8 * arg7 * arg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if arg8 and arg2 > -1 / arg8:
            revert with 0, 17
        if arg8 * arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * arg8 * arg2 / 10000 > !(10^18 * arg8 * arg7 * arg3 / 100 * 10^6):
            revert with 0, 17
        if (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6) > !(u * t):
            revert with 0, 17
        if not (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6) + (u * t):
            revert with 0, 18
        return 1, 
               (arg6 * u * t) - (10^18 * arg4 * arg2) / (10^18 * arg8 * arg2 / 10000) + (10^18 * arg8 * arg7 * arg3 / 100 * 10^6) + (u * t)
    if arg5 > 0x154484932d2e725a5bbca17a3aba173d3d5:
        revert with 0, 17
    if not arg4:
        revert with 0, 18
    if not arg1:
        revert with 0, 18
    if arg6 > 0x154484932d2e725a5bbca17a3aba173d3d5:
        revert with 0, 17
    if not arg3:
        revert with 0, 18
    if not arg2:
        revert with 0, 18
    if 1000000000000000000 * 10^18 * arg6 / arg3 / arg2 <= 3:
        if not 1000000000000000000 * 10^18 * arg6 / arg3 / arg2:
            if 1000000000000000000 * 10^18 * arg5 / arg4 / arg1 > 3:
                if 1 > !(1000000000000000000 * 10^18 * arg5 / arg4 / arg1 / 2):
                    revert with 0, 17
                s = (1000000000000000000 * 10^18 * arg5 / arg4 / arg1 / 2) + 1
                t = 1000000000000000000 * 10^18 * arg5 / arg4 / arg1
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 1000000000000000000 * 10^18 * arg5 / arg4 / arg1 / s > !s:
                        revert with 0, 17
                    s = (1000000000000000000 * 10^18 * arg5 / arg4 / arg1 / s) + s / 2
                    t = s
                    continue 
                if t and 0 > -1 / t:
                    revert with 0, 17
            if arg4 and arg2 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg2 and 0 > -1 / arg4 * arg2:
                revert with 0, 17
            if arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * arg6 < 0:
                revert with 0, 17
            if arg8 and arg7 > -1 / arg8:
                revert with 0, 17
            if arg8 * arg7 and arg3 > -1 / arg8 * arg7:
                revert with 0, 17
            if arg8 * arg7 * arg3 / 100 * 10^6 and 0 > -1 / arg8 * arg7 * arg3 / 100 * 10^6:
                revert with 0, 17
            if arg8 and arg2 > -1 / arg8:
                revert with 0, 17
            if arg8 * arg2 / 10000 and 0 > -1 / arg8 * arg2 / 10000:
                revert with 0, 17
            return 1, 10^18 * arg6 / 10^18
        if 1000000000000000000 * 10^18 * arg5 / arg4 / arg1 <= 3:
            if arg4 and arg2 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg2 and 0 > -1 / arg4 * arg2:
                revert with 0, 17
            if arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * arg6 < 0:
                revert with 0, 17
            if arg8 and arg7 > -1 / arg8:
                revert with 0, 17
            if arg8 * arg7 and arg3 > -1 / arg8 * arg7:
                revert with 0, 17
            if arg8 * arg7 * arg3 / 100 * 10^6 and 0 > -1 / arg8 * arg7 * arg3 / 100 * 10^6:
                revert with 0, 17
            if arg8 and arg2 > -1 / arg8:
                revert with 0, 17
            if arg8 * arg2 / 10000 and 0 > -1 / arg8 * arg2 / 10000:
                revert with 0, 17
            return 1, 10^18 * arg6 / 10^18
        if 1 > !(1000000000000000000 * 10^18 * arg5 / arg4 / arg1 / 2):
            revert with 0, 17
        s = (1000000000000000000 * 10^18 * arg5 / arg4 / arg1 / 2) + 1
        t = 1000000000000000000 * 10^18 * arg5 / arg4 / arg1
        while s < t:
            if not s:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * arg5 / arg4 / arg1 / s > !s:
                revert with 0, 17
            s = (1000000000000000000 * 10^18 * arg5 / arg4 / arg1 / s) + s / 2
            t = s
            continue 
        if t and 1 > -1 / t:
            revert with 0, 17
        if arg4 and arg2 > -1 / arg4:
            revert with 0, 17
        if arg4 * arg2 and t / 10^18 > -1 / arg4 * arg2:
            revert with 0, 17
        if arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * arg6 < arg4 * arg2 * t / 10^18:
            revert with 0, 17
        if arg8 and arg7 > -1 / arg8:
            revert with 0, 17
        if arg8 * arg7 and arg3 > -1 / arg8 * arg7:
            revert with 0, 17
        if arg8 * arg7 * arg3 / 100 * 10^6 and t / 10^18 > -1 / arg8 * arg7 * arg3 / 100 * 10^6:
            revert with 0, 17
        if arg8 and arg2 > -1 / arg8:
            revert with 0, 17
        if arg8 * arg2 / 10000 and t / 10^18 > -1 / arg8 * arg2 / 10000:
            revert with 0, 17
        if arg8 * arg2 / 10000 * t / 10^18 > !(arg8 * arg7 * arg3 / 100 * 10^6 * t / 10^18):
            revert with 0, 17
        if 10^18 > !((arg8 * arg2 / 10000 * t / 10^18) + (arg8 * arg7 * arg3 / 100 * 10^6 * t / 10^18)):
            revert with 0, 17
        if not (arg8 * arg2 / 10000 * t / 10^18) + (arg8 * arg7 * arg3 / 100 * 10^6 * t / 10^18) + 10^18:
            revert with 0, 18
        return 1, 
               (10^18 * arg6) - (arg4 * arg2 * t / 10^18) / (arg8 * arg2 / 10000 * t / 10^18) + (arg8 * arg7 * arg3 / 100 * 10^6 * t / 10^18) + 10^18
    if 1 > !(1000000000000000000 * 10^18 * arg6 / arg3 / arg2 / 2):
        revert with 0, 17
    s = (1000000000000000000 * 10^18 * arg6 / arg3 / arg2 / 2) + 1
    t = 1000000000000000000 * 10^18 * arg6 / arg3 / arg2
    while s < t:
        if not s:
            revert with 0, 18
        if 1000000000000000000 * 10^18 * arg6 / arg3 / arg2 / s > !s:
            revert with 0, 17
        s = (1000000000000000000 * 10^18 * arg6 / arg3 / arg2 / s) + s / 2
        t = s
        continue 
    if 1000000000000000000 * 10^18 * arg5 / arg4 / arg1 <= 3:
        if not 1000000000000000000 * 10^18 * arg5 / arg4 / arg1:
            if False and t > 0:
                revert with 0, 17
            if arg4 and arg2 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg2 and 0 > -1 / arg4 * arg2:
                revert with 0, 17
            if arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * arg6 < 0:
                revert with 0, 17
            if arg8 and arg7 > -1 / arg8:
                revert with 0, 17
            if arg8 * arg7 and arg3 > -1 / arg8 * arg7:
                revert with 0, 17
            if arg8 * arg7 * arg3 / 100 * 10^6 and 0 > -1 / arg8 * arg7 * arg3 / 100 * 10^6:
                revert with 0, 17
            if arg8 and arg2 > -1 / arg8:
                revert with 0, 17
            if arg8 * arg2 / 10000 and 0 > -1 / arg8 * arg2 / 10000:
                revert with 0, 17
            return 1, 10^18 * arg6 / 10^18
        if t > -1:
            revert with 0, 17
        if arg4 and arg2 > -1 / arg4:
            revert with 0, 17
        if arg4 * arg2 and t / 10^18 > -1 / arg4 * arg2:
            revert with 0, 17
        if arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * arg6 < arg4 * arg2 * t / 10^18:
            revert with 0, 17
        if arg8 and arg7 > -1 / arg8:
            revert with 0, 17
        if arg8 * arg7 and arg3 > -1 / arg8 * arg7:
            revert with 0, 17
        if arg8 * arg7 * arg3 / 100 * 10^6 and t / 10^18 > -1 / arg8 * arg7 * arg3 / 100 * 10^6:
            revert with 0, 17
        if arg8 and arg2 > -1 / arg8:
            revert with 0, 17
        if arg8 * arg2 / 10000 and t / 10^18 > -1 / arg8 * arg2 / 10000:
            revert with 0, 17
        if arg8 * arg2 / 10000 * t / 10^18 > !(arg8 * arg7 * arg3 / 100 * 10^6 * t / 10^18):
            revert with 0, 17
        if 10^18 > !((arg8 * arg2 / 10000 * t / 10^18) + (arg8 * arg7 * arg3 / 100 * 10^6 * t / 10^18)):
            revert with 0, 17
        if not (arg8 * arg2 / 10000 * t / 10^18) + (arg8 * arg7 * arg3 / 100 * 10^6 * t / 10^18) + 10^18:
            revert with 0, 18
        return 1, 
               (10^18 * arg6) - (arg4 * arg2 * t / 10^18) / (arg8 * arg2 / 10000 * t / 10^18) + (arg8 * arg7 * arg3 / 100 * 10^6 * t / 10^18) + 10^18
    if 1 > !(1000000000000000000 * 10^18 * arg5 / arg4 / arg1 / 2):
        revert with 0, 17
    s = (1000000000000000000 * 10^18 * arg5 / arg4 / arg1 / 2) + 1
    u = 1000000000000000000 * 10^18 * arg5 / arg4 / arg1
    while s < u:
        if not s:
            revert with 0, 18
        if 1000000000000000000 * 10^18 * arg5 / arg4 / arg1 / s > !s:
            revert with 0, 17
        s = (1000000000000000000 * 10^18 * arg5 / arg4 / arg1 / s) + s / 2
        u = s
        continue 
    if u and t > -1 / u:
        revert with 0, 17
    if arg4 and arg2 > -1 / arg4:
        revert with 0, 17
    if arg4 * arg2 and u * t / 10^18 > -1 / arg4 * arg2:
        revert with 0, 17
    if arg6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * arg6 < arg4 * arg2 * u * t / 10^18:
        revert with 0, 17
    if arg8 and arg7 > -1 / arg8:
        revert with 0, 17
    if arg8 * arg7 and arg3 > -1 / arg8 * arg7:
        revert with 0, 17
    if arg8 * arg7 * arg3 / 100 * 10^6 and u * t / 10^18 > -1 / arg8 * arg7 * arg3 / 100 * 10^6:
        revert with 0, 17
    if arg8 and arg2 > -1 / arg8:
        revert with 0, 17
    if arg8 * arg2 / 10000 and u * t / 10^18 > -1 / arg8 * arg2 / 10000:
        revert with 0, 17
    if arg8 * arg2 / 10000 * u * t / 10^18 > !(arg8 * arg7 * arg3 / 100 * 10^6 * u * t / 10^18):
        revert with 0, 17
    if 10^18 > !((arg8 * arg2 / 10000 * u * t / 10^18) + (arg8 * arg7 * arg3 / 100 * 10^6 * u * t / 10^18)):
        revert with 0, 17
    if not (arg8 * arg2 / 10000 * u * t / 10^18) + (arg8 * arg7 * arg3 / 100 * 10^6 * u * t / 10^18) + 10^18:
        revert with 0, 18
    return 1, 
           (10^18 * arg6) - (arg4 * arg2 * u * t / 10^18) / (arg8 * arg2 / 10000 * u * t / 10^18) + (arg8 * arg7 * arg3 / 100 * 10^6 * u * t / 10^18) + 10^18
}

function sub_27e97abc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg1))
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    staticcall address(arg2).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    staticcall address(arg2).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor2[ext_call.return_data[12 len 20]]:
        if stor2[ext_call.return_data[12 len 20]]:
            if ext_call.return_data[12 len 20] != stor0:
                if ext_call.return_data[12 len 20] != stor0:
                    if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and 10^18 * ext_call.return_data[32] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[32] <= ext_call.return_data[0] * ext_call.return_data[32]:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] <= 3:
                            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]:
                                if ext_call.return_data[32] and 0 > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if 0 < 10^18 * ext_call.return_data[32]:
                                    revert with 0, 17
                                if -1 * 10^18 * ext_call.return_data[32] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 17
                                if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]:
                                    revert with 0, 17
                                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 0, 17
                                if 10000 * ext_call.return_data[32] > !(-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                    revert with 0, 18
                                if ext_call.return_data[0] and -1 * 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 0, 17
                                if ext_call.return_data[32] < -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[32] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[32] / 10^18):
                                    revert with 0, 17
                                if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                    revert with 0, 18
                                if 1 > !(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])):
                                    revert with 0, 17
                                if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                    return 0
                                if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                    revert with 0, 17
                                return ((-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                            if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] < 10^18 * ext_call.return_data[32]:
                                revert with 0, 17
                            if -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / -999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                                revert with 0, 17
                            if -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                                revert with 0, 17
                            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if 10000 * ext_call.return_data[32] > !(-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[32]) + (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if ext_call.return_data[0] and -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if ext_call.return_data[32] < -999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[32] - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                                revert with 0, 17
                            if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if 1 > !(10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                                revert with 0, 17
                            if -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                                return 0
                            if -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                                revert with 0, 17
                            return ((-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                        if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2):
                            revert with 0, 17
                        s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2) + 1
                        t = 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]
                        while s < t:
                            if not s:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s > !s:
                                revert with 0, 17
                            s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s) + s / 2
                            t = s
                            continue 
                        if 10^18 > !t:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if ext_call.return_data[32] and t > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * t < 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if not t + 10^18:
                            revert with 0, 18
                        if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                            revert with 0, 17
                        if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[0] and (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                            revert with 0, 17
                        if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return (((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] <= 3:
                        if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]:
                            if False and ext_call.return_data[32] > 0:
                                revert with 0, 17
                            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if 10^18 * ext_call.return_data[32] < 0:
                                revert with 0, 17
                            if 10^18 * ext_call.return_data[32] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]:
                                revert with 0, 17
                            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if 10000 * ext_call.return_data[32] > !(10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if ext_call.return_data[0] and 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if ext_call.return_data[32] < 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18):
                                revert with 0, 17
                            if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if 1 > !(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])):
                                revert with 0, 17
                            if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                return 0
                            if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                revert with 0, 17
                            return ((10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                        if ext_call.return_data[32] > -1:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] < ext_call.return_data[32]:
                            revert with 0, 17
                        if 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / 999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                            revert with 0, 17
                        if 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !(999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[0] and 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < 999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[32] - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                            revert with 0, 17
                        if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return ((999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                    if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2):
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2) + 1
                    t = 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s > !s:
                            revert with 0, 17
                        s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s) + s / 2
                        t = s
                        continue 
                    if 10^18 > !t:
                        revert with 0, 17
                    if t and ext_call.return_data[32] > -1 / t:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] < t * ext_call.return_data[32]:
                        revert with 0, 17
                    if not t + 10^18:
                        revert with 0, 18
                    if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18):
                        revert with 0, 17
                    if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return (((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[32] and ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * ext_call.return_data[32] >= ext_call.return_data[0] * ext_call.return_data[0]:
                    if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[32] <= ext_call.return_data[32] * ext_call.return_data[0]:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not ext_call.return_data[32]:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] <= 3:
                            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                                if ext_call.return_data[32] and 0 > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if 0 < 10^18 * ext_call.return_data[0]:
                                    revert with 0, 17
                                if -1 * 10^18 * ext_call.return_data[0] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18:
                                    revert with 0, 17
                                if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]:
                                    revert with 0, 17
                                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 0, 17
                                if 10000 * ext_call.return_data[0] > !(-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                    revert with 0, 18
                                if ext_call.return_data[0] and -1 * 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 0, 17
                                if ext_call.return_data[32] < -1 * 10^18 * ext_call.return_data[0] / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[0] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[0] / 10^18):
                                    revert with 0, 17
                                if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                    revert with 0, 18
                                if 1 > !(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])):
                                    revert with 0, 17
                                if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                    return 0
                                if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                    revert with 0, 17
                                return ((-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                            if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] < 10^18 * ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                                revert with 0, 17
                            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if 10000 * ext_call.return_data[0] > !(ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if ext_call.return_data[0] and ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if ext_call.return_data[32] < ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[32] - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                                revert with 0, 17
                            if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if 1 > !(10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                                revert with 0, 17
                            if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                                return 0
                            if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                                revert with 0, 17
                            return ((ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                        if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2):
                            revert with 0, 17
                        s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2) + 1
                        t = 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]
                        while s < t:
                            if not s:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s > !s:
                                revert with 0, 17
                            s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s) + s / 2
                            t = s
                            continue 
                        if 10^18 > !t:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if ext_call.return_data[32] and t > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * t < 10^18 * ext_call.return_data[0]:
                            revert with 0, 17
                        if not t + 10^18:
                            revert with 0, 18
                        if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                            revert with 0, 17
                        if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[0] > !((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[0]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[0] and (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                            revert with 0, 17
                        if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return (((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] <= 3:
                        if not 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                            if False and ext_call.return_data[0] > 0:
                                revert with 0, 17
                            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if 10^18 * ext_call.return_data[32] < 0:
                                revert with 0, 17
                            if 10^18 * ext_call.return_data[32] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]:
                                revert with 0, 17
                            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if 10000 * ext_call.return_data[0] > !(10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if ext_call.return_data[0] and 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if ext_call.return_data[32] < 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18):
                                revert with 0, 17
                            if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if 1 > !(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])):
                                revert with 0, 17
                            if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                return 0
                            if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                revert with 0, 17
                            return ((10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                        if ext_call.return_data[0] > -1:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] < ext_call.return_data[0]:
                            revert with 0, 17
                        if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                            revert with 0, 17
                        if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[0] > !((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                            revert with 0, 17
                        if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return (((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                    if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2):
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2) + 1
                    t = 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s > !s:
                            revert with 0, 17
                        s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s) + s / 2
                        t = s
                        continue 
                    if 10^18 > !t:
                        revert with 0, 17
                    if t and ext_call.return_data[0] > -1 / t:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] < t * ext_call.return_data[0]:
                        revert with 0, 17
                    if not t + 10^18:
                        revert with 0, 18
                    if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
                        revert with 0, 17
                    if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return (((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[32] * ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[32]:
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] <= 3:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if 0 < 10^18 * ext_call.return_data[32]:
                                revert with 0, 17
                            if -1 * 10^18 * ext_call.return_data[32] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]:
                                revert with 0, 17
                            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if 10000 * ext_call.return_data[32] > !(-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if ext_call.return_data[32] and -1 * 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if ext_call.return_data[0] < -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[32] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[32] / 10^18):
                                revert with 0, 17
                            if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if 1 > !(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])):
                                revert with 0, 17
                            if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                return 0
                            if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                revert with 0, 17
                            return ((-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] < 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !(ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[32] and ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[0] < ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                            revert with 0, 17
                        if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return ((ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                    if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2):
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2) + 1
                    t = 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s > !s:
                            revert with 0, 17
                        s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s) + s / 2
                        t = s
                        continue 
                    if 10^18 > !t:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if ext_call.return_data[0] and t > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * t < 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if not t + 10^18:
                        revert with 0, 18
                    if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[32] and (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                        revert with 0, 17
                    if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return (((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] <= 3:
                    if not 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        if False and ext_call.return_data[32] > 0:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[0] < 0:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[0] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !(10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 17
                        if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return ((10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                    if ext_call.return_data[32] > -1:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] < ext_call.return_data[32]:
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                        revert with 0, 17
                    if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return (((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2):
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2) + 1
                t = 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s > !s:
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s) + s / 2
                    t = s
                    continue 
                if 10^18 > !t:
                    revert with 0, 17
                if t and ext_call.return_data[32] > -1 / t:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] < t * ext_call.return_data[32]:
                    revert with 0, 17
                if not t + 10^18:
                    revert with 0, 18
                if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[32] > !((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 17
                if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    return 0
                if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    revert with 0, 17
                return (((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
            if ext_call.return_data[12 len 20] != stor0:
                if ext_call.return_data[32] and ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] >= ext_call.return_data[32] * ext_call.return_data[32]:
                    if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[32] * ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[32]:
                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not ext_call.return_data[32]:
                            revert with 0, 18
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] <= 3:
                            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 < 10^18 * ext_call.return_data[32]:
                                    revert with 0, 17
                                if -1 * 10^18 * ext_call.return_data[32] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 17
                                if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]:
                                    revert with 0, 17
                                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 0, 17
                                if 10000 * ext_call.return_data[32] > !(-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                    revert with 0, 18
                                if ext_call.return_data[32] and -1 * 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 0, 17
                                if ext_call.return_data[0] < -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[32] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[32] / 10^18):
                                    revert with 0, 17
                                if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                    revert with 0, 18
                                if 1 > !(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])):
                                    revert with 0, 17
                                if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                    return 0
                                if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                    revert with 0, 17
                                return ((-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] < 10^18 * ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                                revert with 0, 17
                            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if 10000 * ext_call.return_data[32] > !(ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[32]) + (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if ext_call.return_data[32] and ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                                revert with 0, 17
                            if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if 1 > !(10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                                revert with 0, 17
                            if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                                return 0
                            if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                                revert with 0, 17
                            return ((ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                        if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2):
                            revert with 0, 17
                        s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2) + 1
                        t = 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]
                        while s < t:
                            if not s:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s > !s:
                                revert with 0, 17
                            s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s) + s / 2
                            t = s
                            continue 
                        if 10^18 > !t:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if ext_call.return_data[0] and t > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * t < 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if not t + 10^18:
                            revert with 0, 18
                        if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                            revert with 0, 17
                        if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[32] and (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[0] < (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                            revert with 0, 17
                        if ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                            revert with 0, 17
                        if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return (((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] <= 3:
                        if not 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                            if False and ext_call.return_data[32] > 0:
                                revert with 0, 17
                            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if 10^18 * ext_call.return_data[0] < 0:
                                revert with 0, 17
                            if 10^18 * ext_call.return_data[0] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / 10^18 * ext_call.return_data[0] / 10^18:
                                revert with 0, 17
                            if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]:
                                revert with 0, 17
                            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if 10000 * ext_call.return_data[32] > !(10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / 10^18:
                                revert with 0, 17
                            if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18):
                                revert with 0, 17
                            if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if 1 > !(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])):
                                revert with 0, 17
                            if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                return 0
                            if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                revert with 0, 17
                            return ((10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                        if ext_call.return_data[32] > -1:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[0] < ext_call.return_data[32]:
                            revert with 0, 17
                        if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                            revert with 0, 17
                        if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                            revert with 0, 17
                        if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return (((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                    if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2):
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2) + 1
                    t = 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s > !s:
                            revert with 0, 17
                        s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s) + s / 2
                        t = s
                        continue 
                    if 10^18 > !t:
                        revert with 0, 17
                    if t and ext_call.return_data[32] > -1 / t:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] < t * ext_call.return_data[32]:
                        revert with 0, 17
                    if not t + 10^18:
                        revert with 0, 18
                    if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
                        revert with 0, 17
                    if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return (((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[32] <= ext_call.return_data[32] * ext_call.return_data[0]:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] <= 3:
                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                            if ext_call.return_data[32] and 0 > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if 0 < 10^18 * ext_call.return_data[0]:
                                revert with 0, 17
                            if -1 * 10^18 * ext_call.return_data[0] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18:
                                revert with 0, 17
                            if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]:
                                revert with 0, 17
                            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if 10000 * ext_call.return_data[0] > !(-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if ext_call.return_data[0] and -1 * 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if ext_call.return_data[32] < -1 * 10^18 * ext_call.return_data[0] / 10^18:
                                revert with 0, 17
                            if ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[0] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[0] / 10^18):
                                revert with 0, 17
                            if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if 1 > !(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])):
                                revert with 0, 17
                            if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                return 0
                            if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                revert with 0, 17
                            return ((-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                        if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] < 10^18 * ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[0] > !(ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[0] and ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[32] - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                            revert with 0, 17
                        if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return ((ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                    if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2):
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2) + 1
                    t = 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s > !s:
                            revert with 0, 17
                        s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s) + s / 2
                        t = s
                        continue 
                    if 10^18 > !t:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if ext_call.return_data[32] and t > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * t < 10^18 * ext_call.return_data[0]:
                        revert with 0, 17
                    if not t + 10^18:
                        revert with 0, 18
                    if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                        revert with 0, 17
                    if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[0] and (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                        revert with 0, 17
                    if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return (((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] <= 3:
                    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                        if False and ext_call.return_data[0] > 0:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] < 0:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[0] > !(10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[0] and 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 17
                        if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return ((10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                    if ext_call.return_data[0] > -1:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] < ext_call.return_data[0]:
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                        revert with 0, 17
                    if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return (((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2):
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2) + 1
                t = 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s > !s:
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s) + s / 2
                    t = s
                    continue 
                if 10^18 > !t:
                    revert with 0, 17
                if t and ext_call.return_data[0] > -1 / t:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] < t * ext_call.return_data[0]:
                    revert with 0, 17
                if not t + 10^18:
                    revert with 0, 18
                if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 17
                if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    return 0
                if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    revert with 0, 17
                return (((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
            if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * ext_call.return_data[0] <= ext_call.return_data[32] * ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 3:
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if 0 < 10^18 * ext_call.return_data[0]:
                            revert with 0, 17
                        if -1 * 10^18 * ext_call.return_data[0] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[0] > !(-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[32] and -1 * 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[0] < -1 * 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[0] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 17
                        if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return ((-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                    if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] < 10^18 * ext_call.return_data[0]:
                        revert with 0, 17
                    if -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / -999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                        revert with 0, 17
                    if -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !(-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[32] and -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < -999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[0] - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                        revert with 0, 17
                    if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return ((-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2):
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2) + 1
                t = 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s > !s:
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s) + s / 2
                    t = s
                    continue 
                if 10^18 > !t:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if ext_call.return_data[0] and t > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * t < 10^18 * ext_call.return_data[0]:
                    revert with 0, 17
                if not t + 10^18:
                    revert with 0, 18
                if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if ext_call.return_data[32] and (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 17
                if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                    revert with 0, 17
                if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    return 0
                if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    revert with 0, 17
                return (((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 3:
                if not 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    if False and ext_call.return_data[0] > 0:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] < 0:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !(10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 17
                    if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return ((10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                if ext_call.return_data[0] > -1:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / 999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !(999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if ext_call.return_data[32] and 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < 999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 17
                if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                    revert with 0, 17
                if 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                    return 0
                if 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                    revert with 0, 17
                return ((999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
            if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2):
                revert with 0, 17
            s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2) + 1
            t = 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
            while s < t:
                if not s:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s > !s:
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s) + s / 2
                t = s
                continue 
            if 10^18 > !t:
                revert with 0, 17
            if t and ext_call.return_data[0] > -1 / t:
                revert with 0, 17
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * ext_call.return_data[0] < t * ext_call.return_data[0]:
                revert with 0, 17
            if not t + 10^18:
                revert with 0, 18
            if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                revert with 0, 17
            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[0] > !((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                revert with 0, 17
            if not (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                revert with 0, 18
            if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 17
            if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                revert with 0, 17
            if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                return 0
            if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                revert with 0, 17
            return (((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
        if ext_call.return_data[12 len 20] != stor0:
            if ext_call.return_data[12 len 20] != stor0:
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and 10^18 * ext_call.return_data[32] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[32] * ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[32]:
                    if ext_call.return_data[0] * ext_call.return_data[32] <= ext_call.return_data[0] * ext_call.return_data[32]:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] <= 3:
                            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]:
                                if ext_call.return_data[32] and 0 > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if 0 < 10^18 * ext_call.return_data[32]:
                                    revert with 0, 17
                                if -1 * 10^18 * ext_call.return_data[32] / 10^18 and 9970 > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 17
                                if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 and ext_call.return_data[0] > -1 / 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 0, 17
                                if 10000 * ext_call.return_data[32] > !(9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                                    revert with 0, 18
                                if ext_call.return_data[0] and -1 * 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 0, 17
                                if ext_call.return_data[32] < -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[32] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[32] / 10^18):
                                    revert with 0, 17
                                if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                    revert with 0, 18
                                if 1 > !(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])):
                                    revert with 0, 17
                                if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18) <= (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                    return 0
                                if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18) < (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                    revert with 0, 17
                                return ((9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + -(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                            if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] < 10^18 * ext_call.return_data[32]:
                                revert with 0, 17
                            if -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 and 9970 > -1 / -999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                                revert with 0, 17
                            if 9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 and ext_call.return_data[0] > -1 / 9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if 10000 * ext_call.return_data[32] > !(9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[32]) + (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                                revert with 0, 18
                            if ext_call.return_data[0] and -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if ext_call.return_data[32] < -999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[32] - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                                revert with 0, 17
                            if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if 1 > !(10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                                revert with 0, 17
                            if 9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001) <= (10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                                return 0
                            if 9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001) < (10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                                revert with 0, 17
                            return ((9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) + -(10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                        if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2):
                            revert with 0, 17
                        s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2) + 1
                        t = 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]
                        while s < t:
                            if not s:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s > !s:
                                revert with 0, 17
                            s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s) + s / 2
                            t = s
                            continue 
                        if 10^18 > !t:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if ext_call.return_data[32] and t > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * t < 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if not t + 10^18:
                            revert with 0, 18
                        if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and 9970 > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                            revert with 0, 17
                        if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and ext_call.return_data[0] > -1 / 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !(9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                            revert with 0, 18
                        if ext_call.return_data[0] and (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                            revert with 0, 17
                        if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) <= (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) < (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return ((9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + -(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] <= 3:
                        if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]:
                            if False and ext_call.return_data[32] > 0:
                                revert with 0, 17
                            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if 10^18 * ext_call.return_data[32] < 0:
                                revert with 0, 17
                            if 10^18 * ext_call.return_data[32] / 10^18 and 9970 > -1 / 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if 9970 * 10^18 * ext_call.return_data[32] / 10^18 and ext_call.return_data[0] > -1 / 9970 * 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if 10000 * ext_call.return_data[32] > !(9970 * 10^18 * ext_call.return_data[32] / 10^18):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18):
                                revert with 0, 18
                            if ext_call.return_data[0] and 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if ext_call.return_data[32] < 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18):
                                revert with 0, 17
                            if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if 1 > !(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])):
                                revert with 0, 17
                            if 9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18) <= (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                return 0
                            if 9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18) < (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                revert with 0, 17
                            return ((9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + -(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                        if ext_call.return_data[32] > -1:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] < ext_call.return_data[32]:
                            revert with 0, 17
                        if 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 and 9970 > -1 / 999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                            revert with 0, 17
                        if 9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 and ext_call.return_data[0] > -1 / 9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !(9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                            revert with 0, 18
                        if ext_call.return_data[0] and 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < 999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[32] - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                            revert with 0, 17
                        if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if 9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001) <= (10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if 9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001) < (10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return ((9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) + -(10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                    if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2):
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2) + 1
                    t = 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s > !s:
                            revert with 0, 17
                        s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s) + s / 2
                        t = s
                        continue 
                    if 10^18 > !t:
                        revert with 0, 17
                    if t and ext_call.return_data[32] > -1 / t:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] < t * ext_call.return_data[32]:
                        revert with 0, 17
                    if not t + 10^18:
                        revert with 0, 18
                    if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 and 9970 > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 and ext_call.return_data[0] > -1 / 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !(9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18):
                        revert with 0, 18
                    if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18):
                        revert with 0, 17
                    if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return ((9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18)) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                if ext_call.return_data[0] * ext_call.return_data[32] <= ext_call.return_data[0] * ext_call.return_data[32]:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] <= 3:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]:
                            if ext_call.return_data[32] and 0 > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if 0 < 10^18 * ext_call.return_data[32]:
                                revert with 0, 17
                            if -1 * 10^18 * ext_call.return_data[32] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]:
                                revert with 0, 17
                            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if 10000 * ext_call.return_data[32] > !(-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if ext_call.return_data[0] and -1 * 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if ext_call.return_data[32] < -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[32] / 10^18) and 9970 > -1 / ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[32] / 10^18):
                                revert with 0, 17
                            if not (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                                revert with 0, 18
                            if 1 > !(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)):
                                revert with 0, 17
                            if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                                return 0
                            if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                                revert with 0, 17
                            return ((-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) - 1)
                        if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] < 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / -999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                            revert with 0, 17
                        if -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !(-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[0] and -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < -999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[32] - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[32] - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                            revert with 0, 17
                        if not (9970 * ext_call.return_data[32]) - (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001)):
                            revert with 0, 17
                        if -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) + 1:
                            return 0
                        if -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) + 1:
                            revert with 0, 17
                        return ((-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) - 1)
                    if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2):
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2) + 1
                    t = 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s > !s:
                            revert with 0, 17
                        s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s) + s / 2
                        t = s
                        continue 
                    if 10^18 > !t:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if ext_call.return_data[32] and t > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * t < 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if not t + 10^18:
                        revert with 0, 18
                    if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[0] and (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) and 9970 > -1 / ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)):
                        revert with 0, 17
                    if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + 1:
                        return 0
                    if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + 1:
                        revert with 0, 17
                    return (((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) - 1)
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] <= 3:
                    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]:
                        if False and ext_call.return_data[32] > 0:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] < 0:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !(10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[0] and 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18) and 9970 > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 17
                        if not (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)):
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                            return 0
                        if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                            revert with 0, 17
                        return ((10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) - 1)
                    if ext_call.return_data[32] > -1:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] < ext_call.return_data[32]:
                        revert with 0, 17
                    if 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / 999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                        revert with 0, 17
                    if 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !(999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[0] and 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < 999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[32] - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[32] - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[32]) - (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001)):
                        revert with 0, 17
                    if 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) + 1:
                        return 0
                    if 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) + 1:
                        revert with 0, 17
                    return ((999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) - 1)
                if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2):
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2) + 1
                t = 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s > !s:
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s) + s / 2
                    t = s
                    continue 
                if 10^18 > !t:
                    revert with 0, 17
                if t and ext_call.return_data[32] > -1 / t:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] < t * ext_call.return_data[32]:
                    revert with 0, 17
                if not t + 10^18:
                    revert with 0, 18
                if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[32] > !((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18) and 9970 > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18)):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18)) + 1:
                    return 0
                if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18)) + 1:
                    revert with 0, 17
                return (((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18)) - 1)
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * ext_call.return_data[32] >= ext_call.return_data[0] * ext_call.return_data[0]:
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[32] <= ext_call.return_data[32] * ext_call.return_data[0]:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] <= 3:
                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                            if ext_call.return_data[32] and 0 > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if 0 < 10^18 * ext_call.return_data[0]:
                                revert with 0, 17
                            if -1 * 10^18 * ext_call.return_data[0] / 10^18 and 9970 > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18:
                                revert with 0, 17
                            if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18:
                                revert with 0, 17
                            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if 10000 * ext_call.return_data[0] > !(9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                                revert with 0, 18
                            if ext_call.return_data[0] and -1 * 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if ext_call.return_data[32] < -1 * 10^18 * ext_call.return_data[0] / 10^18:
                                revert with 0, 17
                            if ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[0] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[0] / 10^18):
                                revert with 0, 17
                            if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if 1 > !(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])):
                                revert with 0, 17
                            if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18) <= (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                return 0
                            if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18) < (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                revert with 0, 17
                            return ((9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + -(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                        if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] < 10^18 * ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 and 9970 > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                            revert with 0, 17
                        if 9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 and ext_call.return_data[32] > -1 / 9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[0] > !(9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[0]) + (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                            revert with 0, 18
                        if ext_call.return_data[0] and ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[32] - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                            revert with 0, 17
                        if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if 9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001) <= (10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if 9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001) < (10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return ((9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)) + -(10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                    if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2):
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2) + 1
                    t = 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s > !s:
                            revert with 0, 17
                        s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s) + s / 2
                        t = s
                        continue 
                    if 10^18 > !t:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if ext_call.return_data[32] and t > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * t < 10^18 * ext_call.return_data[0]:
                        revert with 0, 17
                    if not t + 10^18:
                        revert with 0, 18
                    if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and 9970 > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                        revert with 0, 17
                    if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and ext_call.return_data[32] > -1 / 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !(9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                        revert with 0, 18
                    if ext_call.return_data[0] and (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                        revert with 0, 17
                    if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) <= (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) < (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return ((9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + -(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] <= 3:
                    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                        if False and ext_call.return_data[0] > 0:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] < 0:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] / 10^18 and 9970 > -1 / 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if 9970 * 10^18 * ext_call.return_data[32] / 10^18 and ext_call.return_data[32] > -1 / 9970 * 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[0] > !(9970 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 18
                        if ext_call.return_data[0] and 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 17
                        if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if 9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18) <= (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if 9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18) < (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return ((9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + -(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                    if ext_call.return_data[0] > -1:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] < ext_call.return_data[0]:
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 and 9970 > -1 / (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                        revert with 0, 17
                    if 9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 and ext_call.return_data[32] > -1 / 9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !(9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                        revert with 0, 18
                    if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                        revert with 0, 17
                    if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if 9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if 9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return ((9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2):
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2) + 1
                t = 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s > !s:
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s) + s / 2
                    t = s
                    continue 
                if 10^18 > !t:
                    revert with 0, 17
                if t and ext_call.return_data[0] > -1 / t:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] < t * ext_call.return_data[0]:
                    revert with 0, 17
                if not t + 10^18:
                    revert with 0, 18
                if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 and 9970 > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 and ext_call.return_data[32] > -1 / 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !(9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 18
                if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 17
                if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                    revert with 0, 17
                if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    return 0
                if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    revert with 0, 17
                return ((9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
            if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] * ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[32]:
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] <= 3:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if 0 < 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if -1 * 10^18 * ext_call.return_data[32] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !(-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[32] and -1 * 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[0] < -1 * 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[32] / 10^18) and 9970 > -1 / ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 17
                        if not (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)):
                            revert with 0, 17
                        if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                            return 0
                        if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                            revert with 0, 17
                        return ((-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) - 1)
                    if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] < 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !(ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[32] and ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[0] - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001) and 9970 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)):
                        revert with 0, 17
                    if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)) + 1:
                        return 0
                    if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)) + 1:
                        revert with 0, 17
                    return ((ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)) - 1)
                if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2):
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2) + 1
                t = 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s > !s:
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s) + s / 2
                    t = s
                    continue 
                if 10^18 > !t:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if ext_call.return_data[0] and t > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * t < 10^18 * ext_call.return_data[32]:
                    revert with 0, 17
                if not t + 10^18:
                    revert with 0, 18
                if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[32] > !((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[32]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if ext_call.return_data[32] and (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) and 9970 > -1 / ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)):
                    revert with 0, 17
                if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + 1:
                    return 0
                if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + 1:
                    revert with 0, 17
                return (((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) - 1)
            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                revert with 0, 17
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] <= 3:
                if not 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    if False and ext_call.return_data[32] > 0:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] < 0:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !(10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18) and 9970 > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)):
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                        return 0
                    if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                        revert with 0, 17
                    return ((10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) - 1)
                if ext_call.return_data[32] > -1:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] < ext_call.return_data[32]:
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[32] > !((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)) + 1:
                    return 0
                if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)) + 1:
                    revert with 0, 17
                return (((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)) - 1)
            if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2):
                revert with 0, 17
            s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2) + 1
            t = 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]
            while s < t:
                if not s:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s > !s:
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s) + s / 2
                t = s
                continue 
            if 10^18 > !t:
                revert with 0, 17
            if t and ext_call.return_data[32] > -1 / t:
                revert with 0, 17
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * ext_call.return_data[0] < t * ext_call.return_data[32]:
                revert with 0, 17
            if not t + 10^18:
                revert with 0, 18
            if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
                revert with 0, 17
            if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                revert with 0, 17
            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[32] > !((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                revert with 0, 17
            if not (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                revert with 0, 18
            if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18) and 9970 > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
                revert with 0, 17
            if not (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)):
                revert with 0, 17
            if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)) + 1:
                return 0
            if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)) + 1:
                revert with 0, 17
            return (((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)) - 1)
        if ext_call.return_data[12 len 20] != stor0:
            if ext_call.return_data[32] and ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] >= ext_call.return_data[32] * ext_call.return_data[32]:
                if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[32] * ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[32]:
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] <= 3:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if 0 < 10^18 * ext_call.return_data[32]:
                                revert with 0, 17
                            if -1 * 10^18 * ext_call.return_data[32] / 10^18 and 9970 > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 and ext_call.return_data[0] > -1 / 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if 10000 * ext_call.return_data[32] > !(9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                                revert with 0, 18
                            if ext_call.return_data[32] and -1 * 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if ext_call.return_data[0] < -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[32] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[32] / 10^18):
                                revert with 0, 17
                            if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if 1 > !(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])):
                                revert with 0, 17
                            if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18) <= (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                return 0
                            if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18) < (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                revert with 0, 17
                            return ((9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + -(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] < 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 and 9970 > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                            revert with 0, 17
                        if 9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 and ext_call.return_data[0] > -1 / 9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !(9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                            revert with 0, 18
                        if ext_call.return_data[32] and ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[0] < ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                            revert with 0, 17
                        if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if 9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001) <= (10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if 9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001) < (10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return ((9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)) + -(10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                    if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2):
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2) + 1
                    t = 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s > !s:
                            revert with 0, 17
                        s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s) + s / 2
                        t = s
                        continue 
                    if 10^18 > !t:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if ext_call.return_data[0] and t > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * t < 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if not t + 10^18:
                        revert with 0, 18
                    if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and 9970 > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and ext_call.return_data[0] > -1 / 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !(9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                        revert with 0, 18
                    if ext_call.return_data[32] and (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                        revert with 0, 17
                    if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) <= (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) < (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return ((9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + -(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] <= 3:
                    if not 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        if False and ext_call.return_data[32] > 0:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[0] < 0:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[0] / 10^18 and 9970 > -1 / 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if 9970 * 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 9970 * 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !(9970 * 10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 18
                        if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 17
                        if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if 9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18) <= (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if 9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18) < (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return ((9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + -(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                    if ext_call.return_data[32] > -1:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] < ext_call.return_data[32]:
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 and 9970 > -1 / (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                        revert with 0, 17
                    if 9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 and ext_call.return_data[0] > -1 / 9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !(9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                        revert with 0, 18
                    if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                        revert with 0, 17
                    if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if 9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if 9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return ((9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2):
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2) + 1
                t = 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s > !s:
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s) + s / 2
                    t = s
                    continue 
                if 10^18 > !t:
                    revert with 0, 17
                if t and ext_call.return_data[32] > -1 / t:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] < t * ext_call.return_data[32]:
                    revert with 0, 17
                if not t + 10^18:
                    revert with 0, 18
                if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 and 9970 > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 and ext_call.return_data[0] > -1 / 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[32] > !(9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 18
                if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 17
                if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                    revert with 0, 17
                if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    return 0
                if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    revert with 0, 17
                return ((9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
            if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[32] <= ext_call.return_data[32] * ext_call.return_data[0]:
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] <= 3:
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        if ext_call.return_data[32] and 0 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if 0 < 10^18 * ext_call.return_data[0]:
                            revert with 0, 17
                        if -1 * 10^18 * ext_call.return_data[0] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[0] > !(-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[0] and -1 * 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < -1 * 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[0] / 10^18) and 9970 > -1 / ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 17
                        if not (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)):
                            revert with 0, 17
                        if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                            return 0
                        if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                            revert with 0, 17
                        return ((-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) - 1)
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] < 10^18 * ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !(ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[0] and ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[32] - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001) and 9970 > -1 / ext_call.return_data[32] - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)):
                        revert with 0, 17
                    if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)) + 1:
                        return 0
                    if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)) + 1:
                        revert with 0, 17
                    return ((ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)) - 1)
                if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2):
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2) + 1
                t = 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s > !s:
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s) + s / 2
                    t = s
                    continue 
                if 10^18 > !t:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if ext_call.return_data[32] and t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * t < 10^18 * ext_call.return_data[0]:
                    revert with 0, 17
                if not t + 10^18:
                    revert with 0, 18
                if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if ext_call.return_data[0] and (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[32] < (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) and 9970 > -1 / ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)):
                    revert with 0, 17
                if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + 1:
                    return 0
                if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + 1:
                    revert with 0, 17
                return (((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) - 1)
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] <= 3:
                if not 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                    if False and ext_call.return_data[0] > 0:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] < 0:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / 10^18 * ext_call.return_data[32] / 10^18:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !(10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[0] and 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < 10^18 * ext_call.return_data[32] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18) and 9970 > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)):
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                        return 0
                    if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                        revert with 0, 17
                    return ((10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) - 1)
                if ext_call.return_data[0] > -1:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] < ext_call.return_data[0]:
                    revert with 0, 17
                if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)) + 1:
                    return 0
                if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)) + 1:
                    revert with 0, 17
                return (((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)) - 1)
            if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2):
                revert with 0, 17
            s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2) + 1
            t = 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]
            while s < t:
                if not s:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s > !s:
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s) + s / 2
                t = s
                continue 
            if 10^18 > !t:
                revert with 0, 17
            if t and ext_call.return_data[0] > -1 / t:
                revert with 0, 17
            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * ext_call.return_data[32] < t * ext_call.return_data[0]:
                revert with 0, 17
            if not t + 10^18:
                revert with 0, 18
            if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                revert with 0, 17
            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[0] > !((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                revert with 0, 17
            if not (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                revert with 0, 18
            if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18) and 9970 > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 17
            if not (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)):
                revert with 0, 17
            if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)) + 1:
                return 0
            if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)) + 1:
                revert with 0, 17
            return (((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)) - 1)
        if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[32] >= ext_call.return_data[32] * ext_call.return_data[0]:
            if ext_call.return_data[32] * ext_call.return_data[0] <= ext_call.return_data[32] * ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 3:
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if 0 < 10^18 * ext_call.return_data[0]:
                            revert with 0, 17
                        if -1 * 10^18 * ext_call.return_data[0] / 10^18 and 9970 > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[0] > !(9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 18
                        if ext_call.return_data[32] and -1 * 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[0] < -1 * 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[0] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 17
                        if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18) <= (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18) < (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return ((9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + -(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                    if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] < 10^18 * ext_call.return_data[0]:
                        revert with 0, 17
                    if -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 and 9970 > -1 / -999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                        revert with 0, 17
                    if 9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 and ext_call.return_data[32] > -1 / 9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !(9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                        revert with 0, 18
                    if ext_call.return_data[32] and -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < -999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[0] - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                        revert with 0, 17
                    if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if 9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001) <= (10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if 9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001) < (10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return ((9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) + -(10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2):
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2) + 1
                t = 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s > !s:
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s) + s / 2
                    t = s
                    continue 
                if 10^18 > !t:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if ext_call.return_data[0] and t > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * t < 10^18 * ext_call.return_data[0]:
                    revert with 0, 17
                if not t + 10^18:
                    revert with 0, 18
                if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and 9970 > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and ext_call.return_data[32] > -1 / 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !(9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 18
                if ext_call.return_data[32] and (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 17
                if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                    revert with 0, 17
                if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) <= (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    return 0
                if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) < (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    revert with 0, 17
                return ((9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + -(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 3:
                if not 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    if False and ext_call.return_data[0] > 0:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] < 0:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] / 10^18 and 9970 > -1 / 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if 9970 * 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / 9970 * 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !(9970 * 10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 18
                    if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 17
                    if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if 9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18) <= (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if 9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18) < (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return ((9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + -(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                if ext_call.return_data[0] > -1:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 and 9970 > -1 / 999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if 9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 and ext_call.return_data[32] > -1 / 9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !(9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 18
                if ext_call.return_data[32] and 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < 999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 17
                if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                    revert with 0, 17
                if 9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001) <= (10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                    return 0
                if 9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001) < (10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                    revert with 0, 17
                return ((9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) + -(10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
            if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2):
                revert with 0, 17
            s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2) + 1
            t = 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
            while s < t:
                if not s:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s > !s:
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s) + s / 2
                t = s
                continue 
            if 10^18 > !t:
                revert with 0, 17
            if t and ext_call.return_data[0] > -1 / t:
                revert with 0, 17
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * ext_call.return_data[0] < t * ext_call.return_data[0]:
                revert with 0, 17
            if not t + 10^18:
                revert with 0, 18
            if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 and 9970 > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 and ext_call.return_data[32] > -1 / 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[0] > !(9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 17
            if not (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 18
            if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 17
            if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                revert with 0, 17
            if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                return 0
            if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                revert with 0, 17
            return ((9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18)) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
        if ext_call.return_data[32] * ext_call.return_data[0] <= ext_call.return_data[32] * ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 3:
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 < 10^18 * ext_call.return_data[0]:
                        revert with 0, 17
                    if -1 * 10^18 * ext_call.return_data[0] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !(-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[32] and -1 * 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < -1 * 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[0] / 10^18) and 9970 > -1 / ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)):
                        revert with 0, 17
                    if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                        return 0
                    if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                        revert with 0, 17
                    return ((-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) - 1)
                if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] < 10^18 * ext_call.return_data[0]:
                    revert with 0, 17
                if -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / -999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !(-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if ext_call.return_data[32] and -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < -999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[0] - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[0]) - (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001)):
                    revert with 0, 17
                if -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) + 1:
                    return 0
                if -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) + 1:
                    revert with 0, 17
                return ((-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) - 1)
            if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2):
                revert with 0, 17
            s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2) + 1
            t = 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
            while s < t:
                if not s:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s > !s:
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s) + s / 2
                t = s
                continue 
            if 10^18 > !t:
                revert with 0, 17
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if ext_call.return_data[0] and t > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * t < 10^18 * ext_call.return_data[0]:
                revert with 0, 17
            if not t + 10^18:
                revert with 0, 18
            if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                revert with 0, 17
            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[0] > !((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                revert with 0, 17
            if not (10000 * ext_call.return_data[0]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                revert with 0, 18
            if ext_call.return_data[32] and (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[0] < (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) and 9970 > -1 / ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 17
            if not (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)):
                revert with 0, 17
            if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + 1:
                return 0
            if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + 1:
                revert with 0, 17
            return (((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) - 1)
        if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 3:
            if not 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] < 0:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !(10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18) and 9970 > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)):
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                    return 0
                if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                    revert with 0, 17
                return ((10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) - 1)
            if ext_call.return_data[0] > -1:
                revert with 0, 17
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            if 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / 999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                revert with 0, 17
            if 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                revert with 0, 17
            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[0] > !(999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                revert with 0, 17
            if not (10000 * ext_call.return_data[0]) + (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                revert with 0, 18
            if ext_call.return_data[32] and 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[0] < 999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                revert with 0, 17
            if ext_call.return_data[0] - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[0] - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                revert with 0, 17
            if not (9970 * ext_call.return_data[0]) - (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001)):
                revert with 0, 17
            if 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) + 1:
                return 0
            if 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) + 1:
                revert with 0, 17
            return ((999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) - 1)
        if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2):
            revert with 0, 17
        s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2) + 1
        t = 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
        while s < t:
            if not s:
                revert with 0, 18
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s > !s:
                revert with 0, 17
            s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s) + s / 2
            t = s
            continue 
        if 10^18 > !t:
            revert with 0, 17
        if t and ext_call.return_data[0] > -1 / t:
            revert with 0, 17
        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] < t * ext_call.return_data[0]:
            revert with 0, 17
        if not t + 10^18:
            revert with 0, 18
        if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18:
            revert with 0, 17
        if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
            revert with 0, 17
        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if 10000 * ext_call.return_data[0] > !((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
            revert with 0, 17
        if not (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
            revert with 0, 18
        if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18:
            revert with 0, 17
        if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18) and 9970 > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18):
            revert with 0, 17
        if not (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18):
            revert with 0, 18
        if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18)):
            revert with 0, 17
        if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18)) + 1:
            return 0
        if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18)) + 1:
            revert with 0, 17
        return (((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18)) - 1)
    if stor2[ext_call.return_data[12 len 20]]:
        if ext_call.return_data[12 len 20] != stor0:
            if ext_call.return_data[12 len 20] != stor0:
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and 10^18 * ext_call.return_data[32] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[32] * ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[32]:
                    if ext_call.return_data[0] * ext_call.return_data[32] <= ext_call.return_data[0] * ext_call.return_data[32]:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] <= 3:
                            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]:
                                if ext_call.return_data[32] and 0 > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if 0 < 10^18 * ext_call.return_data[32]:
                                    revert with 0, 17
                                if -1 * 10^18 * ext_call.return_data[32] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 17
                                if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]:
                                    revert with 0, 17
                                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 0, 17
                                if 10000 * ext_call.return_data[32] > !(-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                    revert with 0, 17
                                if not (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                    revert with 0, 18
                                if ext_call.return_data[0] and -1 * 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 0, 17
                                if ext_call.return_data[32] < -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[32] / 10^18) and 9970 > -1 / ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[32] / 10^18):
                                    revert with 0, 17
                                if not (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                                    revert with 0, 18
                                if 1 > !(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)):
                                    revert with 0, 17
                                if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                                    return 0
                                if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                                    revert with 0, 17
                                return ((-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) - 1)
                            if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] < 10^18 * ext_call.return_data[32]:
                                revert with 0, 17
                            if -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / -999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                                revert with 0, 17
                            if -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                                revert with 0, 17
                            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if 10000 * ext_call.return_data[32] > !(-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[32]) + (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if ext_call.return_data[0] and -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if ext_call.return_data[32] < -999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[32] - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[32] - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                                revert with 0, 17
                            if not (9970 * ext_call.return_data[32]) - (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                                revert with 0, 18
                            if 1 > !(10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001)):
                                revert with 0, 17
                            if -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) + 1:
                                return 0
                            if -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) + 1:
                                revert with 0, 17
                            return ((-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) - 1)
                        if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2):
                            revert with 0, 17
                        s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2) + 1
                        t = 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]
                        while s < t:
                            if not s:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s > !s:
                                revert with 0, 17
                            s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s) + s / 2
                            t = s
                            continue 
                        if 10^18 > !t:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if ext_call.return_data[32] and t > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * t < 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if not t + 10^18:
                            revert with 0, 18
                        if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                            revert with 0, 17
                        if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[0] and (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) and 9970 > -1 / ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                            revert with 0, 17
                        if not (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)):
                            revert with 0, 17
                        if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + 1:
                            return 0
                        if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + 1:
                            revert with 0, 17
                        return (((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) - 1)
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] <= 3:
                        if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]:
                            if False and ext_call.return_data[32] > 0:
                                revert with 0, 17
                            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if 10^18 * ext_call.return_data[32] < 0:
                                revert with 0, 17
                            if 10^18 * ext_call.return_data[32] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]:
                                revert with 0, 17
                            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if 10000 * ext_call.return_data[32] > !(10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if ext_call.return_data[0] and 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if ext_call.return_data[32] < 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18) and 9970 > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18):
                                revert with 0, 17
                            if not (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18):
                                revert with 0, 18
                            if 1 > !(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)):
                                revert with 0, 17
                            if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                                return 0
                            if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                                revert with 0, 17
                            return ((10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) - 1)
                        if ext_call.return_data[32] > -1:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] < ext_call.return_data[32]:
                            revert with 0, 17
                        if 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / 999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                            revert with 0, 17
                        if 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !(999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[0] and 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < 999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[32] - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[32] - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                            revert with 0, 17
                        if not (9970 * ext_call.return_data[32]) - (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001)):
                            revert with 0, 17
                        if 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) + 1:
                            return 0
                        if 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) + 1:
                            revert with 0, 17
                        return ((999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) - 1)
                    if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2):
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2) + 1
                    t = 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s > !s:
                            revert with 0, 17
                        s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s) + s / 2
                        t = s
                        continue 
                    if 10^18 > !t:
                        revert with 0, 17
                    if t and ext_call.return_data[32] > -1 / t:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] < t * ext_call.return_data[32]:
                        revert with 0, 17
                    if not t + 10^18:
                        revert with 0, 18
                    if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18) and 9970 > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18)):
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18)) + 1:
                        return 0
                    if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18)) + 1:
                        revert with 0, 17
                    return (((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18)) - 1)
                if ext_call.return_data[0] * ext_call.return_data[32] <= ext_call.return_data[0] * ext_call.return_data[32]:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] <= 3:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]:
                            if ext_call.return_data[32] and 0 > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if 0 < 10^18 * ext_call.return_data[32]:
                                revert with 0, 17
                            if -1 * 10^18 * ext_call.return_data[32] / 10^18 and 9970 > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 and ext_call.return_data[0] > -1 / 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if 10000 * ext_call.return_data[32] > !(9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                                revert with 0, 18
                            if ext_call.return_data[0] and -1 * 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if ext_call.return_data[32] < -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[32] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[32] / 10^18):
                                revert with 0, 17
                            if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if 1 > !(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])):
                                revert with 0, 17
                            if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18) <= (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                return 0
                            if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18) < (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                                revert with 0, 17
                            return ((9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + -(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                        if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] < 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 and 9970 > -1 / -999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                            revert with 0, 17
                        if 9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 and ext_call.return_data[0] > -1 / 9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !(9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                            revert with 0, 18
                        if ext_call.return_data[0] and -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < -999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[32] - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                            revert with 0, 17
                        if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if 9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001) <= (10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if 9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001) < (10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return ((9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) + -(10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                    if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2):
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2) + 1
                    t = 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s > !s:
                            revert with 0, 17
                        s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s) + s / 2
                        t = s
                        continue 
                    if 10^18 > !t:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if ext_call.return_data[32] and t > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * t < 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if not t + 10^18:
                        revert with 0, 18
                    if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and 9970 > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and ext_call.return_data[0] > -1 / 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !(9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                        revert with 0, 18
                    if ext_call.return_data[0] and (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                        revert with 0, 17
                    if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) <= (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) < (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return ((9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + -(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] <= 3:
                    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]:
                        if False and ext_call.return_data[32] > 0:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] < 0:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] / 10^18 and 9970 > -1 / 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if 9970 * 10^18 * ext_call.return_data[32] / 10^18 and ext_call.return_data[0] > -1 / 9970 * 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !(9970 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 18
                        if ext_call.return_data[0] and 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 17
                        if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if 9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18) <= (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if 9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18) < (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return ((9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + -(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                    if ext_call.return_data[32] > -1:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] < ext_call.return_data[32]:
                        revert with 0, 17
                    if 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 and 9970 > -1 / 999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                        revert with 0, 17
                    if 9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 and ext_call.return_data[0] > -1 / 9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !(9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                        revert with 0, 18
                    if ext_call.return_data[0] and 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < 999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[32] - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                        revert with 0, 17
                    if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if 9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001) <= (10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if 9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001) < (10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return ((9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) + -(10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2):
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2) + 1
                t = 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s > !s:
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s) + s / 2
                    t = s
                    continue 
                if 10^18 > !t:
                    revert with 0, 17
                if t and ext_call.return_data[32] > -1 / t:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] < t * ext_call.return_data[32]:
                    revert with 0, 17
                if not t + 10^18:
                    revert with 0, 18
                if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 and 9970 > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 and ext_call.return_data[0] > -1 / 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[32] > !(9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 18
                if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 17
                if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                    revert with 0, 17
                if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    return 0
                if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    revert with 0, 17
                return ((9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18)) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * ext_call.return_data[32] >= ext_call.return_data[0] * ext_call.return_data[0]:
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[32] <= ext_call.return_data[32] * ext_call.return_data[0]:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] <= 3:
                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                            if ext_call.return_data[32] and 0 > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if 0 < 10^18 * ext_call.return_data[0]:
                                revert with 0, 17
                            if -1 * 10^18 * ext_call.return_data[0] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18:
                                revert with 0, 17
                            if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]:
                                revert with 0, 17
                            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if 10000 * ext_call.return_data[0] > !(-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if ext_call.return_data[0] and -1 * 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if ext_call.return_data[32] < -1 * 10^18 * ext_call.return_data[0] / 10^18:
                                revert with 0, 17
                            if ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[0] / 10^18) and 9970 > -1 / ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[0] / 10^18):
                                revert with 0, 17
                            if not (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                                revert with 0, 18
                            if 1 > !(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)):
                                revert with 0, 17
                            if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                                return 0
                            if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                                revert with 0, 17
                            return ((-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) - 1)
                        if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] < 10^18 * ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[0] > !(ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[0] and ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[32] - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001) and 9970 > -1 / ext_call.return_data[32] - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                            revert with 0, 17
                        if not (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)):
                            revert with 0, 17
                        if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)) + 1:
                            return 0
                        if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)) + 1:
                            revert with 0, 17
                        return ((ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)) - 1)
                    if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2):
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2) + 1
                    t = 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s > !s:
                            revert with 0, 17
                        s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s) + s / 2
                        t = s
                        continue 
                    if 10^18 > !t:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if ext_call.return_data[32] and t > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * t < 10^18 * ext_call.return_data[0]:
                        revert with 0, 17
                    if not t + 10^18:
                        revert with 0, 18
                    if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                        revert with 0, 17
                    if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[0] and (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) and 9970 > -1 / ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)):
                        revert with 0, 17
                    if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + 1:
                        return 0
                    if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + 1:
                        revert with 0, 17
                    return (((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) - 1)
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] <= 3:
                    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                        if False and ext_call.return_data[0] > 0:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] < 0:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[0] > !(10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[0] and 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18) and 9970 > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 17
                        if not (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)):
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                            return 0
                        if 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                            revert with 0, 17
                        return ((10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) - 1)
                    if ext_call.return_data[0] > -1:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] < ext_call.return_data[0]:
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)):
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)) + 1:
                        return 0
                    if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)) + 1:
                        revert with 0, 17
                    return (((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)) - 1)
                if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2):
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2) + 1
                t = 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s > !s:
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s) + s / 2
                    t = s
                    continue 
                if 10^18 > !t:
                    revert with 0, 17
                if t and ext_call.return_data[0] > -1 / t:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] < t * ext_call.return_data[0]:
                    revert with 0, 17
                if not t + 10^18:
                    revert with 0, 18
                if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18) and 9970 > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)) + 1:
                    return 0
                if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)) + 1:
                    revert with 0, 17
                return (((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)) - 1)
            if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] * ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[32]:
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] <= 3:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if 0 < 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if -1 * 10^18 * ext_call.return_data[32] / 10^18 and 9970 > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 and ext_call.return_data[0] > -1 / 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !(9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 18
                        if ext_call.return_data[32] and -1 * 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[0] < -1 * 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[32] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 17
                        if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18) <= (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18) < (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return ((9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + -(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                    if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] < 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 and 9970 > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                        revert with 0, 17
                    if 9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 and ext_call.return_data[0] > -1 / 9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !(9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                        revert with 0, 18
                    if ext_call.return_data[32] and ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[0] - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                        revert with 0, 17
                    if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if 9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001) <= (10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if 9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001) < (10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return ((9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)) + -(10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2):
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2) + 1
                t = 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s > !s:
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s) + s / 2
                    t = s
                    continue 
                if 10^18 > !t:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if ext_call.return_data[0] and t > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * t < 10^18 * ext_call.return_data[32]:
                    revert with 0, 17
                if not t + 10^18:
                    revert with 0, 18
                if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and 9970 > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and ext_call.return_data[0] > -1 / 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[32] > !(9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 18
                if ext_call.return_data[32] and (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 17
                if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                    revert with 0, 17
                if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) <= (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    return 0
                if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) < (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    revert with 0, 17
                return ((9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + -(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                revert with 0, 17
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] <= 3:
                if not 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    if False and ext_call.return_data[32] > 0:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] < 0:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] / 10^18 and 9970 > -1 / 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if 9970 * 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 9970 * 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !(9970 * 10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 18
                    if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 17
                    if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if 9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18) <= (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if 9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18) < (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return ((9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + -(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                if ext_call.return_data[32] > -1:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] < ext_call.return_data[32]:
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 and 9970 > -1 / (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                    revert with 0, 17
                if 9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 and ext_call.return_data[0] > -1 / 9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[32] > !(9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                    revert with 0, 18
                if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                    revert with 0, 17
                if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                    revert with 0, 17
                if 9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                    return 0
                if 9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                    revert with 0, 17
                return ((9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
            if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2):
                revert with 0, 17
            s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2) + 1
            t = 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]
            while s < t:
                if not s:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s > !s:
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s) + s / 2
                t = s
                continue 
            if 10^18 > !t:
                revert with 0, 17
            if t and ext_call.return_data[32] > -1 / t:
                revert with 0, 17
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * ext_call.return_data[0] < t * ext_call.return_data[32]:
                revert with 0, 17
            if not t + 10^18:
                revert with 0, 18
            if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 and 9970 > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
                revert with 0, 17
            if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 and ext_call.return_data[0] > -1 / 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[32] > !(9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
                revert with 0, 17
            if not (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
                revert with 0, 18
            if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
                revert with 0, 17
            if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                revert with 0, 17
            if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                return 0
            if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                revert with 0, 17
            return ((9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
        if ext_call.return_data[12 len 20] != stor0:
            if ext_call.return_data[32] and ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] >= ext_call.return_data[32] * ext_call.return_data[32]:
                if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[32] * ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[32]:
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] <= 3:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if 0 < 10^18 * ext_call.return_data[32]:
                                revert with 0, 17
                            if -1 * 10^18 * ext_call.return_data[32] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]:
                                revert with 0, 17
                            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if 10000 * ext_call.return_data[32] > !(-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 17
                            if not (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                                revert with 0, 18
                            if ext_call.return_data[32] and -1 * 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if ext_call.return_data[0] < -1 * 10^18 * ext_call.return_data[32] / 10^18:
                                revert with 0, 17
                            if ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[32] / 10^18) and 9970 > -1 / ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[32] / 10^18):
                                revert with 0, 17
                            if not (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                                revert with 0, 18
                            if 1 > !(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)):
                                revert with 0, 17
                            if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                                return 0
                            if -1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                                revert with 0, 17
                            return ((-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (-1 * 10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) - 1)
                        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] < 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !(ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[32] and ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[0] < ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001) and 9970 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                            revert with 0, 17
                        if not (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)):
                            revert with 0, 17
                        if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)) + 1:
                            return 0
                        if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)) + 1:
                            revert with 0, 17
                        return ((ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)) - 1)
                    if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2):
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2) + 1
                    t = 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s > !s:
                            revert with 0, 17
                        s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s) + s / 2
                        t = s
                        continue 
                    if 10^18 > !t:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if ext_call.return_data[0] and t > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * t < 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if not t + 10^18:
                        revert with 0, 18
                    if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[32] and (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) and 9970 > -1 / ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + 1:
                        return 0
                    if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + 1:
                        revert with 0, 17
                    return (((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) - 1)
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] <= 3:
                    if not 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        if False and ext_call.return_data[32] > 0:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[0] < 0:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[0] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !(10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18) and 9970 > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 17
                        if not (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)):
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                            return 0
                        if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                            revert with 0, 17
                        return ((10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) - 1)
                    if ext_call.return_data[32] > -1:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] < ext_call.return_data[32]:
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)):
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)) + 1:
                        return 0
                    if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)) + 1:
                        revert with 0, 17
                    return (((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)) - 1)
                if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2):
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2) + 1
                t = 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s > !s:
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s) + s / 2
                    t = s
                    continue 
                if 10^18 > !t:
                    revert with 0, 17
                if t and ext_call.return_data[32] > -1 / t:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] < t * ext_call.return_data[32]:
                    revert with 0, 17
                if not t + 10^18:
                    revert with 0, 18
                if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[0] > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[32] > !((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18) and 9970 > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)) + 1:
                    return 0
                if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)) + 1:
                    revert with 0, 17
                return (((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)) - 1)
            if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[32] <= ext_call.return_data[32] * ext_call.return_data[0]:
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] <= 3:
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        if ext_call.return_data[32] and 0 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if 0 < 10^18 * ext_call.return_data[0]:
                            revert with 0, 17
                        if -1 * 10^18 * ext_call.return_data[0] / 10^18 and 9970 > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[0] > !(9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 18
                        if ext_call.return_data[0] and -1 * 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < -1 * 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[0] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 17
                        if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])):
                            revert with 0, 17
                        if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18) <= (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            return 0
                        if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18) < (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                            revert with 0, 17
                        return ((9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + -(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] < 10^18 * ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 and 9970 > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                        revert with 0, 17
                    if 9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 and ext_call.return_data[32] > -1 / 9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !(9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                        revert with 0, 18
                    if ext_call.return_data[0] and ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[32] - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                        revert with 0, 17
                    if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if 9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001) <= (10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if 9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001) < (10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return ((9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)) + -(10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
                if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2):
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2) + 1
                t = 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s > !s:
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s) + s / 2
                    t = s
                    continue 
                if 10^18 > !t:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if ext_call.return_data[32] and t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * t < 10^18 * ext_call.return_data[0]:
                    revert with 0, 17
                if not t + 10^18:
                    revert with 0, 18
                if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and 9970 > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and ext_call.return_data[32] > -1 / 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !(9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 18
                if ext_call.return_data[0] and (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[32] < (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 17
                if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                    revert with 0, 17
                if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) <= (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    return 0
                if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) < (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    revert with 0, 17
                return ((9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + -(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] <= 3:
                if not 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                    if False and ext_call.return_data[0] > 0:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] < 0:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] / 10^18 and 9970 > -1 / 10^18 * ext_call.return_data[32] / 10^18:
                        revert with 0, 17
                    if 9970 * 10^18 * ext_call.return_data[32] / 10^18 and ext_call.return_data[32] > -1 / 9970 * 10^18 * ext_call.return_data[32] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !(9970 * 10^18 * ext_call.return_data[32] / 10^18):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18):
                        revert with 0, 18
                    if ext_call.return_data[0] and 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < 10^18 * ext_call.return_data[32] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18):
                        revert with 0, 17
                    if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if 9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18) <= (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if 9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18) < (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return ((9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + -(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                if ext_call.return_data[0] > -1:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] < ext_call.return_data[0]:
                    revert with 0, 17
                if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 and 9970 > -1 / (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if 9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 and ext_call.return_data[32] > -1 / 9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !(9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 18
                if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 17
                if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                    revert with 0, 17
                if 9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                    return 0
                if 9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                    revert with 0, 17
                return ((9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
            if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2):
                revert with 0, 17
            s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2) + 1
            t = 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]
            while s < t:
                if not s:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s > !s:
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s) + s / 2
                t = s
                continue 
            if 10^18 > !t:
                revert with 0, 17
            if t and ext_call.return_data[0] > -1 / t:
                revert with 0, 17
            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * ext_call.return_data[32] < t * ext_call.return_data[0]:
                revert with 0, 17
            if not t + 10^18:
                revert with 0, 18
            if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 and 9970 > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 and ext_call.return_data[32] > -1 / 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[0] > !(9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 17
            if not (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 18
            if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 17
            if not (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                revert with 0, 17
            if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                return 0
            if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                revert with 0, 17
            return ((9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[32] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
        if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[32] >= ext_call.return_data[32] * ext_call.return_data[0]:
            if ext_call.return_data[32] * ext_call.return_data[0] <= ext_call.return_data[32] * ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 3:
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if 0 < 10^18 * ext_call.return_data[0]:
                            revert with 0, 17
                        if -1 * 10^18 * ext_call.return_data[0] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[0] > !(-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                            revert with 0, 18
                        if ext_call.return_data[32] and -1 * 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[0] < -1 * 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[0] / 10^18) and 9970 > -1 / ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 17
                        if not (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)):
                            revert with 0, 17
                        if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                            return 0
                        if -1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                            revert with 0, 17
                        return ((-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) - 1)
                    if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] < 10^18 * ext_call.return_data[0]:
                        revert with 0, 17
                    if -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / -999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                        revert with 0, 17
                    if -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !(-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[32] and -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < -999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[0] - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[0] - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[0]) - (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001)):
                        revert with 0, 17
                    if -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) + 1:
                        return 0
                    if -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) + 1:
                        revert with 0, 17
                    return ((-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) - 1)
                if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2):
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2) + 1
                t = 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s > !s:
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s) + s / 2
                    t = s
                    continue 
                if 10^18 > !t:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if ext_call.return_data[0] and t > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * t < 10^18 * ext_call.return_data[0]:
                    revert with 0, 17
                if not t + 10^18:
                    revert with 0, 18
                if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if ext_call.return_data[32] and (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) and 9970 > -1 / ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)):
                    revert with 0, 17
                if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + 1:
                    return 0
                if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + 1:
                    revert with 0, 17
                return (((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) - 1)
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 3:
                if not 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    if False and ext_call.return_data[0] > 0:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] < 0:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] / 10^18 and stor2[address(ext_call.return_data[0])] > -1 / 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !(10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18) and 9970 > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)):
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                        return 0
                    if 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                        revert with 0, 17
                    return ((10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) - 1)
                if ext_call.return_data[0] > -1:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 and stor2[address(ext_call.return_data[0])] > -1 / 999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !(999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if ext_call.return_data[32] and 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < 999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[0] - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[0]) - (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001)):
                    revert with 0, 17
                if 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) + 1:
                    return 0
                if 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) + 1:
                    revert with 0, 17
                return ((999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) - 1)
            if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2):
                revert with 0, 17
            s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2) + 1
            t = 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
            while s < t:
                if not s:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s > !s:
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s) + s / 2
                t = s
                continue 
            if 10^18 > !t:
                revert with 0, 17
            if t and ext_call.return_data[0] > -1 / t:
                revert with 0, 17
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * ext_call.return_data[0] < t * ext_call.return_data[0]:
                revert with 0, 17
            if not t + 10^18:
                revert with 0, 18
            if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 and stor2[address(ext_call.return_data[0])] > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] and ext_call.return_data[32] > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]:
                revert with 0, 17
            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[0] > !((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                revert with 0, 17
            if not (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                revert with 0, 18
            if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18) and 9970 > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 17
            if not (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18)):
                revert with 0, 17
            if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18)) + 1:
                return 0
            if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18)) + 1:
                revert with 0, 17
            return (((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18)) - 1)
        if ext_call.return_data[32] * ext_call.return_data[0] <= ext_call.return_data[32] * ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 3:
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 < 10^18 * ext_call.return_data[0]:
                        revert with 0, 17
                    if -1 * 10^18 * ext_call.return_data[0] / 10^18 and 9970 > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !(9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 18
                    if ext_call.return_data[32] and -1 * 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < -1 * 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[0] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 17
                    if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])):
                        revert with 0, 17
                    if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18) <= (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        return 0
                    if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18) < (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                        revert with 0, 17
                    return ((9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + -(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-1 * 10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
                if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] < 10^18 * ext_call.return_data[0]:
                    revert with 0, 17
                if -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 and 9970 > -1 / -999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if 9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 and ext_call.return_data[32] > -1 / 9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !(9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 18
                if ext_call.return_data[32] and -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < -999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 17
                if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                    revert with 0, 17
                if 9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001) <= (10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                    return 0
                if 9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001) < (10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                    revert with 0, 17
                return ((9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) + -(10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
            if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2):
                revert with 0, 17
            s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2) + 1
            t = 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
            while s < t:
                if not s:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s > !s:
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s) + s / 2
                t = s
                continue 
            if 10^18 > !t:
                revert with 0, 17
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if ext_call.return_data[0] and t > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * t < 10^18 * ext_call.return_data[0]:
                revert with 0, 17
            if not t + 10^18:
                revert with 0, 18
            if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and 9970 > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and ext_call.return_data[32] > -1 / 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[0] > !(9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 17
            if not (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 18
            if ext_call.return_data[32] and (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[0] < (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 17
            if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
                revert with 0, 17
            if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) <= (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                return 0
            if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) < (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                revert with 0, 17
            return ((9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + -(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
        if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 3:
            if not 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] < 0:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] / 10^18 and 9970 > -1 / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if 9970 * 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / 9970 * 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !(9970 * 10^18 * ext_call.return_data[0] / 10^18):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18):
                    revert with 0, 18
                if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18):
                    revert with 0, 17
                if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])]):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])):
                    revert with 0, 17
                if 9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18) <= (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    return 0
                if 9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18) < (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
                    revert with 0, 17
                return ((9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + -(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[0] / 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
            if ext_call.return_data[0] > -1:
                revert with 0, 17
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            if 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 and 9970 > -1 / 999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                revert with 0, 17
            if 9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 and ext_call.return_data[32] > -1 / 9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                revert with 0, 17
            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[0] > !(9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                revert with 0, 17
            if not (10000 * ext_call.return_data[0]) + (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                revert with 0, 18
            if ext_call.return_data[32] and 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[0] < 999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                revert with 0, 17
            if ext_call.return_data[0] - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                revert with 0, 17
            if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])]):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])):
                revert with 0, 17
            if 9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001) <= (10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                return 0
            if 9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001) < (10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) + 1:
                revert with 0, 17
            return ((9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) + -(10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * stor2[address(ext_call.return_data[0])])) - 1)
        if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2):
            revert with 0, 17
        s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2) + 1
        t = 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
        while s < t:
            if not s:
                revert with 0, 18
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s > !s:
                revert with 0, 17
            s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s) + s / 2
            t = s
            continue 
        if 10^18 > !t:
            revert with 0, 17
        if t and ext_call.return_data[0] > -1 / t:
            revert with 0, 17
        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] < t * ext_call.return_data[0]:
            revert with 0, 17
        if not t + 10^18:
            revert with 0, 18
        if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 and 9970 > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18:
            revert with 0, 17
        if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 and ext_call.return_data[32] > -1 / 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18:
            revert with 0, 17
        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if 10000 * ext_call.return_data[0] > !(9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18):
            revert with 0, 17
        if not (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18):
            revert with 0, 18
        if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18:
            revert with 0, 17
        if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18) and stor2[address(ext_call.return_data[0])] > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18):
            revert with 0, 17
        if not (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])]):
            revert with 0, 18
        if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])):
            revert with 0, 17
        if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
            return 0
        if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) + 1:
            revert with 0, 17
        return ((9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18)) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])]) - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * stor2[address(ext_call.return_data[0])])) - 1)
    if ext_call.return_data[12 len 20] != stor0:
        if ext_call.return_data[12 len 20] != stor0:
            if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and 10^18 * ext_call.return_data[32] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[32] <= ext_call.return_data[0] * ext_call.return_data[32]:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] <= 3:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]:
                        if ext_call.return_data[32] and 0 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if 0 < 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if -1 * 10^18 * ext_call.return_data[32] / 10^18 and 9970 > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 and ext_call.return_data[0] > -1 / 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !(9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 18
                        if ext_call.return_data[0] and -1 * 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < -1 * 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[32] / 10^18) and 9970 > -1 / ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 17
                        if not (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)):
                            revert with 0, 17
                        if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18) <= (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                            return 0
                        if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18) < (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                            revert with 0, 17
                        return ((9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + -(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) - 1)
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] < 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 and 9970 > -1 / -999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                        revert with 0, 17
                    if 9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 and ext_call.return_data[0] > -1 / 9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !(9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                        revert with 0, 18
                    if ext_call.return_data[0] and -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < -999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[32] - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[32] - (-999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[32]) - (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001)):
                        revert with 0, 17
                    if 9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001) <= (10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) + 1:
                        return 0
                    if 9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001) < (10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) + 1:
                        revert with 0, 17
                    return ((9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) + -(10000 * ext_call.return_data[0] * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * -999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) - 1)
                if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2):
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2) + 1
                t = 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s > !s:
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s) + s / 2
                    t = s
                    continue 
                if 10^18 > !t:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if ext_call.return_data[32] and t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * t < 10^18 * ext_call.return_data[32]:
                    revert with 0, 17
                if not t + 10^18:
                    revert with 0, 18
                if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and 9970 > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and ext_call.return_data[0] > -1 / 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[32] > !(9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 18
                if ext_call.return_data[0] and (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[32] < (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) and 9970 > -1 / ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)):
                    revert with 0, 17
                if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) <= (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + 1:
                    return 0
                if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) < (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + 1:
                    revert with 0, 17
                return ((9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + -(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) - 1)
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] <= 3:
                if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]:
                    if False and ext_call.return_data[32] > 0:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] < 0:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] / 10^18 and 9970 > -1 / 10^18 * ext_call.return_data[32] / 10^18:
                        revert with 0, 17
                    if 9970 * 10^18 * ext_call.return_data[32] / 10^18 and ext_call.return_data[0] > -1 / 9970 * 10^18 * ext_call.return_data[32] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !(9970 * 10^18 * ext_call.return_data[32] / 10^18):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18):
                        revert with 0, 18
                    if ext_call.return_data[0] and 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < 10^18 * ext_call.return_data[32] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18) and 9970 > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)):
                        revert with 0, 17
                    if 9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18) <= (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                        return 0
                    if 9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18) < (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                        revert with 0, 17
                    return ((9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + -(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) - 1)
                if ext_call.return_data[32] > -1:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] < ext_call.return_data[32]:
                    revert with 0, 17
                if 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 and 9970 > -1 / 999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                    revert with 0, 17
                if 9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 and ext_call.return_data[0] > -1 / 9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[32] > !(9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[32]) + (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                    revert with 0, 18
                if ext_call.return_data[0] and 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[32] < 999999999999999999 * ext_call.return_data[32] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[32] - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[32] - (999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[32]) - (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001)):
                    revert with 0, 17
                if 9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001) <= (10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) + 1:
                    return 0
                if 9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001) < (10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) + 1:
                    revert with 0, 17
                return ((9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) + -(10000 * ext_call.return_data[0] * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * 999999999999999999 * ext_call.return_data[32] / 1000000000000000001)) - 1)
            if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2):
                revert with 0, 17
            s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 2) + 1
            t = 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32]
            while s < t:
                if not s:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s > !s:
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / s) + s / 2
                t = s
                continue 
            if 10^18 > !t:
                revert with 0, 17
            if t and ext_call.return_data[32] > -1 / t:
                revert with 0, 17
            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * ext_call.return_data[32] < t * ext_call.return_data[32]:
                revert with 0, 17
            if not t + 10^18:
                revert with 0, 18
            if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 and 9970 > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18:
                revert with 0, 17
            if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 and ext_call.return_data[0] > -1 / 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[32] > !(9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18):
                revert with 0, 17
            if not (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18):
                revert with 0, 18
            if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18) and 9970 > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18):
                revert with 0, 17
            if not (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18)):
                revert with 0, 17
            if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18)) + 1:
                return 0
            if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18)) + 1:
                revert with 0, 17
            return ((9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18)) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[32]) / t + 10^18)) - 1)
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * ext_call.return_data[32] >= ext_call.return_data[0] * ext_call.return_data[0]:
            if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[32] <= ext_call.return_data[32] * ext_call.return_data[0]:
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] <= 3:
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        if ext_call.return_data[32] and 0 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if 0 < 10^18 * ext_call.return_data[0]:
                            revert with 0, 17
                        if -1 * 10^18 * ext_call.return_data[0] / 10^18 and 9970 > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[0] > !(9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 18
                        if ext_call.return_data[0] and -1 * 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[32] < -1 * 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[0] / 10^18) and 9970 > -1 / ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 17
                        if not (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)):
                            revert with 0, 17
                        if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18) <= (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                            return 0
                        if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18) < (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                            revert with 0, 17
                        return ((9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + -(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) - 1)
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] < 10^18 * ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 and 9970 > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                        revert with 0, 17
                    if 9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 and ext_call.return_data[32] > -1 / 9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !(9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                        revert with 0, 18
                    if ext_call.return_data[0] and ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[32] - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001) and 9970 > -1 / ext_call.return_data[32] - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)):
                        revert with 0, 17
                    if 9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001) <= (10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)) + 1:
                        return 0
                    if 9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001) < (10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)) + 1:
                        revert with 0, 17
                    return ((9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)) + -(10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)) - 1)
                if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2):
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2) + 1
                t = 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s > !s:
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s) + s / 2
                    t = s
                    continue 
                if 10^18 > !t:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if ext_call.return_data[32] and t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * t < 10^18 * ext_call.return_data[0]:
                    revert with 0, 17
                if not t + 10^18:
                    revert with 0, 18
                if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and 9970 > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and ext_call.return_data[32] > -1 / 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !(9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 18
                if ext_call.return_data[0] and (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[32] < (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) and 9970 > -1 / ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)):
                    revert with 0, 17
                if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) <= (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + 1:
                    return 0
                if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) < (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + 1:
                    revert with 0, 17
                return ((9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + -(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) - 1)
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] <= 3:
                if not 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                    if False and ext_call.return_data[0] > 0:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] < 0:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] / 10^18 and 9970 > -1 / 10^18 * ext_call.return_data[32] / 10^18:
                        revert with 0, 17
                    if 9970 * 10^18 * ext_call.return_data[32] / 10^18 and ext_call.return_data[32] > -1 / 9970 * 10^18 * ext_call.return_data[32] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !(9970 * 10^18 * ext_call.return_data[32] / 10^18):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18):
                        revert with 0, 18
                    if ext_call.return_data[0] and 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < 10^18 * ext_call.return_data[32] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18) and 9970 > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)):
                        revert with 0, 17
                    if 9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18) <= (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                        return 0
                    if 9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18) < (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                        revert with 0, 17
                    return ((9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + -(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) - 1)
                if ext_call.return_data[0] > -1:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] < ext_call.return_data[0]:
                    revert with 0, 17
                if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 and 9970 > -1 / (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if 9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 and ext_call.return_data[32] > -1 / 9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !(9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 18
                if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)):
                    revert with 0, 17
                if 9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)) + 1:
                    return 0
                if 9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)) + 1:
                    revert with 0, 17
                return ((9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)) - 1)
            if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2):
                revert with 0, 17
            s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2) + 1
            t = 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]
            while s < t:
                if not s:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s > !s:
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s) + s / 2
                t = s
                continue 
            if 10^18 > !t:
                revert with 0, 17
            if t and ext_call.return_data[0] > -1 / t:
                revert with 0, 17
            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * ext_call.return_data[32] < t * ext_call.return_data[0]:
                revert with 0, 17
            if not t + 10^18:
                revert with 0, 18
            if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 and 9970 > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 and ext_call.return_data[32] > -1 / 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[0] > !(9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 17
            if not (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 18
            if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18) and 9970 > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 17
            if not (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)):
                revert with 0, 17
            if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)) + 1:
                return 0
            if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)) + 1:
                revert with 0, 17
            return ((9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)) - 1)
        if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] * ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[32]:
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] <= 3:
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 < 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if -1 * 10^18 * ext_call.return_data[32] / 10^18 and 9970 > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18:
                        revert with 0, 17
                    if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 and ext_call.return_data[0] > -1 / 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !(9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                        revert with 0, 18
                    if ext_call.return_data[32] and -1 * 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < -1 * 10^18 * ext_call.return_data[32] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[32] / 10^18) and 9970 > -1 / ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[32] / 10^18):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)):
                        revert with 0, 17
                    if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18) <= (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                        return 0
                    if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18) < (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                        revert with 0, 17
                    return ((9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + -(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) - 1)
                if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] < 10^18 * ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 and 9970 > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                    revert with 0, 17
                if 9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 and ext_call.return_data[0] > -1 / 9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[32] > !(9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[32]) + (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                    revert with 0, 18
                if ext_call.return_data[32] and ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001) and 9970 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)):
                    revert with 0, 17
                if 9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001) <= (10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)) + 1:
                    return 0
                if 9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001) < (10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)) + 1:
                    revert with 0, 17
                return ((9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)) + -(10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)) - 1)
            if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2):
                revert with 0, 17
            s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2) + 1
            t = 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]
            while s < t:
                if not s:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s > !s:
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s) + s / 2
                t = s
                continue 
            if 10^18 > !t:
                revert with 0, 17
            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if ext_call.return_data[0] and t > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * t < 10^18 * ext_call.return_data[32]:
                revert with 0, 17
            if not t + 10^18:
                revert with 0, 18
            if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and 9970 > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                revert with 0, 17
            if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and ext_call.return_data[0] > -1 / 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[32] > !(9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                revert with 0, 17
            if not (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                revert with 0, 18
            if ext_call.return_data[32] and (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[0] < (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) and 9970 > -1 / ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                revert with 0, 17
            if not (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)):
                revert with 0, 17
            if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) <= (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + 1:
                return 0
            if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) < (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + 1:
                revert with 0, 17
            return ((9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + -(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) - 1)
        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] <= 3:
            if not 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                if False and ext_call.return_data[32] > 0:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] < 0:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] / 10^18 and 9970 > -1 / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if 9970 * 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 9970 * 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[32] > !(9970 * 10^18 * ext_call.return_data[0] / 10^18):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18):
                    revert with 0, 18
                if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18) and 9970 > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)):
                    revert with 0, 17
                if 9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18) <= (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                    return 0
                if 9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18) < (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                    revert with 0, 17
                return ((9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + -(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) - 1)
            if ext_call.return_data[32] > -1:
                revert with 0, 17
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * ext_call.return_data[0] < ext_call.return_data[32]:
                revert with 0, 17
            if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 and 9970 > -1 / (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                revert with 0, 17
            if 9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 and ext_call.return_data[0] > -1 / 9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                revert with 0, 17
            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[32] > !(9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                revert with 0, 17
            if not (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                revert with 0, 18
            if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                revert with 0, 17
            if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                revert with 0, 17
            if not (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)):
                revert with 0, 17
            if 9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)) + 1:
                return 0
            if 9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)) + 1:
                revert with 0, 17
            return ((9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)) - 1)
        if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2):
            revert with 0, 17
        s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2) + 1
        t = 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]
        while s < t:
            if not s:
                revert with 0, 18
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s > !s:
                revert with 0, 17
            s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s) + s / 2
            t = s
            continue 
        if 10^18 > !t:
            revert with 0, 17
        if t and ext_call.return_data[32] > -1 / t:
            revert with 0, 17
        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] < t * ext_call.return_data[32]:
            revert with 0, 17
        if not t + 10^18:
            revert with 0, 18
        if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 and 9970 > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
            revert with 0, 17
        if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 and ext_call.return_data[0] > -1 / 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
            revert with 0, 17
        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if 10000 * ext_call.return_data[32] > !(9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
            revert with 0, 17
        if not (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
            revert with 0, 18
        if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
            revert with 0, 17
        if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18) and 9970 > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
            revert with 0, 17
        if not (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
            revert with 0, 18
        if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)):
            revert with 0, 17
        if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)) + 1:
            return 0
        if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)) + 1:
            revert with 0, 17
        return ((9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)) - 1)
    if ext_call.return_data[12 len 20] != stor0:
        if ext_call.return_data[32] and ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] >= ext_call.return_data[32] * ext_call.return_data[32]:
            if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] * ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[32]:
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] <= 3:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if 0 < 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if -1 * 10^18 * ext_call.return_data[32] / 10^18 and 9970 > -1 / -1 * 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 and ext_call.return_data[0] > -1 / 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if 10000 * ext_call.return_data[32] > !(9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 17
                        if not (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 18
                        if ext_call.return_data[32] and -1 * 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if ext_call.return_data[0] < -1 * 10^18 * ext_call.return_data[32] / 10^18:
                            revert with 0, 17
                        if ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[32] / 10^18) and 9970 > -1 / ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 17
                        if not (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18):
                            revert with 0, 18
                        if 1 > !(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)):
                            revert with 0, 17
                        if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18) <= (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                            return 0
                        if 9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18) < (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                            revert with 0, 17
                        return ((9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) + -(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[32] / 10^18)) - 1)
                    if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] < 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 and 9970 > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                        revert with 0, 17
                    if 9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 and ext_call.return_data[0] > -1 / 9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !(9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                        revert with 0, 18
                    if ext_call.return_data[32] and ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[0] - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001) and 9970 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)):
                        revert with 0, 17
                    if 9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001) <= (10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)) + 1:
                        return 0
                    if 9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001) < (10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)) + 1:
                        revert with 0, 17
                    return ((9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)) + -(10000 * ext_call.return_data[32] * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * ext_call.return_data[0] - (10^18 * ext_call.return_data[32]) / 1000000000000000001)) - 1)
                if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2):
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2) + 1
                t = 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s > !s:
                        revert with 0, 17
                    s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s) + s / 2
                    t = s
                    continue 
                if 10^18 > !t:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if ext_call.return_data[0] and t > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * t < 10^18 * ext_call.return_data[32]:
                    revert with 0, 17
                if not t + 10^18:
                    revert with 0, 18
                if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and 9970 > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 and ext_call.return_data[0] > -1 / 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[32] > !(9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 18
                if ext_call.return_data[32] and (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) and 9970 > -1 / ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)):
                    revert with 0, 17
                if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) <= (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + 1:
                    return 0
                if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18) < (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + 1:
                    revert with 0, 17
                return ((9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) + -(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[32]) / t + 10^18)) - 1)
            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                revert with 0, 17
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] <= 3:
                if not 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    if False and ext_call.return_data[32] > 0:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] < 0:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[0] / 10^18 and 9970 > -1 / 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if 9970 * 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 9970 * 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[32] > !(9970 * 10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 18
                    if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18) and 9970 > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)):
                        revert with 0, 17
                    if 9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18) <= (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                        return 0
                    if 9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18) < (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                        revert with 0, 17
                    return ((9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + -(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) - 1)
                if ext_call.return_data[32] > -1:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[0] < ext_call.return_data[32]:
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 and 9970 > -1 / (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                    revert with 0, 17
                if 9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 and ext_call.return_data[0] > -1 / 9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[32] > !(9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                    revert with 0, 18
                if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)):
                    revert with 0, 17
                if 9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)) + 1:
                    return 0
                if 9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)) + 1:
                    revert with 0, 17
                return ((9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - ext_call.return_data[32] / 1000000000000000001)) - 1)
            if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2):
                revert with 0, 17
            s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2) + 1
            t = 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]
            while s < t:
                if not s:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s > !s:
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s) + s / 2
                t = s
                continue 
            if 10^18 > !t:
                revert with 0, 17
            if t and ext_call.return_data[32] > -1 / t:
                revert with 0, 17
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * ext_call.return_data[0] < t * ext_call.return_data[32]:
                revert with 0, 17
            if not t + 10^18:
                revert with 0, 18
            if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 and 9970 > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
                revert with 0, 17
            if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 and ext_call.return_data[0] > -1 / 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[32] > !(9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
                revert with 0, 17
            if not (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
                revert with 0, 18
            if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18) and 9970 > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
                revert with 0, 17
            if not (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)):
                revert with 0, 17
            if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)) + 1:
                return 0
            if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)) + 1:
                revert with 0, 17
            return ((9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[32]) / t + 10^18)) - 1)
        if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[32] <= ext_call.return_data[32] * ext_call.return_data[0]:
            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                revert with 0, 17
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] <= 3:
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    if ext_call.return_data[32] and 0 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if 0 < 10^18 * ext_call.return_data[0]:
                        revert with 0, 17
                    if -1 * 10^18 * ext_call.return_data[0] / 10^18 and 9970 > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] > !(9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 17
                    if not (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 18
                    if ext_call.return_data[0] and -1 * 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if ext_call.return_data[32] < -1 * 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[0] / 10^18) and 9970 > -1 / ext_call.return_data[32] - (-1 * 10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 17
                    if not (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                        revert with 0, 18
                    if 1 > !(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)):
                        revert with 0, 17
                    if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18) <= (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                        return 0
                    if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18) < (10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                        revert with 0, 17
                    return ((9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + -(10000 * ext_call.return_data[0] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) - 1)
                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] < 10^18 * ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 and 9970 > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                    revert with 0, 17
                if 9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 and ext_call.return_data[32] > -1 / 9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !(9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                    revert with 0, 18
                if ext_call.return_data[0] and ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[32] < ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001:
                    revert with 0, 17
                if ext_call.return_data[32] - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001) and 9970 > -1 / ext_call.return_data[32] - (ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)):
                    revert with 0, 17
                if 9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001) <= (10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)) + 1:
                    return 0
                if 9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001) < (10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)) + 1:
                    revert with 0, 17
                return ((9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)) + -(10000 * ext_call.return_data[0] * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * ext_call.return_data[32] - (10^18 * ext_call.return_data[0]) / 1000000000000000001)) - 1)
            if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2):
                revert with 0, 17
            s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 2) + 1
            t = 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]
            while s < t:
                if not s:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s > !s:
                    revert with 0, 17
                s = (10^18 * ext_call.return_data[32] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / s) + s / 2
                t = s
                continue 
            if 10^18 > !t:
                revert with 0, 17
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if ext_call.return_data[32] and t > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * t < 10^18 * ext_call.return_data[0]:
                revert with 0, 17
            if not t + 10^18:
                revert with 0, 18
            if (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and 9970 > -1 / (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and ext_call.return_data[32] > -1 / 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[0] > !(9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 17
            if not (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 18
            if ext_call.return_data[0] and (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[32] < (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
                revert with 0, 17
            if ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) and 9970 > -1 / ext_call.return_data[32] - ((ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 17
            if not (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)):
                revert with 0, 17
            if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) <= (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + 1:
                return 0
            if 9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) < (10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + 1:
                revert with 0, 17
            return ((9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + -(10000 * ext_call.return_data[0] * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (ext_call.return_data[32] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) - 1)
        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] <= 3:
            if not 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] < 0:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] / 10^18 and 9970 > -1 / 10^18 * ext_call.return_data[32] / 10^18:
                    revert with 0, 17
                if 9970 * 10^18 * ext_call.return_data[32] / 10^18 and ext_call.return_data[32] > -1 / 9970 * 10^18 * ext_call.return_data[32] / 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !(9970 * 10^18 * ext_call.return_data[32] / 10^18):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18):
                    revert with 0, 18
                if ext_call.return_data[0] and 10^18 * ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[32] < 10^18 * ext_call.return_data[32] / 10^18:
                    revert with 0, 17
                if ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18) and 9970 > -1 / ext_call.return_data[32] - (10^18 * ext_call.return_data[32] / 10^18):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)):
                    revert with 0, 17
                if 9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18) <= (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                    return 0
                if 9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18) < (10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + 1:
                    revert with 0, 17
                return ((9970 * 10^18 * ext_call.return_data[32] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[32] / 10^18)) + -(10000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[32] / 10^18 / (9970 * ext_call.return_data[32]) - (9970 * 10^18 * ext_call.return_data[32] / 10^18)) - 1)
            if ext_call.return_data[0] > -1:
                revert with 0, 17
            if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * ext_call.return_data[32] < ext_call.return_data[0]:
                revert with 0, 17
            if (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 and 9970 > -1 / (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                revert with 0, 17
            if 9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 and ext_call.return_data[32] > -1 / 9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                revert with 0, 17
            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[0] > !(9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                revert with 0, 17
            if not (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                revert with 0, 18
            if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001:
                revert with 0, 17
            if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                revert with 0, 17
            if not (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)):
                revert with 0, 17
            if 9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)) + 1:
                return 0
            if 9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)) + 1:
                revert with 0, 17
            return ((9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000000000001)) - 1)
        if 1 > !(10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2):
            revert with 0, 17
        s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2) + 1
        t = 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0]
        while s < t:
            if not s:
                revert with 0, 18
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s > !s:
                revert with 0, 17
            s = (10^18 * ext_call.return_data[0] / ext_call.return_data[32] * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / s) + s / 2
            t = s
            continue 
        if 10^18 > !t:
            revert with 0, 17
        if t and ext_call.return_data[0] > -1 / t:
            revert with 0, 17
        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * ext_call.return_data[32] < t * ext_call.return_data[0]:
            revert with 0, 17
        if not t + 10^18:
            revert with 0, 18
        if (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 and 9970 > -1 / (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
            revert with 0, 17
        if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 and ext_call.return_data[32] > -1 / 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
            revert with 0, 17
        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if 10000 * ext_call.return_data[0] > !(9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
            revert with 0, 17
        if not (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
            revert with 0, 18
        if ext_call.return_data[0] and (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if ext_call.return_data[32] < (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18:
            revert with 0, 17
        if ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18) and 9970 > -1 / ext_call.return_data[32] - ((10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
            revert with 0, 17
        if not (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18):
            revert with 0, 18
        if 1 > !(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)):
            revert with 0, 17
        if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18) <= (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)) + 1:
            return 0
        if 9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18) < (10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)) + 1:
            revert with 0, 17
        return ((9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)) + -(10000 * ext_call.return_data[0] * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[32]) - (9970 * (10^18 * ext_call.return_data[32]) - (t * ext_call.return_data[0]) / t + 10^18)) - 1)
    if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[32] / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[32] * ext_call.return_data[0] <= ext_call.return_data[32] * ext_call.return_data[0]:
        if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 3:
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if 0 < 10^18 * ext_call.return_data[0]:
                    revert with 0, 17
                if -1 * 10^18 * ext_call.return_data[0] / 10^18 and 9970 > -1 / -1 * 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !(9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                    revert with 0, 17
                if not (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                    revert with 0, 18
                if ext_call.return_data[32] and -1 * 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if ext_call.return_data[0] < -1 * 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[0] / 10^18) and 9970 > -1 / ext_call.return_data[0] - (-1 * 10^18 * ext_call.return_data[0] / 10^18):
                    revert with 0, 17
                if not (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18):
                    revert with 0, 18
                if 1 > !(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)):
                    revert with 0, 17
                if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18) <= (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                    return 0
                if 9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18) < (10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                    revert with 0, 17
                return ((9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) + -(10000 * ext_call.return_data[32] * -1 * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * -1 * 10^18 * ext_call.return_data[0] / 10^18)) - 1)
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] < 10^18 * ext_call.return_data[0]:
                revert with 0, 17
            if -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 and 9970 > -1 / -999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                revert with 0, 17
            if 9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 and ext_call.return_data[32] > -1 / 9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                revert with 0, 17
            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[0] > !(9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                revert with 0, 17
            if not (10000 * ext_call.return_data[0]) + (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                revert with 0, 18
            if ext_call.return_data[32] and -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[0] < -999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
                revert with 0, 17
            if ext_call.return_data[0] - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[0] - (-999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                revert with 0, 17
            if not (9970 * ext_call.return_data[0]) - (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001)):
                revert with 0, 17
            if 9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001) <= (10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) + 1:
                return 0
            if 9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001) < (10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) + 1:
                revert with 0, 17
            return ((9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) + -(10000 * ext_call.return_data[32] * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * -999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) - 1)
        if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2):
            revert with 0, 17
        s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2) + 1
        t = 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
        while s < t:
            if not s:
                revert with 0, 18
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s > !s:
                revert with 0, 17
            s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s) + s / 2
            t = s
            continue 
        if 10^18 > !t:
            revert with 0, 17
        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if ext_call.return_data[0] and t > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * t < 10^18 * ext_call.return_data[0]:
            revert with 0, 17
        if not t + 10^18:
            revert with 0, 18
        if (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and 9970 > -1 / (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
            revert with 0, 17
        if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 and ext_call.return_data[32] > -1 / 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
            revert with 0, 17
        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if 10000 * ext_call.return_data[0] > !(9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
            revert with 0, 17
        if not (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
            revert with 0, 18
        if ext_call.return_data[32] and (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if ext_call.return_data[0] < (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18:
            revert with 0, 17
        if ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) and 9970 > -1 / ext_call.return_data[0] - ((ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
            revert with 0, 17
        if not (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18):
            revert with 0, 18
        if 1 > !(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)):
            revert with 0, 17
        if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) <= (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + 1:
            return 0
        if 9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18) < (10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + 1:
            revert with 0, 17
        return ((9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) + -(10000 * ext_call.return_data[32] * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (ext_call.return_data[0] * t) - (10^18 * ext_call.return_data[0]) / t + 10^18)) - 1)
    if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 3:
        if not 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            if False and ext_call.return_data[0] > 0:
                revert with 0, 17
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * ext_call.return_data[0] < 0:
                revert with 0, 17
            if 10^18 * ext_call.return_data[0] / 10^18 and 9970 > -1 / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            if 9970 * 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / 9970 * 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[0] > !(9970 * 10^18 * ext_call.return_data[0] / 10^18):
                revert with 0, 17
            if not (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18):
                revert with 0, 18
            if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18) and 9970 > -1 / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 10^18):
                revert with 0, 17
            if not (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18):
                revert with 0, 18
            if 1 > !(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)):
                revert with 0, 17
            if 9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18) <= (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                return 0
            if 9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18) < (10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + 1:
                revert with 0, 17
            return ((9970 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 10^18 * ext_call.return_data[0] / 10^18)) + -(10000 * ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^18 / (9970 * ext_call.return_data[0]) - (9970 * 10^18 * ext_call.return_data[0] / 10^18)) - 1)
        if ext_call.return_data[0] > -1:
            revert with 0, 17
        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 and 9970 > -1 / 999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
            revert with 0, 17
        if 9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 and ext_call.return_data[32] > -1 / 9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
            revert with 0, 17
        if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if 10000 * ext_call.return_data[0] > !(9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
            revert with 0, 17
        if not (10000 * ext_call.return_data[0]) + (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
            revert with 0, 18
        if ext_call.return_data[32] and 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if ext_call.return_data[0] < 999999999999999999 * ext_call.return_data[0] / 1000000000000000001:
            revert with 0, 17
        if ext_call.return_data[0] - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001) and 9970 > -1 / ext_call.return_data[0] - (999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
            revert with 0, 17
        if not (9970 * ext_call.return_data[0]) - (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001):
            revert with 0, 18
        if 1 > !(10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001)):
            revert with 0, 17
        if 9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001) <= (10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) + 1:
            return 0
        if 9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001) < (10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) + 1:
            revert with 0, 17
        return ((9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) + -(10000 * ext_call.return_data[32] * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001 / (9970 * ext_call.return_data[0]) - (9970 * 999999999999999999 * ext_call.return_data[0] / 1000000000000000001)) - 1)
    if 1 > !(10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2):
        revert with 0, 17
    s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 2) + 1
    t = 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
    while s < t:
        if not s:
            revert with 0, 18
        if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s > !s:
            revert with 0, 17
        s = (10^18 * ext_call.return_data[32] / ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / s) + s / 2
        t = s
        continue 
    if 10^18 > !t:
        revert with 0, 17
    if t and ext_call.return_data[0] > -1 / t:
        revert with 0, 17
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * ext_call.return_data[0] < t * ext_call.return_data[0]:
        revert with 0, 17
    if not t + 10^18:
        revert with 0, 18
    if (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 and 9970 > -1 / (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18:
        revert with 0, 17
    if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 and ext_call.return_data[32] > -1 / 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18:
        revert with 0, 17
    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if 10000 * ext_call.return_data[0] > !(9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18):
        revert with 0, 17
    if not (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18):
        revert with 0, 18
    if ext_call.return_data[32] and (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if ext_call.return_data[0] < (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18:
        revert with 0, 17
    if ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18) and 9970 > -1 / ext_call.return_data[0] - ((10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18):
        revert with 0, 17
    if not (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18):
        revert with 0, 18
    if 1 > !(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18)):
        revert with 0, 17
    if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18) <= (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18)) + 1:
        return 0
    if 9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18) < (10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18)) + 1:
        revert with 0, 17
    return ((9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18)) + -(10000 * ext_call.return_data[32] * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18 / (9970 * ext_call.return_data[0]) - (9970 * (10^18 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / t + 10^18)) - 1)
}



}
