contract main {




// =====================  Runtime code  =====================


address sub_0a1541bcAddress;

function sub_0a1541bc(?) payable {
    return sub_0a1541bcAddress
}

function _fallback() payable {
    revert
}

function getTvl() payable {
    mem[64] = 96
    require ext_code.size(sub_0a1541bcAddress)
    staticcall sub_0a1541bcAddress.poolLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(sub_0a1541bcAddress)
        staticcall sub_0a1541bcAddress.getPoolInfo(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 288
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[32]:
            _51 = mem[64]
            mem[64] = mem[64] + 64
            mem[_51] = 26
            mem[_51 + 32] = 'SafeMath: division by zero'
            if 10^ext_call.return_data[0]:
                if (0 / 10^ext_call.return_data[0]) + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = (0 / 10^ext_call.return_data[0]) + s
                continue 
            _53 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _53 + 68] = mem[idx + _51 + 32]
                idx = idx + 32
                continue 
            mem[_53 + 68] = mem[_53 + 74 len 26]
            revert with memory
              from mem[64]
               len _53 + -mem[64] + 100
        if 100 * ext_call.return_data[32] / ext_call.return_data[32] != 100:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        _52 = mem[64]
        mem[64] = mem[64] + 64
        mem[_52] = 26
        mem[_52 + 32] = 'SafeMath: division by zero'
        if 10^ext_call.return_data[0]:
            if (100 * ext_call.return_data[32] / 10^ext_call.return_data[0]) + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = (100 * ext_call.return_data[32] / 10^ext_call.return_data[0]) + s
            continue 
        _56 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _56 + 68] = mem[idx + _52 + 32]
            idx = idx + 32
            continue 
        mem[_56 + 68] = mem[_56 + 74 len 26]
        revert with memory
          from mem[64]
           len _56 + -mem[64] + 100
    return s
}



}
