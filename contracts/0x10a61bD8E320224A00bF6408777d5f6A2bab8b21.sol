contract main {




// =====================  Runtime code  =====================


const version = 1


address minterAddress;
address tokenAddress;
array of address stor2;
address stor3;

function minter() payable {
    return minterAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function decimals() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function getTokenPrice() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    idx = 0
    while idx < 3:
        require idx < stor2.length
        mem[0] = 2
        require ext_code.size(minterAddress)
        staticcall minterAddress.balances(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        staticcall stor3.getPriceInfo(address arg1) with:
                gas gas_remaining wei
               args stor2[idx]
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0]:
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if ext_call.return_data[32] * ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if ext_call.return_data[0]:
        return (0 / ext_call.return_data[0])
    revert
}

function latestRoundData() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    idx = 0
    while idx < 3:
        require idx < stor2.length
        mem[0] = 2
        require ext_code.size(minterAddress)
        staticcall minterAddress.balances(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        staticcall stor3.getPriceInfo(address arg1) with:
                gas gas_remaining wei
               args stor2[idx]
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0]:
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if ext_call.return_data[32] * ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if ext_call.return_data[0]:
        return 0, 0 / ext_call.return_data[0], 0, 0, 0
    revert
}

function getRoundData(uint80 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    idx = 0
    while idx < 3:
        require idx < stor2.length
        mem[0] = 2
        require ext_code.size(minterAddress)
        staticcall minterAddress.balances(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        staticcall stor3.getPriceInfo(address arg1) with:
                gas gas_remaining wei
               args stor2[idx]
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0]:
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if ext_call.return_data[32] * ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if ext_call.return_data[0]:
        return 0, 0 / ext_call.return_data[0], 0, 0, 0
    revert
}

function description() payable {
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x95d89b41 with:
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



}
