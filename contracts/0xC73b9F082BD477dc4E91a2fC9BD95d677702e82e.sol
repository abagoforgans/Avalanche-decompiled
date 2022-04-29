contract main {




// =====================  Runtime code  =====================


#
#  - sub_1dbab7c6(?)
#
address owner;
address pendingOwner;
address joeAddress;
address wavaxAddress;
address usdtAddress;
address usdcAddress;
address daiAddress;
address joeFactoryAddress;
address chefAddress;
address sub_2c9e2b05Address;

function wavax() payable {
    return wavaxAddress
}

function chef() payable {
    return chefAddress
}

function sub_2c9e2b05(?) payable {
    return sub_2c9e2b05Address
}

function usdt() payable {
    return usdtAddress
}

function usdc() payable {
    return usdcAddress
}

function joeFactory() payable {
    return joeFactoryAddress
}

function owner() payable {
    return owner
}

function joe() payable {
    return joeAddress
}

function pendingOwner() payable {
    return pendingOwner
}

function dai() payable {
    return daiAddress
}

function _fallback() payable {
    revert
}

function claimOwnership() payable {
    if pendingOwner != msg.sender:
        revert with 0, 'Ownable: caller != pending owner'
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function sub_a2bf6496(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_b0182b37(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function transferOwnership(address arg1, bool arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        pendingOwner = arg1
    else:
        if not arg1:
            if not arg3:
                revert with 0, 'Ownable: zero address'
        emit OwnershipTransferred(owner, arg1);
        owner = arg1
        pendingOwner = 0
}

function setContracts(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8) payable {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    joeAddress = arg1
    wavaxAddress = arg2
    usdtAddress = arg3
    usdcAddress = arg4
    daiAddress = arg5
    joeFactoryAddress = arg6
    chefAddress = arg7
    sub_2c9e2b05Address = arg8
}

function sub_36ab6284(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == wavaxAddress:
        return Mask(112, 0, ext_call.return_data[0])
    return Mask(112, 0, ext_call.return_data[32])
}

function sub_80cd3550(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= test266151307()
    require ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 <= test266151307() and ceil32(mem[mem[96] + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[ceil32(return_data.size) + _5 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[mem[64] + _5 + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function sub_85146c22(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != wavaxAddress:
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / 10^18 != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if Mask(112, 0, ext_call.return_data[32]):
            return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
    else:
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / 10^18 != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if Mask(112, 0, ext_call.return_data[0]):
            return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
    revert
}

function getAVAXRate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == wavaxAddress:
        return 10^18
    require ext_code.size(joeFactoryAddress)
    staticcall joeFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), wavaxAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != wavaxAddress:
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / 10^18 != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if Mask(112, 0, ext_call.return_data[32]):
            return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
    else:
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / 10^18 != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if Mask(112, 0, ext_call.return_data[0]):
            return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
    revert
}

function _getUSDPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == usdtAddress:
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / 10^18 != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if Mask(112, 0, ext_call.return_data[0]):
            return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
    else:
        require ext_code.size(arg1)
        staticcall arg1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == usdcAddress:
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / 10^18 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if Mask(112, 0, ext_call.return_data[0]):
                return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
        else:
            require ext_code.size(arg1)
            staticcall arg1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != daiAddress:
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / 10^18 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if Mask(112, 0, ext_call.return_data[32]):
                    return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
            else:
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / 10^18 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if Mask(112, 0, ext_call.return_data[0]):
                    return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
    revert
}

function sub_d6b1db28(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    require ('cd', 4).length <= test266151307()
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[36])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[36])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _66 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _69 = mem[_66]
            require mem[_66] == mem[_66]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128]] = address(cd[((32 * idx) + cd[4] + 36)])
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 32] = _69
            idx = idx + 1
            continue 
        _52 = mem[64]
        mem[mem[64]] = 32
        _53 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _53:
            mem[u] = t + -_52 - 64
            _101 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_101 + 44 len 20]
            mem[t + 64] = mem[_101 + 76 len 20]
            _112 = mem[_101 + 96]
            mem[t + 96] = 224
            _113 = mem[_112]
            mem[t + 224] = mem[_112]
            v = 0
            while v < _113:
                mem[t + v + 256] = mem[_112 + v + 32]
                v = v + 32
                continue 
            if ceil32(_113) > _113:
                mem[t + _113 + 256] = 0
            mem[t + 128] = mem[_101 + 128]
            mem[t + 160] = mem[_101 + 160]
            mem[t + 192] = mem[_101 + 192]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_113) + 256
            u = u + 32
            continue 
    else:
        mem[64] = (32 * ('cd', 4).length) + 192
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[var26001] = (32 * ('cd', 4).length) + 128
        s = var26001
        idx = var26002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 4).length) + 128] = 0
            mem[(32 * ('cd', 4).length) + 160] = 0
            mem[s + 32] = (32 * ('cd', 4).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[36])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[36])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _154 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _156 = mem[_154]
            require mem[_154] == mem[_154]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128]] = address(cd[((32 * idx) + cd[4] + 36)])
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 32] = _156
            idx = idx + 1
            continue 
        _140 = mem[64]
        mem[mem[64]] = 32
        _141 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _141:
            mem[u] = t + -_140 - 64
            _170 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_170 + 44 len 20]
            mem[t + 64] = mem[_170 + 76 len 20]
            _175 = mem[_170 + 96]
            mem[t + 96] = 224
            _176 = mem[_175]
            mem[t + 224] = mem[_175]
            v = 0
            while v < _176:
                mem[t + v + 256] = mem[_175 + v + 32]
                v = v + 32
                continue 
            if ceil32(_176) > _176:
                mem[t + _176 + 256] = 0
            mem[t + 128] = mem[_170 + 128]
            mem[t + 160] = mem[_170 + 160]
            mem[t + 192] = mem[_170 + 192]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_176) + 256
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_f87f71d1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == wavaxAddress:
        if ext_call.return_data[12 len 20] != wavaxAddress:
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / 10^18 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if Mask(112, 0, ext_call.return_data[32]):
                if not Mask(112, 0, ext_call.return_data[0]):
                    return 0
                if Mask(112, 0, ext_call.return_data[0]):
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        return 0
                    if Mask(112, 0, ext_call.return_data[0]):
                        return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]))
        else:
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / 10^18 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if Mask(112, 0, ext_call.return_data[0]):
                if not Mask(112, 0, ext_call.return_data[0]):
                    return 0
                if Mask(112, 0, ext_call.return_data[0]):
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        return 0
                    if Mask(112, 0, ext_call.return_data[0]):
                        return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]))
    else:
        if ext_call.return_data[12 len 20] != wavaxAddress:
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / 10^18 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if Mask(112, 0, ext_call.return_data[32]):
                if not Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if Mask(112, 0, ext_call.return_data[32]):
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if Mask(112, 0, ext_call.return_data[32]):
                        return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]))
        else:
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / 10^18 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if Mask(112, 0, ext_call.return_data[0]):
                if not Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if Mask(112, 0, ext_call.return_data[32]):
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if Mask(112, 0, ext_call.return_data[32]):
                        return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]))
    revert
}

