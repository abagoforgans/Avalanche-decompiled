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
    _142 = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = 0
    while idx < _142:
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
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[ceil32(return_data.size) + 96]
        _166 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(_166)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            _173 = mem[64]
            mem[64] = mem[64] + 64
            mem[_173] = 26
            mem[_173 + 32] = 'SafeMath: division by zero'
            if 10^ext_call.return_data[0]:
                _194 = mem[64]
                mem[64] = mem[64] + 64
                mem[_194] = 26
                mem[_194 + 32] = 'SafeMath: division by zero'
                if (0 / 10^ext_call.return_data[0] / 10^18) + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = (0 / 10^ext_call.return_data[0] / 10^18) + s
                continue 
            _177 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _177 + 68] = mem[idx + _173 + 32]
                idx = idx + 32
                continue 
            mem[_177 + 68] = mem[_177 + 74 len 26]
            revert with memory
              from mem[64]
               len _177 + -mem[64] + 100
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            _176 = mem[64]
            mem[64] = mem[64] + 64
            mem[_176] = 26
            mem[_176 + 32] = 'SafeMath: division by zero'
            if 10^ext_call.return_data[0]:
                _199 = mem[64]
                mem[64] = mem[64] + 64
                mem[_199] = 26
                mem[_199 + 32] = 'SafeMath: division by zero'
                if (0 / 10^ext_call.return_data[0] / 10^18) + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = (0 / 10^ext_call.return_data[0] / 10^18) + s
                continue 
            _181 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _181 + 68] = mem[idx + _176 + 32]
                idx = idx + 32
                continue 
            mem[_181 + 68] = mem[_181 + 74 len 26]
            revert with memory
              from mem[64]
               len _181 + -mem[64] + 100
        if 100 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 100:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _180 = mem[64]
        mem[64] = mem[64] + 64
        mem[_180] = 26
        mem[_180 + 32] = 'SafeMath: division by zero'
        if 10^ext_call.return_data[0]:
            _201 = mem[64]
            mem[64] = mem[64] + 64
            mem[_201] = 26
            mem[_201 + 32] = 'SafeMath: division by zero'
            if (100 * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / 10^18) + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = (100 * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / 10^18) + s
            continue 
        _187 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _187 + 68] = mem[idx + _180 + 32]
            idx = idx + 32
            continue 
        mem[_187 + 68] = mem[_187 + 74 len 26]
        revert with memory
          from mem[64]
           len _187 + -mem[64] + 100
    return s
}



}
