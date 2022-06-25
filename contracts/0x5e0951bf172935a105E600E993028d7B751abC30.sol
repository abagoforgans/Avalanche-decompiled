contract main {




// =====================  Runtime code  =====================


address owner;
array of address markets;
address distributionContractAddress;
address sub_15b550d6Address;

function sub_15b550d6(?) payable {
    return sub_15b550d6Address
}

function distributionContract() payable {
    return distributionContractAddress
}

function owner() payable {
    return owner
}

function markets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < markets.length
    return markets[arg1]
}

function _fallback() payable {
    revert
}

function getUserDetails(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if markets.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = markets.length
    mem[64] = (32 * markets.length) + 128
    if not markets.length:
        idx = 0
        while idx < markets.length:
            _42 = mem[64]
            mem[64] = mem[64] + 64
            mem[0] = 1
            mem[mem[64] + 4] = arg1
            require ext_code.size(markets[idx])
            staticcall markets[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _52 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_52] == mem[_52]
            mem[_42] = mem[_52]
            if idx >= markets.length:
                revert with 'NH{q', 50
            mem[0] = 1
            mem[_42 + 32] = markets[idx]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _42
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = markets.length
        mem[0] = 1
        idx = 0
        s = 0
        t = mem[64] + 100
        while idx < markets.length:
            mem[t] = markets[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        mem[mem[64] + 36] = arg1
        require ext_code.size(distributionContractAddress)
        staticcall distributionContractAddress.getRewardsBalance(address[] arg1, address arg2) with:
                gas gas_remaining wei
               args Array(len=markets.length, data=mem[mem[64] + 100 len 32 * markets.length]), arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _86 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _88 = mem[_86]
        require mem[_86] == mem[_86]
        _92 = mem[64]
        mem[mem[64]] = 64
        _94 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _94:
            _109 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_109 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        mem[_92 + 32] = _88
        return memory
          from mem[64]
           len _92 + (64 * _94) + -mem[64] + 96
    mem[64] = (32 * markets.length) + 192
    mem[(32 * markets.length) + 128] = 0
    mem[(32 * markets.length) + 160] = 0
    mem[var20001] = (32 * markets.length) + 128
    s = var20001
    idx = var20002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * markets.length) + 128] = 0
        mem[(32 * markets.length) + 160] = 0
        mem[s + 32] = (32 * markets.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < markets.length:
        _111 = mem[64]
        mem[64] = mem[64] + 64
        mem[0] = 1
        mem[mem[64] + 4] = arg1
        require ext_code.size(markets[idx])
        staticcall markets[idx].0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _119 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_119] == mem[_119]
        mem[_111] = mem[_119]
        if idx >= markets.length:
            revert with 'NH{q', 50
        mem[0] = 1
        mem[_111 + 32] = markets[idx]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _111
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = 64
    mem[mem[64] + 68] = markets.length
    mem[0] = 1
    idx = 0
    s = 0
    t = mem[64] + 100
    while idx < markets.length:
        mem[t] = markets[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[mem[64] + 36] = arg1
    require ext_code.size(distributionContractAddress)
    staticcall distributionContractAddress.getRewardsBalance(address[] arg1, address arg2) with:
            gas gas_remaining wei
           args Array(len=markets.length, data=mem[mem[64] + 100 len 32 * markets.length]), arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _133 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _134 = mem[_133]
    require mem[_133] == mem[_133]
    _135 = mem[64]
    mem[mem[64]] = 64
    _136 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _136:
        _141 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_141 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    mem[_135 + 32] = _134
    return memory
      from mem[64]
       len _135 + (64 * _136) + -mem[64] + 96
}



}