function sub_9adda655(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).poolLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] <= test266151307()
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x1526fe27 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _60 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _66 = mem[64]
            require mem[64] + 128 <= test266151307() and mem[64] + 128 >= mem[64]
            mem[64] = mem[64] + 128
            require mem[_60] == mem[_60 + 12 len 20]
            mem[_66] = mem[_60]
            require mem[_60 + 32] == mem[_60 + 32]
            mem[_66 + 32] = mem[_60 + 32]
            require mem[_60 + 64] == mem[_60 + 64]
            mem[_66 + 64] = mem[_60 + 64]
            require mem[_60 + 96] == mem[_60 + 96]
            mem[_66 + 96] = mem[_60 + 96]
            _82 = mem[_66]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_82))
            staticcall address(_82).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _87 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _88 = mem[_87]
            require mem[_87] == mem[_87]
            require idx < mem[ceil32(return_data.size) + 96]
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = address(_82)
            require idx < mem[ceil32(return_data.size) + 96]
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = _88
            idx = idx + 1
            continue 
        _55 = mem[64]
        mem[mem[64]] = 32
        _56 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _56:
            _101 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_101 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _55 + (64 * _56) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
    mem[var32001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    s = var32001
    idx = var32002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x1526fe27 with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _132 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _136 = mem[64]
        require mem[64] + 128 <= test266151307() and mem[64] + 128 >= mem[64]
        mem[64] = mem[64] + 128
        require mem[_132] == mem[_132 + 12 len 20]
        mem[_136] = mem[_132]
        require mem[_132 + 32] == mem[_132 + 32]
        mem[_136 + 32] = mem[_132 + 32]
        require mem[_132 + 64] == mem[_132 + 64]
        mem[_136 + 64] = mem[_132 + 64]
        require mem[_132 + 96] == mem[_132 + 96]
        mem[_136 + 96] = mem[_132 + 96]
        _142 = mem[_136]
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(address(_142))
        staticcall address(_142).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _145 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _146 = mem[_145]
        require mem[_145] == mem[_145]
        require idx < mem[ceil32(return_data.size) + 96]
        mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = address(_142)
        require idx < mem[ceil32(return_data.size) + 96]
        mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = _146
        idx = idx + 1
        continue 
    _129 = mem[64]
    mem[mem[64]] = 32
    _130 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _130:
        _151 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_151 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _129 + (64 * _130) + -mem[64] + 64
}

