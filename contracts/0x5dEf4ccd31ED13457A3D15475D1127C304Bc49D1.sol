contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function sub_43262f6b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[arg1])
}

function sub_d5cb45ad(?) {
    if 0xb80da29fb10ed9660f2b4293c8aee57b565c878b != msg.sender:
        revert with 0, 'B0'
    selfdestruct(0xb80da29fb10ed9660f2b4293c8aee57b565c878b)
}

function _fallback() payable {
    revert
}

function sub_c3539c08(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0xb80da29fb10ed9660f2b4293c8aee57b565c878b != msg.sender:
        revert with 0, 'B0'
    stor0[address(arg1)] = 0
}

function sub_c68e40d3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0xb80da29fb10ed9660f2b4293c8aee57b565c878b != msg.sender:
        revert with 0, 'B0'
    stor0[address(arg1)] = 1
}

function sub_e3257b14(?) {
    if 0xb80da29fb10ed9660f2b4293c8aee57b565c878b != msg.sender:
        revert with 0, 'B0'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'B8'
}

function sub_969f6def(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0xb80da29fb10ed9660f2b4293c8aee57b565c878b != msg.sender:
        revert with 0, 'B0'
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
        args 0xb80da29fb10ed9660f2b4293c8aee57b565c878b, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'B2'
}

