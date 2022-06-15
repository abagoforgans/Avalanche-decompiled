contract main {




// =====================  Runtime code  =====================


#
#  - sub_24c39baa(?)
#  - withdrawCollateral(uint256 arg1)
#  - sub_8abc77fa(?)
#
const sub_d9c16ba3(?) = 100000


address exchangeAddress;
address liquidatorAddress;
address sub_487f8966Address;
address sub_c7011a56Address;

function liquidator() payable {
    return liquidatorAddress
}

function sub_487f8966(?) payable {
    return sub_487f8966Address
}

function sub_7baab3da(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7baab3da[arg1].field_512, sub_7baab3da[arg1].field_768
}

function sub_c7011a56(?) payable {
    return sub_c7011a56Address
}

function exchange() payable {
    return exchangeAddress
}

function _fallback() payable {
    revert
}

function setExchangeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not exchangeAddress
    exchangeAddress = arg1
}

function sub_1ba09046(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(sub_c7011a56Address):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call sub_c7011a56Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if arg1 < 0:
            if arg1 + sub_7baab3da[address(arg2)].field_512 >= sub_7baab3da[address(arg2)].field_512:
                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
        else:
            if arg1 + sub_7baab3da[address(arg2)].field_512 < sub_7baab3da[address(arg2)].field_512:
                if arg1 >= 0:
                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if arg1 + sub_7baab3da[address(arg2)].field_512 >= sub_7baab3da[address(arg2)].field_512:
                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if arg1 < 0:
            if arg1 + sub_7baab3da[address(arg2)].field_512 >= sub_7baab3da[address(arg2)].field_512:
                revert with 0, 
                            32,
                            33,
                            0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
        else:
            if arg1 + sub_7baab3da[address(arg2)].field_512 < sub_7baab3da[address(arg2)].field_512:
                if arg1 >= 0:
                    revert with 0, 
                                32,
                                33,
                                0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if arg1 + sub_7baab3da[address(arg2)].field_512 >= sub_7baab3da[address(arg2)].field_512:
                    revert with 0, 
                                32,
                                33,
                                0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
    sub_7baab3da[address(arg2)].field_512 += arg1
}

function depositCollateral(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(sub_c7011a56Address):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call sub_c7011a56Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if arg1 < 0:
            if arg1 + sub_7baab3da[msg.sender].field_512 >= sub_7baab3da[msg.sender].field_512:
                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
        else:
            if arg1 + sub_7baab3da[msg.sender].field_512 < sub_7baab3da[msg.sender].field_512:
                if arg1 >= 0:
                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if arg1 + sub_7baab3da[msg.sender].field_512 >= sub_7baab3da[msg.sender].field_512:
                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if arg1 < 0:
            if arg1 + sub_7baab3da[msg.sender].field_512 >= sub_7baab3da[msg.sender].field_512:
                revert with 0, 
                            32,
                            33,
                            0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
        else:
            if arg1 + sub_7baab3da[msg.sender].field_512 < sub_7baab3da[msg.sender].field_512:
                if arg1 >= 0:
                    revert with 0, 
                                32,
                                33,
                                0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if arg1 + sub_7baab3da[msg.sender].field_512 >= sub_7baab3da[msg.sender].field_512:
                    revert with 0, 
                                32,
                                33,
                                0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
    sub_7baab3da[msg.sender].field_512 += arg1
}

function sub_5c076727(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require msg.sender == exchangeAddress
    if sub_7baab3da[address(arg1)][arg2].field_0:
        if sub_7baab3da[address(arg1)][arg2].field_256 < 0:
            if sub_7baab3da[address(arg1)].field_512 - sub_7baab3da[address(arg1)][arg2].field_256 <= sub_7baab3da[address(arg1)].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0x775369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f,
                            mem[200 len 28]
        else:
            if sub_7baab3da[address(arg1)].field_512 - sub_7baab3da[address(arg1)][arg2].field_256 > sub_7baab3da[address(arg1)].field_512:
                if sub_7baab3da[address(arg1)][arg2].field_256 >= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                36,
                                0x775369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f,
                                mem[200 len 28]
                if sub_7baab3da[address(arg1)].field_512 - sub_7baab3da[address(arg1)][arg2].field_256 <= sub_7baab3da[address(arg1)].field_512:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                36,
                                0x775369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f,
                                mem[200 len 28]
        sub_7baab3da[address(arg1)].field_512 -= sub_7baab3da[address(arg1)][arg2].field_256
        if arg3:
            if not arg3:
                if sub_7baab3da[address(arg1)].field_512 < sub_7baab3da[address(arg1)].field_512:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                                mem[197 len 31]
            else:
                if -1 == arg3:
                    if sub_7baab3da[address(arg1)][arg2].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    39,
                                    0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[203 len 25]
                require arg3
                if sub_7baab3da[address(arg1)][arg2].field_0 * arg3 / arg3 != sub_7baab3da[address(arg1)][arg2].field_0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                39,
                                0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[203 len 25]
                if sub_7baab3da[address(arg1)][arg2].field_0 * arg3 / 100 * 10^18 < 0:
                    if (sub_7baab3da[address(arg1)][arg2].field_0 * arg3 / 100 * 10^18) + sub_7baab3da[address(arg1)].field_512 >= sub_7baab3da[address(arg1)].field_512:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                                    mem[197 len 31]
                else:
                    if (sub_7baab3da[address(arg1)][arg2].field_0 * arg3 / 100 * 10^18) + sub_7baab3da[address(arg1)].field_512 < sub_7baab3da[address(arg1)].field_512:
                        if sub_7baab3da[address(arg1)][arg2].field_0 * arg3 / 100 * 10^18 >= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (sub_7baab3da[address(arg1)][arg2].field_0 * arg3 / 100 * 10^18) + sub_7baab3da[address(arg1)].field_512 >= sub_7baab3da[address(arg1)].field_512:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                                        mem[197 len 31]
                sub_7baab3da[address(arg1)].field_512 += sub_7baab3da[address(arg1)][arg2].field_0 * arg3 / 100 * 10^18
        sub_7baab3da[address(arg1)][arg2].field_256 = 0
        sub_7baab3da[address(arg1)][arg2].field_0 = 0
        if sub_7baab3da[address(arg1)][arg2].field_512 != sub_7baab3da[address(arg1)].field_768 - 1:
            require sub_7baab3da[address(arg1)].field_768 - 1 < sub_7baab3da[address(arg1)].field_256
            sub_7baab3da[address(arg1)][stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_7baab3da', 4))) + sub_7baab3da[address(arg1)].field_768].field_0].field_512 = sub_7baab3da[address(arg1)][arg2].field_512
            require sub_7baab3da[address(arg1)][arg2].field_512 < sub_7baab3da[address(arg1)].field_256
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_7baab3da', 4))) + sub_7baab3da[address(arg1)][arg2].field_512].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_7baab3da', 4))) + sub_7baab3da[address(arg1)].field_768].field_0
        sub_7baab3da[address(arg1)].field_768--
}

