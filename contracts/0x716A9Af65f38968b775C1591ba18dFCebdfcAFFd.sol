contract main {




// =====================  Runtime code  =====================


address factoryAddress;

function factoryAddress() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function getTvl() payable {
    mem[96] = 0x97331bf900000000000000000000000000000000000000000000000000000000
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getAllVaults() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[64] = (32 * _7) + ceil32(return_data.size) + 128
    _78 = mem[ceil32(return_data.size) + 96]
    idx = 0
    while idx < _78:
        require idx < mem[ceil32(return_data.size) + 96]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].collateralToken() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[ceil32(return_data.size) + 96]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].getOracleAddress() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPrice(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[ceil32(return_data.size) + 96]
        _98 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(_98)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            _105 = mem[64]
            mem[64] = mem[64] + 64
            mem[_105] = 26
            mem[_105 + 32] = 'SafeMath: division by zero'
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                _108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_108] = 26
                mem[_108 + 32] = 'SafeMath: division by zero'
            else:
                if 100 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _109 = mem[64]
                mem[64] = mem[64] + 64
                mem[_109] = 26
                mem[_109 + 32] = 'SafeMath: division by zero'
                if 100 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}



}
