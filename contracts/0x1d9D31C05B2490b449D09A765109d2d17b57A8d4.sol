contract main {




// =====================  Runtime code  =====================


#
#  - sub_1dbab7c6(?)
#
address owner;
address pendingOwner;
address joeAddress;
address WAVAXAddress;
address USDTAddress;
address USDCAddress;
address DAIAddress;
address joeFactoryAddress;
address chefAddress;
address sub_2c9e2b05Address;

function chef() payable {
    return chefAddress
}

function sub_2c9e2b05(?) payable {
    return sub_2c9e2b05Address
}

function WAVAX() payable {
    return WAVAXAddress
}

function USDC() payable {
    return USDCAddress
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

function USDT() payable {
    return USDTAddress
}

function DAI() payable {
    return DAIAddress
}

function pendingOwner() payable {
    return pendingOwner
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
    WAVAXAddress = arg2
    USDTAddress = arg3
    USDCAddress = arg4
    DAIAddress = arg5
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
    if ext_call.return_data[12 len 20] == WAVAXAddress:
        return Mask(112, 0, ext_call.return_data[0])
    return Mask(112, 0, ext_call.return_data[32])
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
    if ext_call.return_data[12 len 20] != WAVAXAddress:
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
    if arg1 == WAVAXAddress:
        return 10^18
    require ext_code.size(joeFactoryAddress)
    staticcall joeFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), WAVAXAddress
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
    if ext_call.return_data[12 len 20] != WAVAXAddress:
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
    if ext_call.return_data[12 len 20] == USDTAddress:
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
        if ext_call.return_data[12 len 20] == USDCAddress:
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
            if ext_call.return_data[12 len 20] != DAIAddress:
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
        if mem[_75 + 12 len 20] != WAVAXAddress:
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
            if mem[_97 + 12 len 20] == WAVAXAddress:
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
        if mem[_98 + 12 len 20] == WAVAXAddress:
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