function sub_10346346(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96 len 512] = call.data[calldata.size len 512]
    mem[0] = address(arg1)
    mem[32] = 4
    mem[64] = 1120
    mem[608 len 512] = call.data[calldata.size len 512]
    idx = 0
    s = 0
    while idx < sub_7baab3da[address(arg1)].field_768:
        require idx < sub_7baab3da[address(arg1)].field_256
        mem[0] = sha3(address(arg1), 4) + 1
        mem[mem[64]] = 0xd600170b00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sub_7baab3da[address(arg1)][idx + 1].field_0
        require ext_code.size(sub_487f8966Address)
        staticcall sub_487f8966Address.0xd600170b with:
                gas gas_remaining wei
               args sub_7baab3da[address(arg1)][idx + 1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _957 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _959 = mem[_957]
        require mem[_957] <= test266151307()
        require _957 + mem[_957] + 31 < _957 + return_data.size
        _961 = mem[_957 + mem[_957]]
        require mem[_957 + mem[_957]] <= test266151307()
        require _957 + ceil32(return_data.size) + (32 * mem[_957 + mem[_957]]) + 32 <= test266151307() and (32 * mem[_957 + mem[_957]]) + 32 >= 0
        mem[64] = _957 + ceil32(return_data.size) + (32 * mem[_957 + mem[_957]]) + 32
        mem[_957 + ceil32(return_data.size)] = _961
        require return_data.size >= _959 + (32 * _961) + 32
        u = _957 + _959 + 32
        v = _957 + ceil32(return_data.size) + 32
        t = 0
        while t < _961:
            require mem[u] == mem[u + 24 len 8]
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t + 1
            continue 
        mem[mem[64] + 4] = sub_7baab3da[address(arg1)][idx + 1].field_0
        require ext_code.size(sub_487f8966Address)
        staticcall sub_487f8966Address.0x8f299abe with:
                gas gas_remaining wei
               args sub_7baab3da[address(arg1)][idx + 1].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1466 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
            mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
            mem[32] = sha3(address(arg1), 4)
            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 < 0:
                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                t = 0
                while t < 16:
                    require t < mem[_957 + ceil32(return_data.size)]
                    _2001 = mem[(32 * t) + _957 + ceil32(return_data.size) + 32]
                    mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                    mem[32] = sha3(address(arg1), 4)
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                    if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                    if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                        require t < 16
                        if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require t < 16
                        t = t + 1
                        continue 
                    if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                        if uint64(_2001) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                    require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                    if -1 * uint64(_2001) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2001):
                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                    require t < 16
                    if -1 * uint64(_2001) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                        if (-1 * uint64(_2001) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    else:
                        if (-1 * uint64(_2001) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                            if -1 * uint64(_2001) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if (-1 * uint64(_2001) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require t < 16
                    mem[(32 * t) + 608] = (-1 * uint64(_2001) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                    t = t + 1
                    continue 
            else:
                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                    t = 0
                    while t < 16:
                        require t < mem[_957 + ceil32(return_data.size)]
                        _2003 = mem[(32 * t) + _957 + ceil32(return_data.size) + 32]
                        mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                        mem[32] = sha3(address(arg1), 4)
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                            require t < 16
                            if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require t < 16
                            t = t + 1
                            continue 
                        if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                            if uint64(_2003) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                        if -1 * uint64(_2003) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2003):
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        require t < 16
                        if -1 * uint64(_2003) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                            if (-1 * uint64(_2003) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        else:
                            if (-1 * uint64(_2003) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                if -1 * uint64(_2003) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (-1 * uint64(_2003) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require t < 16
                        mem[(32 * t) + 608] = (-1 * uint64(_2003) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                        t = t + 1
                        continue 
                else:
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 >= 0:
                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    t = 0
                    while t < 16:
                        require t < mem[_957 + ceil32(return_data.size)]
                        _2005 = mem[(32 * t) + _957 + ceil32(return_data.size) + 32]
                        mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                        mem[32] = sha3(address(arg1), 4)
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                            require t < 16
                            if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require t < 16
                            t = t + 1
                            continue 
                        if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                            if uint64(_2005) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                        if -1 * uint64(_2005) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2005):
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        require t < 16
                        if -1 * uint64(_2005) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                            if (-1 * uint64(_2005) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        else:
                            if (-1 * uint64(_2005) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                if -1 * uint64(_2005) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (-1 * uint64(_2005) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require t < 16
                        mem[(32 * t) + 608] = (-1 * uint64(_2005) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                        t = t + 1
                        continue 
        else:
            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != -1:
                require sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                if mem[_1466] * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != mem[_1466]:
                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                mem[32] = sha3(address(arg1), 4)
                if mem[_1466] * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / 100 * 10^18 < 0:
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 < 0:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        t = 0
                        while t < 16:
                            require t < mem[_957 + ceil32(return_data.size)]
                            _1977 = mem[(32 * t) + _957 + ceil32(return_data.size) + 32]
                            mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                            mem[32] = sha3(address(arg1), 4)
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                require t < 16
                                if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                t = t + 1
                                continue 
                            if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                if uint64(_1977) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                            if -1 * uint64(_1977) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_1977):
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require t < 16
                            if -1 * uint64(_1977) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                if (-1 * uint64(_1977) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            else:
                                if (-1 * uint64(_1977) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    if -1 * uint64(_1977) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (-1 * uint64(_1977) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require t < 16
                            mem[(32 * t) + 608] = (-1 * uint64(_1977) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                            t = t + 1
                            continue 
                    else:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            t = 0
                            while t < 16:
                                require t < mem[_957 + ceil32(return_data.size)]
                                _1979 = mem[(32 * t) + _957 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_1979) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_1979) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_1979):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_1979) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_1979) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_1979) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_1979) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_1979) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_1979) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
                        else:
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 >= 0:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            t = 0
                            while t < 16:
                                require t < mem[_957 + ceil32(return_data.size)]
                                _1981 = mem[(32 * t) + _957 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_1981) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_1981) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_1981):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_1981) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_1981) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_1981) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_1981) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_1981) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_1981) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
                else:
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 < 0:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        t = 0
                        while t < 16:
                            require t < mem[_957 + ceil32(return_data.size)]
                            _1983 = mem[(32 * t) + _957 + ceil32(return_data.size) + 32]
                            mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                            mem[32] = sha3(address(arg1), 4)
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                require t < 16
                                if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                t = t + 1
                                continue 
                            if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                if uint64(_1983) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                            if -1 * uint64(_1983) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_1983):
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require t < 16
                            if -1 * uint64(_1983) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                if (-1 * uint64(_1983) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            else:
                                if (-1 * uint64(_1983) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    if -1 * uint64(_1983) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (-1 * uint64(_1983) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require t < 16
                            mem[(32 * t) + 608] = (-1 * uint64(_1983) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                            t = t + 1
                            continue 
                    else:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            t = 0
                            while t < 16:
                                require t < mem[_957 + ceil32(return_data.size)]
                                _1985 = mem[(32 * t) + _957 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_1985) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_1985) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_1985):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_1985) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_1985) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_1985) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_1985) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_1985) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_1985) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
                        else:
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 >= 0:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            t = 0
                            while t < 16:
                                require t < mem[_957 + ceil32(return_data.size)]
                                _1987 = mem[(32 * t) + _957 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_1987) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_1987) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_1987):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_1987) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_1987) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_1987) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_1987) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_1987) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_1987) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
            else:
                if mem[_1466] == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                require sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                if mem[_1466] * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != mem[_1466]:
                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                mem[32] = sha3(address(arg1), 4)
                if mem[_1466] * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / 100 * 10^18 < 0:
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 < 0:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        t = 0
                        while t < 16:
                            require t < mem[_957 + ceil32(return_data.size)]
                            _1989 = mem[(32 * t) + _957 + ceil32(return_data.size) + 32]
                            mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                            mem[32] = sha3(address(arg1), 4)
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                require t < 16
                                if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                t = t + 1
                                continue 
                            if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                if uint64(_1989) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                            if -1 * uint64(_1989) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_1989):
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require t < 16
                            if -1 * uint64(_1989) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                if (-1 * uint64(_1989) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            else:
                                if (-1 * uint64(_1989) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    if -1 * uint64(_1989) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (-1 * uint64(_1989) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require t < 16
                            mem[(32 * t) + 608] = (-1 * uint64(_1989) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                            t = t + 1
                            continue 
                    else:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            t = 0
                            while t < 16:
                                require t < mem[_957 + ceil32(return_data.size)]
                                _1991 = mem[(32 * t) + _957 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_1991) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_1991) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_1991):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_1991) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_1991) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_1991) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_1991) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_1991) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_1991) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
                        else:
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 >= 0:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            t = 0
                            while t < 16:
                                require t < mem[_957 + ceil32(return_data.size)]
                                _1993 = mem[(32 * t) + _957 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_1993) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_1993) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_1993):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_1993) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_1993) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_1993) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_1993) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_1993) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_1993) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
                else:
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 < 0:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        t = 0
                        while t < 16:
                            require t < mem[_957 + ceil32(return_data.size)]
                            _1995 = mem[(32 * t) + _957 + ceil32(return_data.size) + 32]
                            mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                            mem[32] = sha3(address(arg1), 4)
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                require t < 16
                                if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                t = t + 1
                                continue 
                            if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                if uint64(_1995) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                            if -1 * uint64(_1995) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_1995):
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require t < 16
                            if -1 * uint64(_1995) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                if (-1 * uint64(_1995) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            else:
                                if (-1 * uint64(_1995) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    if -1 * uint64(_1995) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (-1 * uint64(_1995) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require t < 16
                            mem[(32 * t) + 608] = (-1 * uint64(_1995) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                            t = t + 1
                            continue 
                    else:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            t = 0
                            while t < 16:
                                require t < mem[_957 + ceil32(return_data.size)]
                                _1997 = mem[(32 * t) + _957 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_1997) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_1997) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_1997):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_1997) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_1997) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_1997) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_1997) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_1997) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_1997) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
                        else:
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 >= 0:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            t = 0
                            while t < 16:
                                require t < mem[_957 + ceil32(return_data.size)]
                                _1999 = mem[(32 * t) + _957 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_1999) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_1999) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_1999):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_1999) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_1999) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_1999) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_1999) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_1999) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_1999) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
        idx = idx + 1
        s = sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s
        continue 
    idx = 0
    s = 0
    while idx < 16:
        if mem[(32 * idx) + 608] <= s:
            if idx:
                idx = idx + 1
                s = s
                continue 
        require idx < 16
        idx = idx + 1
        s = mem[(32 * idx) + 608]
        continue 
    return (s / 100 * 10^18)
}