function sub_780b4acf(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == address(arg5)
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0, 'B1'
    mem[0] = msg.sender
    mem[32] = 0
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0, 'B1'
    mem[96] = 2
    mem[128] = address(arg1)
    mem[160] = address(arg2)
    mem[192] = 2
    mem[64] = 288
    mem[224 len 64] = call.data[calldata.size len 64]
    mem[256] = arg4
    idx = mem[96] - 1
    while idx > 0:
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[96]:
            revert with 'NH{q', 50
        _329 = mem[(32 * idx - 1) + 128]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _332 = mem[(32 * idx) + 128]
        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
            if not mem[(32 * idx - 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(arg5))
            staticcall address(arg5).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _356 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_356] == mem[_356 + 18 len 14]
            require mem[_356 + 32] == mem[_356 + 50 len 14]
            require mem[_356 + 64] == mem[_356 + 92 len 4]
            if idx >= mem[192]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 224] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
            if address(_329) == address(_329):
                if mem[_356 + 18 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if mem[_356 + 50 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if not mem[(32 * idx) + 224]:
                    if mem[_356 + 50 len 14] < mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if mem[_356 + 50 len 14] - mem[(32 * idx) + 224] > mem[_356 + 50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if mem[_356 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_356 + 50 len 14] - mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if (997 * mem[_356 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_356 + 50 len 14] - mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not (997 * mem[_356 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                        revert with 'NH{q', 18
                    if 0 / (997 * mem[_356 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                        revert with 'NH{q', 17
                    if (0 / (997 * mem[_356 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_356 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= mem[192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_356 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                else:
                    if mem[_356 + 18 len 14] and mem[(32 * idx) + 224] > -1 / mem[_356 + 18 len 14]:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + 224]:
                        revert with 'NH{q', 18
                    if mem[_356 + 18 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_356 + 18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_356 + 18 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_356 + 18 len 14] * mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_356 + 18 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_356 + 18 len 14] * mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_356 + 50 len 14] < mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if mem[_356 + 50 len 14] - mem[(32 * idx) + 224] > mem[_356 + 50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if mem[_356 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_356 + 50 len 14] - mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if (997 * mem[_356 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_356 + 50 len 14] - mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not (997 * mem[_356 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                        revert with 'NH{q', 18
                    if 1000 * mem[_356 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_356 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                        revert with 'NH{q', 17
                    if (1000 * mem[_356 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_356 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_356 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_356 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= mem[192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx - 1) + 224] = (1000 * mem[_356 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_356 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
            else:
                if mem[_356 + 50 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if mem[_356 + 18 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if not mem[(32 * idx) + 224]:
                    if mem[_356 + 18 len 14] < mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if mem[_356 + 18 len 14] - mem[(32 * idx) + 224] > mem[_356 + 18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if mem[_356 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_356 + 18 len 14] - mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if (997 * mem[_356 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_356 + 18 len 14] - mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not (997 * mem[_356 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                        revert with 'NH{q', 18
                    if 0 / (997 * mem[_356 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                        revert with 'NH{q', 17
                    if (0 / (997 * mem[_356 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_356 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= mem[192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_356 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                else:
                    if mem[_356 + 50 len 14] and mem[(32 * idx) + 224] > -1 / mem[_356 + 50 len 14]:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + 224]:
                        revert with 'NH{q', 18
                    if mem[_356 + 50 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_356 + 50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_356 + 50 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_356 + 50 len 14] * mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_356 + 50 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_356 + 50 len 14] * mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_356 + 18 len 14] < mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if mem[_356 + 18 len 14] - mem[(32 * idx) + 224] > mem[_356 + 18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if mem[_356 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_356 + 18 len 14] - mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if (997 * mem[_356 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_356 + 18 len 14] - mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not (997 * mem[_356 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                        revert with 'NH{q', 18
                    if 1000 * mem[_356 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_356 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                        revert with 'NH{q', 17
                    if (1000 * mem[_356 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_356 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_356 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_356 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= mem[192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx - 1) + 224] = (1000 * mem[_356 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_356 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
        else:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(arg5))
            staticcall address(arg5).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_357] == mem[_357 + 18 len 14]
            require mem[_357 + 32] == mem[_357 + 50 len 14]
            require mem[_357 + 64] == mem[_357 + 92 len 4]
            if idx >= mem[192]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 224] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
            if address(_329) == address(_332):
                if mem[_357 + 18 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if mem[_357 + 50 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if not mem[(32 * idx) + 224]:
                    if mem[_357 + 50 len 14] < mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if mem[_357 + 50 len 14] - mem[(32 * idx) + 224] > mem[_357 + 50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if mem[_357 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_357 + 50 len 14] - mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if (997 * mem[_357 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_357 + 50 len 14] - mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not (997 * mem[_357 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                        revert with 'NH{q', 18
                    if 0 / (997 * mem[_357 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                        revert with 'NH{q', 17
                    if (0 / (997 * mem[_357 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_357 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= mem[192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_357 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                else:
                    if mem[_357 + 18 len 14] and mem[(32 * idx) + 224] > -1 / mem[_357 + 18 len 14]:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + 224]:
                        revert with 'NH{q', 18
                    if mem[_357 + 18 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_357 + 18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_357 + 18 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_357 + 18 len 14] * mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_357 + 18 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_357 + 18 len 14] * mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_357 + 50 len 14] < mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if mem[_357 + 50 len 14] - mem[(32 * idx) + 224] > mem[_357 + 50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if mem[_357 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_357 + 50 len 14] - mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if (997 * mem[_357 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_357 + 50 len 14] - mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not (997 * mem[_357 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                        revert with 'NH{q', 18
                    if 1000 * mem[_357 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_357 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                        revert with 'NH{q', 17
                    if (1000 * mem[_357 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_357 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_357 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_357 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= mem[192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx - 1) + 224] = (1000 * mem[_357 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_357 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
            else:
                if mem[_357 + 50 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if mem[_357 + 18 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if not mem[(32 * idx) + 224]:
                    if mem[_357 + 18 len 14] < mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if mem[_357 + 18 len 14] - mem[(32 * idx) + 224] > mem[_357 + 18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if mem[_357 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_357 + 18 len 14] - mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if (997 * mem[_357 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_357 + 18 len 14] - mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not (997 * mem[_357 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                        revert with 'NH{q', 18
                    if 0 / (997 * mem[_357 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                        revert with 'NH{q', 17
                    if (0 / (997 * mem[_357 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_357 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= mem[192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_357 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                else:
                    if mem[_357 + 50 len 14] and mem[(32 * idx) + 224] > -1 / mem[_357 + 50 len 14]:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + 224]:
                        revert with 'NH{q', 18
                    if mem[_357 + 50 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_357 + 50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_357 + 50 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_357 + 50 len 14] * mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_357 + 50 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_357 + 50 len 14] * mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_357 + 18 len 14] < mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if mem[_357 + 18 len 14] - mem[(32 * idx) + 224] > mem[_357 + 18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if mem[_357 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_357 + 18 len 14] - mem[(32 * idx) + 224]:
                        revert with 'NH{q', 17
                    if (997 * mem[_357 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_357 + 18 len 14] - mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not (997 * mem[_357 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                        revert with 'NH{q', 18
                    if 1000 * mem[_357 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_357 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                        revert with 'NH{q', 17
                    if (1000 * mem[_357 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_357 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_357 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_357 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= mem[192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx - 1) + 224] = (1000 * mem[_357 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_357 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
    if 0 >= mem[192]:
        revert with 'NH{q', 50
    _322 = mem[224]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _338 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_338] == mem[_338]
    if mem[_338] <= _322:
        revert with 0, 'B5'
    if arg3 <= _322:
        revert with 0, 'B55'
    mem[mem[64] + 4] = address(arg5)
    mem[mem[64] + 36] = _322
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg5), _322
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _388 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_388] == bool(mem[_388])
    _420 = mem[64]
    mem[64] = mem[64] + 32
    mem[_420 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    mem[_420 + 36] = 0
    mem[_420 + 68] = arg4
    mem[_420 + 100] = this.address
    mem[_420 + 132] = 128
    mem[_420 + 164] = mem[_420]
    mem[_420 + 196 len ceil32(mem[_420])] = mem[_420 + 32 len ceil32(mem[_420])]
    if ceil32(mem[_420]) > mem[_420]:
        mem[_420 + mem[_420] + 196] = 0
    require ext_code.size(address(arg5))
    call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, arg4, address(this.address), 128, mem[_420], mem[_420 + 196 len ceil32(mem[_420])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5c781cb4(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == address(arg5)
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0, 'B1'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 0, 'B7'
    mem[0] = msg.sender
    mem[32] = 0
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0, 'B1'
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = address(arg1)
    mem[ceil32(return_data.size) + 160] = address(arg2)
    mem[ceil32(return_data.size) + 192] = 2
    mem[64] = ceil32(return_data.size) + 288
    mem[ceil32(return_data.size) + 224 len 64] = call.data[calldata.size len 64]
    mem[ceil32(return_data.size) + 224] = arg3
    if var241003 < 1:
        revert with 'NH{q', 17
    if var245002 < var245001:
        if var247001 < 2:
            if var259003 > -2:
                revert with 'NH{q', 17
            idx = var261002 + 1
            s = var261006
            t = var261010
            while idx < 2:
                _6410 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                if address(s) == mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(s) < mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                    if not address(s):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6428 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_6428] == mem[_6428 + 18 len 14]
                    require mem[_6428 + 32] == mem[_6428 + 50 len 14]
                    require mem[_6428 + 64] == mem[_6428 + 92 len 4]
                    if t >= mem[ceil32(return_data.size) + 192]:
                        revert with 'NH{q', 50
                    if mem[(32 * t) + ceil32(return_data.size) + 224] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(s):
                        if mem[_6428 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_6428 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[(32 * t) + ceil32(return_data.size) + 224] and 997 > -1 / mem[(32 * t) + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 17
                        if 997 * mem[(32 * t) + ceil32(return_data.size) + 224] / 997 != mem[(32 * t) + ceil32(return_data.size) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_6428 + 50 len 14]:
                            if 997 * mem[(32 * t) + ceil32(return_data.size) + 224] and mem[_6428 + 50 len 14] > -1 / 997 * mem[(32 * t) + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 17
                            if not mem[_6428 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 997 * mem[(32 * t) + ceil32(return_data.size) + 224] * mem[_6428 + 50 len 14] / mem[_6428 + 50 len 14] != 997 * mem[(32 * t) + ceil32(return_data.size) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_6428 + 18 len 14] and 1000 > -1 / mem[_6428 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_6428 + 18 len 14] / 1000 != mem[_6428 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_6428 + 18 len 14] > (-997 * mem[(32 * t) + ceil32(return_data.size) + 224]) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_6428 + 18 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224]) < 1000 * mem[_6428 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_6428 + 18 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224]):
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[ceil32(return_data.size) + 192]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + ceil32(return_data.size) + 224] = 997 * mem[(32 * t) + ceil32(return_data.size) + 224] * mem[_6428 + 50 len 14] / (1000 * mem[_6428 + 18 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224])
                            if t == -1:
                                revert with 'NH{q', 17
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[ceil32(return_data.size) + 96] - 1:
                                if t + 1 >= mem[ceil32(return_data.size) + 96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + ceil32(return_data.size) + 128]
                                t = t + 1
                                continue 
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 'NH{q', 17
                            if mem[ceil32(return_data.size) + 96] - 1 >= mem[ceil32(return_data.size) + 192]:
                                revert with 'NH{q', 50
                            if arg4 >= mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 224]:
                                revert with 0, 'B5'
                            mem[mem[64] + 4] = address(arg5)
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg5), arg3
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6819 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6819] == bool(mem[_6819])
                            # nil
                        else:
                            if mem[_6428 + 18 len 14] and 1000 > -1 / mem[_6428 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_6428 + 18 len 14] / 1000 != mem[_6428 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_6428 + 18 len 14] > (-997 * mem[(32 * t) + ceil32(return_data.size) + 224]) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_6428 + 18 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224]) < 1000 * mem[_6428 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_6428 + 18 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224]):
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[ceil32(return_data.size) + 192]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + ceil32(return_data.size) + 224] = 0 / (1000 * mem[_6428 + 18 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224])
                            if t == -1:
                                revert with 'NH{q', 17
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[ceil32(return_data.size) + 96] - 1:
                                if t + 1 >= mem[ceil32(return_data.size) + 96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + ceil32(return_data.size) + 128]
                                t = t + 1
                                continue 
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 'NH{q', 17
                            if mem[ceil32(return_data.size) + 96] - 1 >= mem[ceil32(return_data.size) + 192]:
                                revert with 'NH{q', 50
                            _6675 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 224]
                            if arg4 >= mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 224]:
                                revert with 0, 'B5'
                            mem[mem[64] + 4] = address(arg5)
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg5), arg3
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6755 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6755] == bool(mem[_6755])
                            _6795 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6795 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_6795 + 36] = _6675
                            mem[_6795 + 68] = 0
                            mem[_6795 + 100] = this.address
                            mem[_6795 + 132] = 128
                            mem[_6795 + 164] = mem[_6795]
                            idx = 0
                            while idx < mem[_6795]:
                                mem[_6795 + idx + 196] = mem[_6795 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_6795]) > mem[_6795]:
                                mem[_6795 + mem[_6795] + 196] = 0
                            require ext_code.size(address(arg5))
                            call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6675, 0, address(this.address), 128, mem[_6795], mem[_6795 + 196 len ceil32(mem[_6795])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if mem[_6428 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_6428 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[(32 * t) + ceil32(return_data.size) + 224] and 997 > -1 / mem[(32 * t) + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 17
                        if 997 * mem[(32 * t) + ceil32(return_data.size) + 224] / 997 != mem[(32 * t) + ceil32(return_data.size) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_6428 + 18 len 14]:
                            if 997 * mem[(32 * t) + ceil32(return_data.size) + 224] and mem[_6428 + 18 len 14] > -1 / 997 * mem[(32 * t) + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 17
                            if not mem[_6428 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 997 * mem[(32 * t) + ceil32(return_data.size) + 224] * mem[_6428 + 18 len 14] / mem[_6428 + 18 len 14] != 997 * mem[(32 * t) + ceil32(return_data.size) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_6428 + 50 len 14] and 1000 > -1 / mem[_6428 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_6428 + 50 len 14] / 1000 != mem[_6428 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_6428 + 50 len 14] > (-997 * mem[(32 * t) + ceil32(return_data.size) + 224]) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_6428 + 50 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224]) < 1000 * mem[_6428 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_6428 + 50 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224]):
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[ceil32(return_data.size) + 192]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + ceil32(return_data.size) + 224] = 997 * mem[(32 * t) + ceil32(return_data.size) + 224] * mem[_6428 + 18 len 14] / (1000 * mem[_6428 + 50 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224])
                            if t == -1:
                                revert with 'NH{q', 17
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[ceil32(return_data.size) + 96] - 1:
                                if t + 1 >= mem[ceil32(return_data.size) + 96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + ceil32(return_data.size) + 128]
                                t = t + 1
                                continue 
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 'NH{q', 17
                            if mem[ceil32(return_data.size) + 96] - 1 >= mem[ceil32(return_data.size) + 192]:
                                revert with 'NH{q', 50
                            if arg4 >= mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 224]:
                                revert with 0, 'B5'
                            mem[mem[64] + 4] = address(arg5)
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg5), arg3
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6820 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6820] == bool(mem[_6820])
                            # nil
                        else:
                            if mem[_6428 + 50 len 14] and 1000 > -1 / mem[_6428 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_6428 + 50 len 14] / 1000 != mem[_6428 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_6428 + 50 len 14] > (-997 * mem[(32 * t) + ceil32(return_data.size) + 224]) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_6428 + 50 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224]) < 1000 * mem[_6428 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_6428 + 50 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224]):
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[ceil32(return_data.size) + 192]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + ceil32(return_data.size) + 224] = 0 / (1000 * mem[_6428 + 50 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224])
                            if t == -1:
                                revert with 'NH{q', 17
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[ceil32(return_data.size) + 96] - 1:
                                if t + 1 >= mem[ceil32(return_data.size) + 96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + ceil32(return_data.size) + 128]
                                t = t + 1
                                continue 
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 'NH{q', 17
                            if mem[ceil32(return_data.size) + 96] - 1 >= mem[ceil32(return_data.size) + 192]:
                                revert with 'NH{q', 50
                            _6676 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 224]
                            if arg4 >= mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 224]:
                                revert with 0, 'B5'
                            mem[mem[64] + 4] = address(arg5)
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg5), arg3
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6756 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6756] == bool(mem[_6756])
                            _6796 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6796 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_6796 + 36] = _6676
                            mem[_6796 + 68] = 0
                            mem[_6796 + 100] = this.address
                            mem[_6796 + 132] = 128
                            mem[_6796 + 164] = mem[_6796]
                            idx = 0
                            while idx < mem[_6796]:
                                mem[_6796 + idx + 196] = mem[_6796 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_6796]) > mem[_6796]:
                                mem[_6796 + mem[_6796] + 196] = 0
                            require ext_code.size(address(arg5))
                            call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6676, 0, address(this.address), 128, mem[_6796], mem[_6796 + 196 len ceil32(mem[_6796])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6429 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_6429] == mem[_6429 + 18 len 14]
                    require mem[_6429 + 32] == mem[_6429 + 50 len 14]
                    require mem[_6429 + 64] == mem[_6429 + 92 len 4]
                    if t >= mem[ceil32(return_data.size) + 192]:
                        revert with 'NH{q', 50
                    if mem[(32 * t) + ceil32(return_data.size) + 224] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(_6410):
                        if mem[_6429 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_6429 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[(32 * t) + ceil32(return_data.size) + 224] and 997 > -1 / mem[(32 * t) + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 17
                        if 997 * mem[(32 * t) + ceil32(return_data.size) + 224] / 997 != mem[(32 * t) + ceil32(return_data.size) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_6429 + 50 len 14]:
                            if 997 * mem[(32 * t) + ceil32(return_data.size) + 224] and mem[_6429 + 50 len 14] > -1 / 997 * mem[(32 * t) + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 17
                            if not mem[_6429 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 997 * mem[(32 * t) + ceil32(return_data.size) + 224] * mem[_6429 + 50 len 14] / mem[_6429 + 50 len 14] != 997 * mem[(32 * t) + ceil32(return_data.size) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_6429 + 18 len 14] and 1000 > -1 / mem[_6429 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_6429 + 18 len 14] / 1000 != mem[_6429 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_6429 + 18 len 14] > (-997 * mem[(32 * t) + ceil32(return_data.size) + 224]) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_6429 + 18 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224]) < 1000 * mem[_6429 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_6429 + 18 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224]):
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[ceil32(return_data.size) + 192]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + ceil32(return_data.size) + 224] = 997 * mem[(32 * t) + ceil32(return_data.size) + 224] * mem[_6429 + 50 len 14] / (1000 * mem[_6429 + 18 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224])
                            if t == -1:
                                revert with 'NH{q', 17
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[ceil32(return_data.size) + 96] - 1:
                                if t + 1 >= mem[ceil32(return_data.size) + 96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + ceil32(return_data.size) + 128]
                                t = t + 1
                                continue 
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 'NH{q', 17
                            if mem[ceil32(return_data.size) + 96] - 1 >= mem[ceil32(return_data.size) + 192]:
                                revert with 'NH{q', 50
                            if arg4 >= mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 224]:
                                revert with 0, 'B5'
                            mem[mem[64] + 4] = address(arg5)
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg5), arg3
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6821 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6821] == bool(mem[_6821])
                            # nil
                        else:
                            if mem[_6429 + 18 len 14] and 1000 > -1 / mem[_6429 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_6429 + 18 len 14] / 1000 != mem[_6429 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_6429 + 18 len 14] > (-997 * mem[(32 * t) + ceil32(return_data.size) + 224]) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_6429 + 18 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224]) < 1000 * mem[_6429 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_6429 + 18 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224]):
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[ceil32(return_data.size) + 192]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + ceil32(return_data.size) + 224] = 0 / (1000 * mem[_6429 + 18 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224])
                            if t == -1:
                                revert with 'NH{q', 17
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[ceil32(return_data.size) + 96] - 1:
                                if t + 1 >= mem[ceil32(return_data.size) + 96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + ceil32(return_data.size) + 128]
                                t = t + 1
                                continue 
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 'NH{q', 17
                            if mem[ceil32(return_data.size) + 96] - 1 >= mem[ceil32(return_data.size) + 192]:
                                revert with 'NH{q', 50
                            _6677 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 224]
                            if arg4 >= mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 224]:
                                revert with 0, 'B5'
                            mem[mem[64] + 4] = address(arg5)
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg5), arg3
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6757 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6757] == bool(mem[_6757])
                            _6797 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6797 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_6797 + 36] = _6677
                            mem[_6797 + 68] = 0
                            mem[_6797 + 100] = this.address
                            mem[_6797 + 132] = 128
                            mem[_6797 + 164] = mem[_6797]
                            idx = 0
                            while idx < mem[_6797]:
                                mem[_6797 + idx + 196] = mem[_6797 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_6797]) > mem[_6797]:
                                mem[_6797 + mem[_6797] + 196] = 0
                            require ext_code.size(address(arg5))
                            call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6677, 0, address(this.address), 128, mem[_6797], mem[_6797 + 196 len ceil32(mem[_6797])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if mem[_6429 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_6429 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[(32 * t) + ceil32(return_data.size) + 224] and 997 > -1 / mem[(32 * t) + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 17
                        if 997 * mem[(32 * t) + ceil32(return_data.size) + 224] / 997 != mem[(32 * t) + ceil32(return_data.size) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_6429 + 18 len 14]:
                            if 997 * mem[(32 * t) + ceil32(return_data.size) + 224] and mem[_6429 + 18 len 14] > -1 / 997 * mem[(32 * t) + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 17
                            if not mem[_6429 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 997 * mem[(32 * t) + ceil32(return_data.size) + 224] * mem[_6429 + 18 len 14] / mem[_6429 + 18 len 14] != 997 * mem[(32 * t) + ceil32(return_data.size) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_6429 + 50 len 14] and 1000 > -1 / mem[_6429 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_6429 + 50 len 14] / 1000 != mem[_6429 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_6429 + 50 len 14] > (-997 * mem[(32 * t) + ceil32(return_data.size) + 224]) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_6429 + 50 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224]) < 1000 * mem[_6429 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_6429 + 50 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224]):
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[ceil32(return_data.size) + 192]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + ceil32(return_data.size) + 224] = 997 * mem[(32 * t) + ceil32(return_data.size) + 224] * mem[_6429 + 18 len 14] / (1000 * mem[_6429 + 50 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224])
                            if t == -1:
                                revert with 'NH{q', 17
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[ceil32(return_data.size) + 96] - 1:
                                if t + 1 >= mem[ceil32(return_data.size) + 96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + ceil32(return_data.size) + 128]
                                t = t + 1
                                continue 
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 'NH{q', 17
                            if mem[ceil32(return_data.size) + 96] - 1 >= mem[ceil32(return_data.size) + 192]:
                                revert with 'NH{q', 50
                            if arg4 >= mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 224]:
                                revert with 0, 'B5'
                            mem[mem[64] + 4] = address(arg5)
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg5), arg3
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6822 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6822] == bool(mem[_6822])
                            # nil
                        else:
                            if mem[_6429 + 50 len 14] and 1000 > -1 / mem[_6429 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_6429 + 50 len 14] / 1000 != mem[_6429 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_6429 + 50 len 14] > (-997 * mem[(32 * t) + ceil32(return_data.size) + 224]) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_6429 + 50 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224]) < 1000 * mem[_6429 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_6429 + 50 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224]):
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[ceil32(return_data.size) + 192]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + ceil32(return_data.size) + 224] = 0 / (1000 * mem[_6429 + 50 len 14]) + (997 * mem[(32 * t) + ceil32(return_data.size) + 224])
                            if t == -1:
                                revert with 'NH{q', 17
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[ceil32(return_data.size) + 96] - 1:
                                if t + 1 >= mem[ceil32(return_data.size) + 96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + ceil32(return_data.size) + 128]
                                t = t + 1
                                continue 
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 'NH{q', 17
                            if mem[ceil32(return_data.size) + 96] - 1 >= mem[ceil32(return_data.size) + 192]:
                                revert with 'NH{q', 50
                            _6678 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 224]
                            if arg4 >= mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 224]:
                                revert with 0, 'B5'
                            mem[mem[64] + 4] = address(arg5)
                            mem[mem[64] + 36] = arg3
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg5), arg3
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6758 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6758] == bool(mem[_6758])
                            _6798 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6798 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_6798 + 36] = _6678
                            mem[_6798 + 68] = 0
                            mem[_6798 + 100] = this.address
                            mem[_6798 + 132] = 128
                            mem[_6798 + 164] = mem[_6798]
                            idx = 0
                            while idx < mem[_6798]:
                                mem[_6798 + idx + 196] = mem[_6798 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_6798]) > mem[_6798]:
                                mem[_6798 + mem[_6798] + 196] = 0
                            require ext_code.size(address(arg5))
                            call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6678, 0, address(this.address), 128, mem[_6798], mem[_6798 + 196 len ceil32(mem[_6798])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        revert with 'NH{q', 50
    if arg4 >= call.data[calldata.size + 32]:
        revert with 0, 'B5'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg5), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg5))
    call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args call.data[calldata.size + 32], 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
