contract main {




// =====================  Runtime code  =====================


#
#  - sub_669da54c(?)
#  - sub_d04203a4(?)
#
address owner;
mapping of uint8 stor1;
address etherAddress;

function etherAddress() payable {
    return etherAddress
}

function sub_8c845d3f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_17f9c3a5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_5b2e4dc5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x7dc0d1d0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not arg3:
        return 0
    if ext_call.return_data[0] and arg3 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] != arg3:
        revert with 0, 'multiplication overflow', 0
    return (ext_call.return_data[0] * arg3 / 10^18)
}

function sub_1c1ebd7b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return 0
    require ext_code.size(address(arg2))
    staticcall address(arg2).exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'multiplication overflow', 0
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function sub_bf7f678d(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAccountLiquidity(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            if 0 == mem[_59 + 64]:
                _72 = mem[64]
                mem[64] = mem[64] + 64
                mem[_72] = 0
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[_72 + 32] = address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _72
            else:
                _74 = mem[64]
                mem[64] = mem[64] + 64
                mem[_74] = 1
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[_74 + 32] = address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _74
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).liquidationIncentiveMantissa() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _46 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _49 = mem[_46]
        _51 = mem[64]
        mem[mem[64]] = 64
        _52 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _52:
            _84 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_84 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        mem[_51 + 32] = _49
        return memory
          from mem[64]
           len _51 + (64 * _52) + -mem[64] + 96
    mem[64] = (32 * ('cd', 36).length) + 192
    mem[(32 * ('cd', 36).length) + 128] = 0
    mem[(32 * ('cd', 36).length) + 160] = 0
    mem[128] = (32 * ('cd', 36).length) + 128
    s = 128
    idx = ('cd', 36).length
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * ('cd', 36).length) + 128] = 0
        mem[(32 * ('cd', 36).length) + 160] = 0
        mem[s + 32] = (32 * ('cd', 36).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getAccountLiquidity(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _99 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        if 0 == mem[_99 + 64]:
            _104 = mem[64]
            mem[64] = mem[64] + 64
            mem[_104] = 0
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[_104 + 32] = address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _104
        else:
            _105 = mem[64]
            mem[64] = mem[64] + 64
            mem[_105] = 1
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[_105 + 32] = address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _105
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).liquidationIncentiveMantissa() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _90 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _91 = mem[_90]
    _92 = mem[64]
    mem[mem[64]] = 64
    _93 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _93:
        _108 = mem[s]
        mem[t] = bool(mem[mem[s]])
        mem[t + 32] = mem[_108 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    mem[_92 + 32] = _91
    return memory
      from mem[64]
       len _92 + (64 * _93) + -mem[64] + 96
}



}