function sub_33615e99(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96 len 512] = call.data[calldata.size len 512]
    mem[0] = address(arg1)
    mem[32] = 4
    mem[64] = 1120
    mem[608 len 512] = call.data[calldata.size len 512]
    idx = 0
    s = 0
    while idx < sub_7baab3da[address(arg1)].field_768:
        require idx < sub_7baab3da[address(arg1)].field_256
        mem[0] = sha3(address(arg1), 4) + 1
        mem[mem[64]] = 0xd600170b00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sub_7baab3da[address(arg1)][idx + 1].field_0
        require ext_code.size(sub_487f8966Address)
        staticcall sub_487f8966Address.0xd600170b with:
                gas gas_remaining wei
               args sub_7baab3da[address(arg1)][idx + 1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _968 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _973 = mem[_968]
        require mem[_968] <= test266151307()
        require _968 + mem[_968] + 31 < _968 + return_data.size
        _976 = mem[_968 + mem[_968]]
        require mem[_968 + mem[_968]] <= test266151307()
        require _968 + ceil32(return_data.size) + (32 * mem[_968 + mem[_968]]) + 32 <= test266151307() and (32 * mem[_968 + mem[_968]]) + 32 >= 0
        mem[64] = _968 + ceil32(return_data.size) + (32 * mem[_968 + mem[_968]]) + 32
        mem[_968 + ceil32(return_data.size)] = _976
        require return_data.size >= _973 + (32 * _976) + 32
        u = _968 + _973 + 32
        v = _968 + ceil32(return_data.size) + 32
        t = 0
        while t < _976:
            require mem[u] == mem[u + 24 len 8]
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t + 1
            continue 
        mem[mem[64] + 4] = sub_7baab3da[address(arg1)][idx + 1].field_0
        require ext_code.size(sub_487f8966Address)
        staticcall sub_487f8966Address.0x8f299abe with:
                gas gas_remaining wei
               args sub_7baab3da[address(arg1)][idx + 1].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1496 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
            mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
            mem[32] = sha3(address(arg1), 4)
            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 < 0:
                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                t = 0
                while t < 16:
                    require t < mem[_968 + ceil32(return_data.size)]
                    _2371 = mem[(32 * t) + _968 + ceil32(return_data.size) + 32]
                    mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                    mem[32] = sha3(address(arg1), 4)
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                    if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                    if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                        require t < 16
                        if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require t < 16
                        t = t + 1
                        continue 
                    if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                        if uint64(_2371) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                    require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                    if -1 * uint64(_2371) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2371):
                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                    require t < 16
                    if -1 * uint64(_2371) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                        if (-1 * uint64(_2371) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    else:
                        if (-1 * uint64(_2371) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                            if -1 * uint64(_2371) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if (-1 * uint64(_2371) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require t < 16
                    mem[(32 * t) + 608] = (-1 * uint64(_2371) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                    t = t + 1
                    continue 
            else:
                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                    t = 0
                    while t < 16:
                        require t < mem[_968 + ceil32(return_data.size)]
                        _2373 = mem[(32 * t) + _968 + ceil32(return_data.size) + 32]
                        mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                        mem[32] = sha3(address(arg1), 4)
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                            require t < 16
                            if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require t < 16
                            t = t + 1
                            continue 
                        if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                            if uint64(_2373) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                        if -1 * uint64(_2373) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2373):
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        require t < 16
                        if -1 * uint64(_2373) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                            if (-1 * uint64(_2373) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        else:
                            if (-1 * uint64(_2373) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                if -1 * uint64(_2373) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (-1 * uint64(_2373) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require t < 16
                        mem[(32 * t) + 608] = (-1 * uint64(_2373) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                        t = t + 1
                        continue 
                else:
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 >= 0:
                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    t = 0
                    while t < 16:
                        require t < mem[_968 + ceil32(return_data.size)]
                        _2375 = mem[(32 * t) + _968 + ceil32(return_data.size) + 32]
                        mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                        mem[32] = sha3(address(arg1), 4)
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                            require t < 16
                            if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require t < 16
                            t = t + 1
                            continue 
                        if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                            if uint64(_2375) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                        if -1 * uint64(_2375) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2375):
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        require t < 16
                        if -1 * uint64(_2375) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                            if (-1 * uint64(_2375) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        else:
                            if (-1 * uint64(_2375) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                if -1 * uint64(_2375) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (-1 * uint64(_2375) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require t < 16
                        mem[(32 * t) + 608] = (-1 * uint64(_2375) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                        t = t + 1
                        continue 
        else:
            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != -1:
                require sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                if mem[_1496] * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != mem[_1496]:
                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                mem[32] = sha3(address(arg1), 4)
                if mem[_1496] * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / 100 * 10^18 < 0:
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 < 0:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        t = 0
                        while t < 16:
                            require t < mem[_968 + ceil32(return_data.size)]
                            _2347 = mem[(32 * t) + _968 + ceil32(return_data.size) + 32]
                            mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                            mem[32] = sha3(address(arg1), 4)
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                require t < 16
                                if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                t = t + 1
                                continue 
                            if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                if uint64(_2347) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                            if -1 * uint64(_2347) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2347):
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require t < 16
                            if -1 * uint64(_2347) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                if (-1 * uint64(_2347) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            else:
                                if (-1 * uint64(_2347) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    if -1 * uint64(_2347) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (-1 * uint64(_2347) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require t < 16
                            mem[(32 * t) + 608] = (-1 * uint64(_2347) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                            t = t + 1
                            continue 
                    else:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            t = 0
                            while t < 16:
                                require t < mem[_968 + ceil32(return_data.size)]
                                _2349 = mem[(32 * t) + _968 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_2349) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_2349) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2349):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_2349) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_2349) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_2349) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_2349) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_2349) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_2349) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
                        else:
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 >= 0:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            t = 0
                            while t < 16:
                                require t < mem[_968 + ceil32(return_data.size)]
                                _2351 = mem[(32 * t) + _968 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_2351) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_2351) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2351):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_2351) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_2351) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_2351) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_2351) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_2351) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_2351) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
                else:
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 < 0:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        t = 0
                        while t < 16:
                            require t < mem[_968 + ceil32(return_data.size)]
                            _2353 = mem[(32 * t) + _968 + ceil32(return_data.size) + 32]
                            mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                            mem[32] = sha3(address(arg1), 4)
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                require t < 16
                                if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                t = t + 1
                                continue 
                            if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                if uint64(_2353) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                            if -1 * uint64(_2353) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2353):
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require t < 16
                            if -1 * uint64(_2353) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                if (-1 * uint64(_2353) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            else:
                                if (-1 * uint64(_2353) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    if -1 * uint64(_2353) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (-1 * uint64(_2353) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require t < 16
                            mem[(32 * t) + 608] = (-1 * uint64(_2353) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                            t = t + 1
                            continue 
                    else:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            t = 0
                            while t < 16:
                                require t < mem[_968 + ceil32(return_data.size)]
                                _2355 = mem[(32 * t) + _968 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_2355) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_2355) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2355):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_2355) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_2355) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_2355) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_2355) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_2355) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_2355) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
                        else:
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 >= 0:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            t = 0
                            while t < 16:
                                require t < mem[_968 + ceil32(return_data.size)]
                                _2357 = mem[(32 * t) + _968 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_2357) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_2357) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2357):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_2357) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_2357) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_2357) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_2357) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_2357) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_2357) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
            else:
                if mem[_1496] == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                require sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                if mem[_1496] * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != mem[_1496]:
                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                mem[32] = sha3(address(arg1), 4)
                if mem[_1496] * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / 100 * 10^18 < 0:
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 < 0:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        t = 0
                        while t < 16:
                            require t < mem[_968 + ceil32(return_data.size)]
                            _2359 = mem[(32 * t) + _968 + ceil32(return_data.size) + 32]
                            mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                            mem[32] = sha3(address(arg1), 4)
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                require t < 16
                                if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                t = t + 1
                                continue 
                            if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                if uint64(_2359) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                            if -1 * uint64(_2359) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2359):
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require t < 16
                            if -1 * uint64(_2359) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                if (-1 * uint64(_2359) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            else:
                                if (-1 * uint64(_2359) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    if -1 * uint64(_2359) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (-1 * uint64(_2359) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require t < 16
                            mem[(32 * t) + 608] = (-1 * uint64(_2359) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                            t = t + 1
                            continue 
                    else:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            t = 0
                            while t < 16:
                                require t < mem[_968 + ceil32(return_data.size)]
                                _2361 = mem[(32 * t) + _968 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_2361) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_2361) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2361):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_2361) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_2361) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_2361) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_2361) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_2361) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_2361) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
                        else:
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 >= 0:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            t = 0
                            while t < 16:
                                require t < mem[_968 + ceil32(return_data.size)]
                                _2363 = mem[(32 * t) + _968 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_2363) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_2363) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2363):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_2363) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_2363) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_2363) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_2363) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_2363) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_2363) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
                else:
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 < 0:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        t = 0
                        while t < 16:
                            require t < mem[_968 + ceil32(return_data.size)]
                            _2365 = mem[(32 * t) + _968 + ceil32(return_data.size) + 32]
                            mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                            mem[32] = sha3(address(arg1), 4)
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                require t < 16
                                if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                t = t + 1
                                continue 
                            if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                if uint64(_2365) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                            if -1 * uint64(_2365) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2365):
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require t < 16
                            if -1 * uint64(_2365) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                if (-1 * uint64(_2365) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            else:
                                if (-1 * uint64(_2365) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    if -1 * uint64(_2365) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (-1 * uint64(_2365) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require t < 16
                            mem[(32 * t) + 608] = (-1 * uint64(_2365) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                            t = t + 1
                            continue 
                    else:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            t = 0
                            while t < 16:
                                require t < mem[_968 + ceil32(return_data.size)]
                                _2367 = mem[(32 * t) + _968 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_2367) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_2367) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2367):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_2367) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_2367) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_2367) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_2367) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_2367) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_2367) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
                        else:
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 >= 0:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            t = 0
                            while t < 16:
                                require t < mem[_968 + ceil32(return_data.size)]
                                _2369 = mem[(32 * t) + _968 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_2369) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_2369) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2369):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_2369) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_2369) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_2369) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_2369) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_2369) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_2369) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
        idx = idx + 1
        s = sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s
        continue 
    if s < 0:
        if -s <= 0:
            revert with 0, 32, 36, 0x775369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[mem[64] + 104 len 28]
    else:
        if -s > 0:
            if s >= 0:
                revert with 0, 32, 36, 0x775369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[mem[64] + 104 len 28]
            if -s <= 0:
                revert with 0, 32, 36, 0x775369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[mem[64] + 104 len 28]
    idx = 0
    t = 0
    while idx < 16:
        if mem[(32 * idx) + 608] <= t:
            if idx:
                idx = idx + 1
                t = t
                continue 
        require idx < 16
        idx = idx + 1
        t = mem[(32 * idx) + 608]
        continue 
    if s < 0:
        if s + (t / 100 * 10^18) >= t / 100 * 10^18:
            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    else:
        if s + (t / 100 * 10^18) < t / 100 * 10^18:
            if s >= 0:
                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if s + (t / 100 * 10^18) >= t / 100 * 10^18:
                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if -s < 0:
        if (2 * s) + (t / 100 * 10^18) <= s + (t / 100 * 10^18):
            revert with 0, 32, 36, 0x775369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[mem[64] + 104 len 28]
    else:
        if (2 * s) + (t / 100 * 10^18) > s + (t / 100 * 10^18):
            if -s >= 0:
                revert with 0, 32, 36, 0x775369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[mem[64] + 104 len 28]
            if (2 * s) + (t / 100 * 10^18) <= s + (t / 100 * 10^18):
                revert with 0, 32, 36, 0x775369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[mem[64] + 104 len 28]
    if not (2 * s) + (t / 100 * 10^18):
        return 0
    require (2 * s) + (t / 100 * 10^18)
    if (200000 * s) + (100000 * t / 100 * 10^18) / (2 * s) + (t / 100 * 10^18) != 100000:
        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
    return ((200000 * s) + (100000 * t / 100 * 10^18))
}