function getAvaxPrice() payable {
    mem[96 len 96] = call.data[calldata.size len 96]
    mem[64] = 288
    mem[192] = 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256
    mem[224] = 0x87dee1cc9ffd464b79e058ba20387c1984aed86a
    mem[256] = 0xa389f9430876455c36478deea9769b7ca4e3ddb1
    idx = 0
    s = 0
    t = 0
    while idx < 3:
        _62 = mem[(32 * idx) + 192]
        require ext_code.size(mem[(32 * idx) + 204 len 20])
        staticcall mem[(32 * idx) + 204 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _68 = mem[_67]
        require mem[_67] == mem[_67 + 18 len 14]
        _71 = mem[_67 + 32]
        require mem[_67 + 32] == mem[_67 + 50 len 14]
        require mem[_67 + 64] == mem[_67 + 92 len 4]
        require ext_code.size(address(_62))
        staticcall address(_62).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_75] == mem[_75 + 12 len 20]
        if mem[_75 + 12 len 20] != wavaxAddress:
            if 10^18 * Mask(112, 0, _68) / 10^18 != Mask(112, 0, _68):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, _71)
            require ext_code.size(address(_62))
            staticcall address(_62).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _85 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _87 = mem[_85]
            require mem[_85] == mem[_85 + 18 len 14]
            _89 = mem[_85 + 32]
            require mem[_85 + 32] == mem[_85 + 50 len 14]
            require mem[_85 + 64] == mem[_85 + 92 len 4]
            require ext_code.size(address(_62))
            staticcall address(_62).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _97 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_97] == mem[_97 + 12 len 20]
            if mem[_97 + 12 len 20] == wavaxAddress:
                if t + Mask(112, 0, _87) < Mask(112, 0, _87):
                    revert with 0, 'SafeMath: Add Overflow'
                if not Mask(112, 0, _87):
                    if s < 0:
                        revert with 0, 'SafeMath: Add Overflow'
                    idx = idx + 1
                    s = s
                    t = t + Mask(112, 0, _87)
                    continue 
                require Mask(112, 0, _87)
                if 10^18 * Mask(112, 0, _68) / Mask(112, 0, _71) * Mask(112, 0, _87) / Mask(112, 0, _87) != 10^18 * Mask(112, 0, _68) / Mask(112, 0, _71):
                    revert with 0, 'SafeMath: Mul Overflow'
                if s + (10^18 * Mask(112, 0, _68) / Mask(112, 0, _71) * Mask(112, 0, _87)) < 10^18 * Mask(112, 0, _68) / Mask(112, 0, _71) * Mask(112, 0, _87):
                    revert with 0, 'SafeMath: Add Overflow'
                idx = idx + 1
                s = s + (10^18 * Mask(112, 0, _68) / Mask(112, 0, _71) * Mask(112, 0, _87))
                t = t + Mask(112, 0, _87)
                continue 
            if t + Mask(112, 0, _89) < Mask(112, 0, _89):
                revert with 0, 'SafeMath: Add Overflow'
            if not Mask(112, 0, _89):
                if s < 0:
                    revert with 0, 'SafeMath: Add Overflow'
                idx = idx + 1
                s = s
                t = t + Mask(112, 0, _89)
                continue 
            require Mask(112, 0, _89)
            if 10^18 * Mask(112, 0, _68) / Mask(112, 0, _71) * Mask(112, 0, _89) / Mask(112, 0, _89) != 10^18 * Mask(112, 0, _68) / Mask(112, 0, _71):
                revert with 0, 'SafeMath: Mul Overflow'
            if s + (10^18 * Mask(112, 0, _68) / Mask(112, 0, _71) * Mask(112, 0, _89)) < 10^18 * Mask(112, 0, _68) / Mask(112, 0, _71) * Mask(112, 0, _89):
                revert with 0, 'SafeMath: Add Overflow'
            idx = idx + 1
            s = s + (10^18 * Mask(112, 0, _68) / Mask(112, 0, _71) * Mask(112, 0, _89))
            t = t + Mask(112, 0, _89)
            continue 
        if 10^18 * Mask(112, 0, _71) / 10^18 != Mask(112, 0, _71):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, _68)
        require ext_code.size(address(_62))
        staticcall address(_62).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _86 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _88 = mem[_86]
        require mem[_86] == mem[_86 + 18 len 14]
        _90 = mem[_86 + 32]
        require mem[_86 + 32] == mem[_86 + 50 len 14]
        require mem[_86 + 64] == mem[_86 + 92 len 4]
        require ext_code.size(address(_62))
        staticcall address(_62).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _98 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_98] == mem[_98 + 12 len 20]
        if mem[_98 + 12 len 20] == wavaxAddress:
            if t + Mask(112, 0, _88) < Mask(112, 0, _88):
                revert with 0, 'SafeMath: Add Overflow'
            if not Mask(112, 0, _88):
                if s < 0:
                    revert with 0, 'SafeMath: Add Overflow'
                idx = idx + 1
                s = s
                t = t + Mask(112, 0, _88)
                continue 
            require Mask(112, 0, _88)
            if 10^18 * Mask(112, 0, _71) / Mask(112, 0, _68) * Mask(112, 0, _88) / Mask(112, 0, _88) != 10^18 * Mask(112, 0, _71) / Mask(112, 0, _68):
                revert with 0, 'SafeMath: Mul Overflow'
            if s + (10^18 * Mask(112, 0, _71) / Mask(112, 0, _68) * Mask(112, 0, _88)) < 10^18 * Mask(112, 0, _71) / Mask(112, 0, _68) * Mask(112, 0, _88):
                revert with 0, 'SafeMath: Add Overflow'
            idx = idx + 1
            s = s + (10^18 * Mask(112, 0, _71) / Mask(112, 0, _68) * Mask(112, 0, _88))
            t = t + Mask(112, 0, _88)
            continue 
        if t + Mask(112, 0, _90) < Mask(112, 0, _90):
            revert with 0, 'SafeMath: Add Overflow'
        if not Mask(112, 0, _90):
            if s < 0:
                revert with 0, 'SafeMath: Add Overflow'
            idx = idx + 1
            s = s
            t = t + Mask(112, 0, _90)
            continue 
        require Mask(112, 0, _90)
        if 10^18 * Mask(112, 0, _71) / Mask(112, 0, _68) * Mask(112, 0, _90) / Mask(112, 0, _90) != 10^18 * Mask(112, 0, _71) / Mask(112, 0, _68):
            revert with 0, 'SafeMath: Mul Overflow'
        if s + (10^18 * Mask(112, 0, _71) / Mask(112, 0, _68) * Mask(112, 0, _90)) < 10^18 * Mask(112, 0, _71) / Mask(112, 0, _68) * Mask(112, 0, _90):
            revert with 0, 'SafeMath: Add Overflow'
        idx = idx + 1
        s = s + (10^18 * Mask(112, 0, _71) / Mask(112, 0, _68) * Mask(112, 0, _90))
        t = t + Mask(112, 0, _90)
        continue 
    if not t:
        return 0
    if t:
        return (s / t)
    revert
}



}
