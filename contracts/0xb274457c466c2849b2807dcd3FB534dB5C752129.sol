contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct averagePrice;

function getAveragePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return averagePrice[arg1].field_15360
}

function _fallback() payable {
    revert
}

function version() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x54fd4d50 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function decimals() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function sub_25e853bd(?) payable {
    require calldata.size - 4 >= 32
    require block.timestamp >= arg1
    idx = 0
    s = 0
    t = 0
    while idx < 30:
        mem[0] = arg1
        mem[32] = 1
        if not averagePrice[arg1][idx].field_0:
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < 30
        idx = idx + 1
        s = s + 1
        t = t + averagePrice[arg1][idx].field_0
        continue 
    if not s:
        return 0
    if s <= 0:
        revert with 0, 'SafeMath: division by zero'
    require s
    averagePrice[arg1].field_15360 = t / s
    return (t / s)
}

function getLatestPrice() payable {
    require ext_code.size(stor0)
    staticcall stor0.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if ext_call.return_data[32] < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x2e556e6578706563746564206e656761746976652070726963652066726f6d20636861696e6c696e6b206f7261636c65,
                    ext_call.return_data[116 len 16]
    return ext_call.return_data[32]
}

function description() payable {
    mem[96] = 0x7284e41600000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.0x7284e416 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        mem[_7 + ceil32(return_data.size) + 128] = 32
        mem[_7 + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
        mem[_7 + ceil32(return_data.size) + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return 32, mem[_7 + ceil32(return_data.size) + 160 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + 192] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 224 len mem[ceil32(return_data.size) + 96] % 32]
        return Array(len=mem[ceil32(return_data.size) + 96], data=mem[_7 + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
    mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
    mem[floor32(_7) + ceil32(return_data.size) + 160] = 32
    mem[floor32(_7) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_7) + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return 32, mem[floor32(_7) + ceil32(return_data.size) + 192 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 256 len mem[ceil32(return_data.size) + 96] % 32]
    return Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_7) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
}

function sub_2fa57c0b(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor0)
    staticcall stor0.getRoundData(uint80 arg1) with:
            gas gas_remaining wei
           args Mask(80, 0, arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if ext_call.return_data[32] < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x2e556e6578706563746564206e656761746976652070726963652066726f6d20636861696e6c696e6b206f7261636c65,
                    ext_call.return_data[116 len 16]
    if ext_call.return_data[64] > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0xfe5072696365206d75737420666f6c6c6f772074686520676976656e20656e642074696d657374616d70,
                    ext_call.return_data[110 len 22]
    if ext_call.return_data[64] <= arg1 - 1800:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x2e526f756e642074696d657374616d70206973206e6f742077697468696e203330206d696e75746573206f6620656e642074696d657374616d70,
                    ext_call.return_data[126 len 6]
    if arg1 - 1799 > ext_call.return_data[64]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_call.return_data[64] + -arg1 - 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff8f9 / 60 < 30
    if not averagePrice[arg1][ext_call.return_data[64] + -arg1 - 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff8f9 / 60].field_7680:
        require ext_call.return_data[64] + -arg1 - 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff8f9 / 60 < 30
        averagePrice[arg1][ext_call.return_data[64] + -arg1 - 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff8f9 / 60].field_0 = ext_call.return_data[32]
        averagePrice[arg1][ext_call.return_data[64] + -arg1 - 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff8f9 / 60].field_7680 = ext_call.return_data[64]
    else:
        if ext_call.return_data[64] >= averagePrice[arg1][ext_call.return_data[64] + -arg1 - 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff8f9 / 60].field_7680:
            require ext_call.return_data[64] + -arg1 - 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff8f9 / 60 < 30
            averagePrice[arg1][ext_call.return_data[64] + -arg1 - 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff8f9 / 60].field_0 = ext_call.return_data[32]
            averagePrice[arg1][ext_call.return_data[64] + -arg1 - 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff8f9 / 60].field_7680 = ext_call.return_data[64]
}



}