function sub_1429ccbf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96 len 512] = call.data[calldata.size len 512]
    mem[0] = address(arg1)
    mem[32] = 4
    mem[64] = 1120
    mem[608 len 512] = call.data[calldata.size len 512]
    idx = 0
    s = 0
    while idx < sub_7baab3da[address(arg1)].field_768:
        require idx < sub_7baab3da[address(arg1)].field_256
        mem[0] = sha3(address(arg1), 4) + 1
        mem[mem[64]] = 0xd600170b00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sub_7baab3da[address(arg1)][idx + 1].field_0
        require ext_code.size(sub_487f8966Address)
        staticcall sub_487f8966Address.0xd600170b with:
                gas gas_remaining wei
               args sub_7baab3da[address(arg1)][idx + 1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _985 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _990 = mem[_985]
        require mem[_985] <= test266151307()
        require _985 + mem[_985] + 31 < _985 + return_data.size
        _993 = mem[_985 + mem[_985]]
        require mem[_985 + mem[_985]] <= test266151307()
        require _985 + ceil32(return_data.size) + (32 * mem[_985 + mem[_985]]) + 32 <= test266151307() and (32 * mem[_985 + mem[_985]]) + 32 >= 0
        mem[64] = _985 + ceil32(return_data.size) + (32 * mem[_985 + mem[_985]]) + 32
        mem[_985 + ceil32(return_data.size)] = _993
        require return_data.size >= _990 + (32 * _993) + 32
        u = _985 + _990 + 32
        v = _985 + ceil32(return_data.size) + 32
        t = 0
        while t < _993:
            require mem[u] == mem[u + 24 len 8]
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t + 1
            continue 
        mem[mem[64] + 4] = sub_7baab3da[address(arg1)][idx + 1].field_0
        require ext_code.size(sub_487f8966Address)
        staticcall sub_487f8966Address.0x8f299abe with:
                gas gas_remaining wei
               args sub_7baab3da[address(arg1)][idx + 1].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1513 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
            mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
            mem[32] = sha3(address(arg1), 4)
            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 < 0:
                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                t = 0
                while t < 16:
                    require t < mem[_985 + ceil32(return_data.size)]
                    _2823 = mem[(32 * t) + _985 + ceil32(return_data.size) + 32]
                    mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                    mem[32] = sha3(address(arg1), 4)
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                    if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                    if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                        require t < 16
                        if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require t < 16
                        t = t + 1
                        continue 
                    if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                        if uint64(_2823) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                    require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                    if -1 * uint64(_2823) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2823):
                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                    require t < 16
                    if -1 * uint64(_2823) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                        if (-1 * uint64(_2823) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    else:
                        if (-1 * uint64(_2823) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                            if -1 * uint64(_2823) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if (-1 * uint64(_2823) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require t < 16
                    mem[(32 * t) + 608] = (-1 * uint64(_2823) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                    t = t + 1
                    continue 
            else:
                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                    t = 0
                    while t < 16:
                        require t < mem[_985 + ceil32(return_data.size)]
                        _2825 = mem[(32 * t) + _985 + ceil32(return_data.size) + 32]
                        mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                        mem[32] = sha3(address(arg1), 4)
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                            require t < 16
                            if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require t < 16
                            t = t + 1
                            continue 
                        if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                            if uint64(_2825) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                        if -1 * uint64(_2825) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2825):
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        require t < 16
                        if -1 * uint64(_2825) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                            if (-1 * uint64(_2825) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        else:
                            if (-1 * uint64(_2825) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                if -1 * uint64(_2825) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (-1 * uint64(_2825) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require t < 16
                        mem[(32 * t) + 608] = (-1 * uint64(_2825) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                        t = t + 1
                        continue 
                else:
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 >= 0:
                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    t = 0
                    while t < 16:
                        require t < mem[_985 + ceil32(return_data.size)]
                        _2827 = mem[(32 * t) + _985 + ceil32(return_data.size) + 32]
                        mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                        mem[32] = sha3(address(arg1), 4)
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                            require t < 16
                            if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require t < 16
                            t = t + 1
                            continue 
                        if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                            if uint64(_2827) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                        if -1 * uint64(_2827) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2827):
                            revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                        require t < 16
                        if -1 * uint64(_2827) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                            if (-1 * uint64(_2827) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        else:
                            if (-1 * uint64(_2827) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                if -1 * uint64(_2827) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (-1 * uint64(_2827) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require t < 16
                        mem[(32 * t) + 608] = (-1 * uint64(_2827) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                        t = t + 1
                        continue 
        else:
            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != -1:
                require sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                if mem[_1513] * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != mem[_1513]:
                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                mem[32] = sha3(address(arg1), 4)
                if mem[_1513] * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / 100 * 10^18 < 0:
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 < 0:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        t = 0
                        while t < 16:
                            require t < mem[_985 + ceil32(return_data.size)]
                            _2799 = mem[(32 * t) + _985 + ceil32(return_data.size) + 32]
                            mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                            mem[32] = sha3(address(arg1), 4)
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                require t < 16
                                if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                t = t + 1
                                continue 
                            if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                if uint64(_2799) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                            if -1 * uint64(_2799) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2799):
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require t < 16
                            if -1 * uint64(_2799) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                if (-1 * uint64(_2799) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            else:
                                if (-1 * uint64(_2799) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    if -1 * uint64(_2799) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (-1 * uint64(_2799) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require t < 16
                            mem[(32 * t) + 608] = (-1 * uint64(_2799) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                            t = t + 1
                            continue 
                    else:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            t = 0
                            while t < 16:
                                require t < mem[_985 + ceil32(return_data.size)]
                                _2801 = mem[(32 * t) + _985 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_2801) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_2801) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2801):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_2801) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_2801) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_2801) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_2801) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_2801) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_2801) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
                        else:
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 >= 0:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            t = 0
                            while t < 16:
                                require t < mem[_985 + ceil32(return_data.size)]
                                _2803 = mem[(32 * t) + _985 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_2803) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_2803) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2803):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_2803) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_2803) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_2803) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_2803) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_2803) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_2803) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
                else:
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 < 0:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        t = 0
                        while t < 16:
                            require t < mem[_985 + ceil32(return_data.size)]
                            _2805 = mem[(32 * t) + _985 + ceil32(return_data.size) + 32]
                            mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                            mem[32] = sha3(address(arg1), 4)
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                require t < 16
                                if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                t = t + 1
                                continue 
                            if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                if uint64(_2805) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                            if -1 * uint64(_2805) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2805):
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require t < 16
                            if -1 * uint64(_2805) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                if (-1 * uint64(_2805) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            else:
                                if (-1 * uint64(_2805) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    if -1 * uint64(_2805) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (-1 * uint64(_2805) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require t < 16
                            mem[(32 * t) + 608] = (-1 * uint64(_2805) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                            t = t + 1
                            continue 
                    else:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            t = 0
                            while t < 16:
                                require t < mem[_985 + ceil32(return_data.size)]
                                _2807 = mem[(32 * t) + _985 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_2807) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_2807) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2807):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_2807) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_2807) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_2807) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_2807) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_2807) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_2807) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
                        else:
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 >= 0:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            t = 0
                            while t < 16:
                                require t < mem[_985 + ceil32(return_data.size)]
                                _2809 = mem[(32 * t) + _985 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_2809) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_2809) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2809):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_2809) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_2809) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_2809) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_2809) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_2809) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_2809) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
            else:
                if mem[_1513] == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                require sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                if mem[_1513] * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != mem[_1513]:
                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                mem[32] = sha3(address(arg1), 4)
                if mem[_1513] * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / 100 * 10^18 < 0:
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 < 0:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        t = 0
                        while t < 16:
                            require t < mem[_985 + ceil32(return_data.size)]
                            _2811 = mem[(32 * t) + _985 + ceil32(return_data.size) + 32]
                            mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                            mem[32] = sha3(address(arg1), 4)
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                require t < 16
                                if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                t = t + 1
                                continue 
                            if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                if uint64(_2811) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                            if -1 * uint64(_2811) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2811):
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require t < 16
                            if -1 * uint64(_2811) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                if (-1 * uint64(_2811) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            else:
                                if (-1 * uint64(_2811) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    if -1 * uint64(_2811) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (-1 * uint64(_2811) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require t < 16
                            mem[(32 * t) + 608] = (-1 * uint64(_2811) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                            t = t + 1
                            continue 
                    else:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            t = 0
                            while t < 16:
                                require t < mem[_985 + ceil32(return_data.size)]
                                _2813 = mem[(32 * t) + _985 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_2813) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_2813) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2813):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_2813) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_2813) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_2813) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_2813) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_2813) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_2813) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
                        else:
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 >= 0:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            t = 0
                            while t < 16:
                                require t < mem[_985 + ceil32(return_data.size)]
                                _2815 = mem[(32 * t) + _985 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_2815) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_2815) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2815):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_2815) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_2815) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_2815) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_2815) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_2815) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_2815) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
                else:
                    if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 < 0:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        t = 0
                        while t < 16:
                            require t < mem[_985 + ceil32(return_data.size)]
                            _2817 = mem[(32 * t) + _985 + ceil32(return_data.size) + 32]
                            mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                            mem[32] = sha3(address(arg1), 4)
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                require t < 16
                                if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                t = t + 1
                                continue 
                            if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                if uint64(_2817) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                            if -1 * uint64(_2817) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2817):
                                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                            require t < 16
                            if -1 * uint64(_2817) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                if (-1 * uint64(_2817) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                    revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            else:
                                if (-1 * uint64(_2817) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                    if -1 * uint64(_2817) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (-1 * uint64(_2817) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require t < 16
                            mem[(32 * t) + 608] = (-1 * uint64(_2817) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                            t = t + 1
                            continue 
                    else:
                        if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                            t = 0
                            while t < 16:
                                require t < mem[_985 + ceil32(return_data.size)]
                                _2819 = mem[(32 * t) + _985 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_2819) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_2819) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2819):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_2819) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_2819) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_2819) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_2819) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_2819) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_2819) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
                        else:
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 >= 0:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s >= s:
                                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            t = 0
                            while t < 16:
                                require t < mem[_985 + ceil32(return_data.size)]
                                _2821 = mem[(32 * t) + _985 + ceil32(return_data.size) + 32]
                                mem[0] = sub_7baab3da[address(arg1)][idx + 1].field_0
                                mem[32] = sha3(address(arg1), 4)
                                if sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -1 != sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                if not -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    require t < 16
                                    if mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require t < 16
                                    t = t + 1
                                    continue 
                                if -1 == -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0:
                                    if uint64(_2821) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0
                                if -1 * uint64(_2821) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 / -sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 != uint64(_2821):
                                    revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
                                require t < 16
                                if -1 * uint64(_2821) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 < 0:
                                    if (-1 * uint64(_2821) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                        revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                else:
                                    if (-1 * uint64(_2821) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] < mem[(32 * t) + 608]:
                                        if -1 * uint64(_2821) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0 >= 0:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (-1 * uint64(_2821) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608] >= mem[(32 * t) + 608]:
                                            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require t < 16
                                mem[(32 * t) + 608] = (-1 * uint64(_2821) * sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_0) + mem[(32 * t) + 608]
                                t = t + 1
                                continue 
        idx = idx + 1
        s = sub_7baab3da[address(arg1)][sub_7baab3da[address(arg1)][idx + 1].field_0].field_256 + s
        continue 
    if s < 0:
        if -s <= 0:
            revert with 0, 32, 36, 0x775369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[mem[64] + 104 len 28]
    else:
        if -s > 0:
            if s >= 0:
                revert with 0, 32, 36, 0x775369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[mem[64] + 104 len 28]
            if -s <= 0:
                revert with 0, 32, 36, 0x775369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[mem[64] + 104 len 28]
    idx = 0
    t = 0
    while idx < 16:
        if mem[(32 * idx) + 608] <= t:
            if idx:
                idx = idx + 1
                t = t
                continue 
        require idx < 16
        idx = idx + 1
        t = mem[(32 * idx) + 608]
        continue 
    if s < 0:
        if s + (t / 100 * 10^18) >= t / 100 * 10^18:
            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    else:
        if s + (t / 100 * 10^18) < t / 100 * 10^18:
            if s >= 0:
                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if s + (t / 100 * 10^18) >= t / 100 * 10^18:
                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if -s < 0:
        if (2 * s) + (t / 100 * 10^18) <= s + (t / 100 * 10^18):
            revert with 0, 32, 36, 0x775369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[mem[64] + 104 len 28]
    else:
        if (2 * s) + (t / 100 * 10^18) > s + (t / 100 * 10^18):
            if -s >= 0:
                revert with 0, 32, 36, 0x775369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[mem[64] + 104 len 28]
            if (2 * s) + (t / 100 * 10^18) <= s + (t / 100 * 10^18):
                revert with 0, 32, 36, 0x775369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[mem[64] + 104 len 28]
    if not (2 * s) + (t / 100 * 10^18):
        if not sub_7baab3da[address(arg1)].field_512:
            revert with 0, 'SignedSafeMath: division by zero'
        if sub_7baab3da[address(arg1)].field_512:
            return (0 / sub_7baab3da[address(arg1)].field_512)
    else:
        if (2 * s) + (t / 100 * 10^18):
            if (200000 * s) + (100000 * t / 100 * 10^18) / (2 * s) + (t / 100 * 10^18) != 100000:
                revert with 0, 32, 39, 0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 107 len 25]
            if not sub_7baab3da[address(arg1)].field_512:
                revert with 0, 'SignedSafeMath: division by zero'
            if -1 == sub_7baab3da[address(arg1)].field_512:
                if (200000 * s) + (100000 * t / 100 * 10^18) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 32, 33, 0x6c5369676e6564536166654d6174683a206469766973696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if sub_7baab3da[address(arg1)].field_512:
                return ((200000 * s) + (100000 * t / 100 * 10^18) / sub_7baab3da[address(arg1)].field_512)
    revert
}



}
