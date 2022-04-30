contract main {




// =====================  Runtime code  =====================


#
#  - sub_10e9b607(?)
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
uint256 stor10;

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

function sub_73ba6efe(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return arg1 << 192, ext_call.return_data[0]
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
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[mem[64] + _5 + 64] = 0
        return memory
          from mem[64]
           len _19 + ceil32(_5) + -mem[64] + 64
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[mem[64] + _5 + 64] = 0
    return memory
      from mem[64]
       len _20 + ceil32(_5) + -mem[64] + 64
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
        if not stor10:
            if Mask(112, 0, ext_call.return_data[32]):
                return (0 / Mask(112, 0, ext_call.return_data[32]))
        else:
            if stor10:
                if Mask(112, 0, ext_call.return_data[0]) * stor10 / stor10 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if Mask(112, 0, ext_call.return_data[32]):
                    return (Mask(112, 0, ext_call.return_data[0]) * stor10 / Mask(112, 0, ext_call.return_data[32]))
    else:
        if not stor10:
            if Mask(112, 0, ext_call.return_data[0]):
                return (0 / Mask(112, 0, ext_call.return_data[0]))
        else:
            if stor10:
                if Mask(112, 0, ext_call.return_data[32]) * stor10 / stor10 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if Mask(112, 0, ext_call.return_data[0]):
                    return (Mask(112, 0, ext_call.return_data[32]) * stor10 / Mask(112, 0, ext_call.return_data[0]))
    revert
}

function getAVAXRate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == wavaxAddress:
        return stor10
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
        if not stor10:
            if Mask(112, 0, ext_call.return_data[32]):
                return (0 / Mask(112, 0, ext_call.return_data[32]))
        else:
            if stor10:
                if Mask(112, 0, ext_call.return_data[0]) * stor10 / stor10 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if Mask(112, 0, ext_call.return_data[32]):
                    return (Mask(112, 0, ext_call.return_data[0]) * stor10 / Mask(112, 0, ext_call.return_data[32]))
    else:
        if not stor10:
            if Mask(112, 0, ext_call.return_data[0]):
                return (0 / Mask(112, 0, ext_call.return_data[0]))
        else:
            if stor10:
                if Mask(112, 0, ext_call.return_data[32]) * stor10 / stor10 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if Mask(112, 0, ext_call.return_data[0]):
                    return (Mask(112, 0, ext_call.return_data[32]) * stor10 / Mask(112, 0, ext_call.return_data[0]))
    revert
}

function sub_b9240bb2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(joeFactoryAddress)
    staticcall joeFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), wavaxAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[288] = ext_call.return_data[12 len 20]
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
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != wavaxAddress:
        if not stor10:
            if Mask(112, 0, ext_call.return_data[32]):
                return mem[300 len 20], 
                       address(ext_call.return_data[0]),
                       address(ext_call.return_data[0]),
                       ext_call.return_data[18 len 14],
                       ext_call.return_data[32] << 144,
                       0 / Mask(112, 0, ext_call.return_data[32])
        else:
            if stor10:
                if Mask(112, 0, ext_call.return_data[0]) * stor10 / stor10 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if Mask(112, 0, ext_call.return_data[32]):
                    return mem[300 len 20], 
                           address(ext_call.return_data[0]),
                           address(ext_call.return_data[0]),
                           ext_call.return_data[18 len 14],
                           ext_call.return_data[32] << 144,
                           Mask(112, 0, ext_call.return_data[0]) * stor10 / Mask(112, 0, ext_call.return_data[32])
    else:
        if not stor10:
            if Mask(112, 0, ext_call.return_data[0]):
                return mem[300 len 20], 
                       address(ext_call.return_data[0]),
                       address(ext_call.return_data[0]),
                       ext_call.return_data[18 len 14],
                       ext_call.return_data[32] << 144,
                       0 / Mask(112, 0, ext_call.return_data[0])
        else:
            if stor10:
                if Mask(112, 0, ext_call.return_data[32]) * stor10 / stor10 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if Mask(112, 0, ext_call.return_data[0]):
                    return mem[300 len 20], 
                           address(ext_call.return_data[0]),
                           address(ext_call.return_data[0]),
                           ext_call.return_data[18 len 14],
                           ext_call.return_data[32] << 144,
                           Mask(112, 0, ext_call.return_data[32]) * stor10 / Mask(112, 0, ext_call.return_data[0])
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
        if not stor10:
            if Mask(112, 0, ext_call.return_data[0]):
                return (0 / Mask(112, 0, ext_call.return_data[0]))
        else:
            if stor10:
                if Mask(112, 0, ext_call.return_data[32]) * stor10 / stor10 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if Mask(112, 0, ext_call.return_data[0]):
                    return (Mask(112, 0, ext_call.return_data[32]) * stor10 / Mask(112, 0, ext_call.return_data[0]))
    else:
        require ext_code.size(arg1)
        staticcall arg1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == usdcAddress:
            if not stor10:
                if Mask(112, 0, ext_call.return_data[0]):
                    return (0 / Mask(112, 0, ext_call.return_data[0]))
            else:
                if stor10:
                    if Mask(112, 0, ext_call.return_data[32]) * stor10 / stor10 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if Mask(112, 0, ext_call.return_data[0]):
                        return (Mask(112, 0, ext_call.return_data[32]) * stor10 / Mask(112, 0, ext_call.return_data[0]))
        else:
            require ext_code.size(arg1)
            staticcall arg1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != daiAddress:
                if not stor10:
                    if Mask(112, 0, ext_call.return_data[32]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                else:
                    if stor10:
                        if Mask(112, 0, ext_call.return_data[0]) * stor10 / stor10 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if Mask(112, 0, ext_call.return_data[32]):
                            return (Mask(112, 0, ext_call.return_data[0]) * stor10 / Mask(112, 0, ext_call.return_data[32]))
            else:
                if not stor10:
                    if Mask(112, 0, ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[0]))
                else:
                    if stor10:
                        if Mask(112, 0, ext_call.return_data[32]) * stor10 / stor10 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if Mask(112, 0, ext_call.return_data[0]):
                            return (Mask(112, 0, ext_call.return_data[32]) * stor10 / Mask(112, 0, ext_call.return_data[0]))
    revert
}

function sub_53e8ab29(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 96
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    mem[544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[352] = address(ext_call.return_data[0])
    mem[384] = ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 544] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _14 = mem[(2 * ceil32(return_data.size)) + 544]
    require mem[(2 * ceil32(return_data.size)) + 544] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544] + 575 < (2 * ceil32(return_data.size)) + return_data.size + 544
    _15 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544] + 544]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544] + 544] <= test266151307()
    require (4 * ceil32(return_data.size)) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544] + 544]) + 32 >= 0
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544] + 544]) + 576
    mem[(4 * ceil32(return_data.size)) + 544] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544] + 544]
    require _14 + _15 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 576 len ceil32(_15)] = mem[(2 * ceil32(return_data.size)) + _14 + 576 len ceil32(_15)]
    if ceil32(_15) <= _15:
        mem[416] = (4 * ceil32(return_data.size)) + 544
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_61] == mem[_61]
        mem[512] = mem[_61]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 0
        mem[mem[64] + 64] = uint64(ext_call.return_data[0]) << 96
        mem[mem[64] + 96] = mem[396 len 20]
        mem[mem[64] + 128] = 224
        _75 = mem[(4 * ceil32(return_data.size)) + 544]
        mem[mem[64] + 256] = mem[(4 * ceil32(return_data.size)) + 544]
        mem[mem[64] + 288 len ceil32(_75)] = mem[(4 * ceil32(return_data.size)) + 576 len ceil32(_75)]
        if ceil32(_75) > _75:
            mem[mem[64] + _75 + 288] = 0
        mem[mem[64] + 160] = 0
        mem[mem[64] + 192] = 0
        mem[mem[64] + 224] = mem[512]
        return '', ext_call.return_data[0] << 192, mem[mem[64] + 96], 224, 0, 0, mem[mem[64] + 224 len ceil32(_75) + 64]
    mem[(4 * ceil32(return_data.size)) + _15 + 576] = 0
    mem[416] = (4 * ceil32(return_data.size)) + 544
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _62 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_62] == mem[_62]
    mem[512] = mem[_62]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 0
    mem[mem[64] + 64] = uint64(ext_call.return_data[0]) << 96
    mem[mem[64] + 96] = mem[396 len 20]
    mem[mem[64] + 128] = 224
    _76 = mem[(4 * ceil32(return_data.size)) + 544]
    mem[mem[64] + 256] = mem[(4 * ceil32(return_data.size)) + 544]
    mem[mem[64] + 288 len ceil32(_76)] = mem[(4 * ceil32(return_data.size)) + 576 len ceil32(_76)]
    if ceil32(_76) > _76:
        mem[mem[64] + _76 + 288] = 0
    mem[mem[64] + 160] = 0
    mem[mem[64] + 192] = 0
    mem[mem[64] + 224] = mem[512]
    return '', ext_call.return_data[0] << 192, mem[mem[64] + 96], 224, 0, 0, mem[mem[64] + 224 len ceil32(_76) + 64]
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
            if not stor10:
                if Mask(112, 0, ext_call.return_data[32]):
                    if not Mask(112, 0, ext_call.return_data[0]):
                        return 0
                    if Mask(112, 0, ext_call.return_data[0]):
                        if 0 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            return 0
                        if Mask(112, 0, ext_call.return_data[0]):
                            return (0 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]))
            else:
                if stor10:
                    if Mask(112, 0, ext_call.return_data[0]) * stor10 / stor10 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if Mask(112, 0, ext_call.return_data[32]):
                        if not Mask(112, 0, ext_call.return_data[0]):
                            return 0
                        if Mask(112, 0, ext_call.return_data[0]):
                            if Mask(112, 0, ext_call.return_data[0]) * stor10 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, ext_call.return_data[0]) * stor10 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Mul Overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                return 0
                            if Mask(112, 0, ext_call.return_data[0]):
                                return (Mask(112, 0, ext_call.return_data[0]) * stor10 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]))
        else:
            if not stor10:
                if Mask(112, 0, ext_call.return_data[0]):
                    if not Mask(112, 0, ext_call.return_data[0]):
                        return 0
                    if Mask(112, 0, ext_call.return_data[0]):
                        if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            return 0
                        if Mask(112, 0, ext_call.return_data[0]):
                            return (0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]))
            else:
                if stor10:
                    if Mask(112, 0, ext_call.return_data[32]) * stor10 / stor10 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if Mask(112, 0, ext_call.return_data[0]):
                        if not Mask(112, 0, ext_call.return_data[0]):
                            return 0
                        if Mask(112, 0, ext_call.return_data[0]):
                            if Mask(112, 0, ext_call.return_data[32]) * stor10 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, ext_call.return_data[32]) * stor10 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: Mul Overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                return 0
                            if Mask(112, 0, ext_call.return_data[0]):
                                return (Mask(112, 0, ext_call.return_data[32]) * stor10 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]))
    else:
        if ext_call.return_data[12 len 20] != wavaxAddress:
            if not stor10:
                if Mask(112, 0, ext_call.return_data[32]):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if Mask(112, 0, ext_call.return_data[32]):
                        if 0 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if Mask(112, 0, ext_call.return_data[32]):
                            return (0 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]))
            else:
                if stor10:
                    if Mask(112, 0, ext_call.return_data[0]) * stor10 / stor10 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if Mask(112, 0, ext_call.return_data[32]):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if Mask(112, 0, ext_call.return_data[32]):
                            if Mask(112, 0, ext_call.return_data[0]) * stor10 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]) * stor10 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Mul Overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                return 0
                            if Mask(112, 0, ext_call.return_data[32]):
                                return (Mask(112, 0, ext_call.return_data[0]) * stor10 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]))
        else:
            if not stor10:
                if Mask(112, 0, ext_call.return_data[0]):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if Mask(112, 0, ext_call.return_data[32]):
                        if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if Mask(112, 0, ext_call.return_data[32]):
                            return (0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]))
            else:
                if stor10:
                    if Mask(112, 0, ext_call.return_data[32]) * stor10 / stor10 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if Mask(112, 0, ext_call.return_data[0]):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if Mask(112, 0, ext_call.return_data[32]):
                            if Mask(112, 0, ext_call.return_data[32]) * stor10 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[32]) * stor10 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: Mul Overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                return 0
                            if Mask(112, 0, ext_call.return_data[32]):
                                return (Mask(112, 0, ext_call.return_data[32]) * stor10 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]))
    revert
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
        _106 = mem[(32 * idx) + 192]
        require ext_code.size(mem[(32 * idx) + 204 len 20])
        staticcall mem[(32 * idx) + 204 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _111 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _112 = mem[_111]
        require mem[_111] == mem[_111 + 18 len 14]
        _115 = mem[_111 + 32]
        require mem[_111 + 32] == mem[_111 + 50 len 14]
        require mem[_111 + 64] == mem[_111 + 92 len 4]
        require ext_code.size(address(_106))
        staticcall address(_106).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _119 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_119] == mem[_119 + 12 len 20]
        if mem[_119 + 12 len 20] != wavaxAddress:
            if not stor10:
                require Mask(112, 0, _115)
                require ext_code.size(address(_106))
                staticcall address(_106).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _127 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _137 = mem[_127]
                require mem[_127] == mem[_127 + 18 len 14]
                _141 = mem[_127 + 32]
                require mem[_127 + 32] == mem[_127 + 50 len 14]
                require mem[_127 + 64] == mem[_127 + 92 len 4]
                require ext_code.size(address(_106))
                staticcall address(_106).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _153 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_153] == mem[_153 + 12 len 20]
                if mem[_153 + 12 len 20] == wavaxAddress:
                    if t + Mask(112, 0, _137) < Mask(112, 0, _137):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not Mask(112, 0, _137):
                        if s < 0:
                            revert with 0, 'SafeMath: Add Overflow'
                        idx = idx + 1
                        s = s
                        t = t + Mask(112, 0, _137)
                        continue 
                    require Mask(112, 0, _137)
                    if 0 / Mask(112, 0, _115) * Mask(112, 0, _137) / Mask(112, 0, _137) != 0 / Mask(112, 0, _115):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if s + (0 / Mask(112, 0, _115) * Mask(112, 0, _137)) < 0 / Mask(112, 0, _115) * Mask(112, 0, _137):
                        revert with 0, 'SafeMath: Add Overflow'
                    idx = idx + 1
                    s = s + (0 / Mask(112, 0, _115) * Mask(112, 0, _137))
                    t = t + Mask(112, 0, _137)
                    continue 
                if t + Mask(112, 0, _141) < Mask(112, 0, _141):
                    revert with 0, 'SafeMath: Add Overflow'
                if not Mask(112, 0, _141):
                    if s < 0:
                        revert with 0, 'SafeMath: Add Overflow'
                    idx = idx + 1
                    s = s
                    t = t + Mask(112, 0, _141)
                    continue 
                require Mask(112, 0, _141)
                if 0 / Mask(112, 0, _115) * Mask(112, 0, _141) / Mask(112, 0, _141) != 0 / Mask(112, 0, _115):
                    revert with 0, 'SafeMath: Mul Overflow'
                if s + (0 / Mask(112, 0, _115) * Mask(112, 0, _141)) < 0 / Mask(112, 0, _115) * Mask(112, 0, _141):
                    revert with 0, 'SafeMath: Add Overflow'
                idx = idx + 1
                s = s + (0 / Mask(112, 0, _115) * Mask(112, 0, _141))
                t = t + Mask(112, 0, _141)
                continue 
            require stor10
            if Mask(112, 0, _112) * stor10 / stor10 != Mask(112, 0, _112):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, _115)
            require ext_code.size(address(_106))
            staticcall address(_106).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _135 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _139 = mem[_135]
            require mem[_135] == mem[_135 + 18 len 14]
            _143 = mem[_135 + 32]
            require mem[_135 + 32] == mem[_135 + 50 len 14]
            require mem[_135 + 64] == mem[_135 + 92 len 4]
            require ext_code.size(address(_106))
            staticcall address(_106).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _159 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_159] == mem[_159 + 12 len 20]
            if mem[_159 + 12 len 20] == wavaxAddress:
                if t + Mask(112, 0, _139) < Mask(112, 0, _139):
                    revert with 0, 'SafeMath: Add Overflow'
                if not Mask(112, 0, _139):
                    if s < 0:
                        revert with 0, 'SafeMath: Add Overflow'
                    idx = idx + 1
                    s = s
                    t = t + Mask(112, 0, _139)
                    continue 
                require Mask(112, 0, _139)
                if Mask(112, 0, _112) * stor10 / Mask(112, 0, _115) * Mask(112, 0, _139) / Mask(112, 0, _139) != Mask(112, 0, _112) * stor10 / Mask(112, 0, _115):
                    revert with 0, 'SafeMath: Mul Overflow'
                if s + (Mask(112, 0, _112) * stor10 / Mask(112, 0, _115) * Mask(112, 0, _139)) < Mask(112, 0, _112) * stor10 / Mask(112, 0, _115) * Mask(112, 0, _139):
                    revert with 0, 'SafeMath: Add Overflow'
                idx = idx + 1
                s = s + (Mask(112, 0, _112) * stor10 / Mask(112, 0, _115) * Mask(112, 0, _139))
                t = t + Mask(112, 0, _139)
                continue 
            if t + Mask(112, 0, _143) < Mask(112, 0, _143):
                revert with 0, 'SafeMath: Add Overflow'
            if not Mask(112, 0, _143):
                if s < 0:
                    revert with 0, 'SafeMath: Add Overflow'
                idx = idx + 1
                s = s
                t = t + Mask(112, 0, _143)
                continue 
            require Mask(112, 0, _143)
            if Mask(112, 0, _112) * stor10 / Mask(112, 0, _115) * Mask(112, 0, _143) / Mask(112, 0, _143) != Mask(112, 0, _112) * stor10 / Mask(112, 0, _115):
                revert with 0, 'SafeMath: Mul Overflow'
            if s + (Mask(112, 0, _112) * stor10 / Mask(112, 0, _115) * Mask(112, 0, _143)) < Mask(112, 0, _112) * stor10 / Mask(112, 0, _115) * Mask(112, 0, _143):
                revert with 0, 'SafeMath: Add Overflow'
            idx = idx + 1
            s = s + (Mask(112, 0, _112) * stor10 / Mask(112, 0, _115) * Mask(112, 0, _143))
            t = t + Mask(112, 0, _143)
            continue 
        if not stor10:
            require Mask(112, 0, _112)
            require ext_code.size(address(_106))
            staticcall address(_106).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _130 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _138 = mem[_130]
            require mem[_130] == mem[_130 + 18 len 14]
            _142 = mem[_130 + 32]
            require mem[_130 + 32] == mem[_130 + 50 len 14]
            require mem[_130 + 64] == mem[_130 + 92 len 4]
            require ext_code.size(address(_106))
            staticcall address(_106).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _156 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_156] == mem[_156 + 12 len 20]
            if mem[_156 + 12 len 20] == wavaxAddress:
                if t + Mask(112, 0, _138) < Mask(112, 0, _138):
                    revert with 0, 'SafeMath: Add Overflow'
                if not Mask(112, 0, _138):
                    if s < 0:
                        revert with 0, 'SafeMath: Add Overflow'
                    idx = idx + 1
                    s = s
                    t = t + Mask(112, 0, _138)
                    continue 
                require Mask(112, 0, _138)
                if 0 / Mask(112, 0, _112) * Mask(112, 0, _138) / Mask(112, 0, _138) != 0 / Mask(112, 0, _112):
                    revert with 0, 'SafeMath: Mul Overflow'
                if s + (0 / Mask(112, 0, _112) * Mask(112, 0, _138)) < 0 / Mask(112, 0, _112) * Mask(112, 0, _138):
                    revert with 0, 'SafeMath: Add Overflow'
                idx = idx + 1
                s = s + (0 / Mask(112, 0, _112) * Mask(112, 0, _138))
                t = t + Mask(112, 0, _138)
                continue 
            if t + Mask(112, 0, _142) < Mask(112, 0, _142):
                revert with 0, 'SafeMath: Add Overflow'
            if not Mask(112, 0, _142):
                if s < 0:
                    revert with 0, 'SafeMath: Add Overflow'
                idx = idx + 1
                s = s
                t = t + Mask(112, 0, _142)
                continue 
            require Mask(112, 0, _142)
            if 0 / Mask(112, 0, _112) * Mask(112, 0, _142) / Mask(112, 0, _142) != 0 / Mask(112, 0, _112):
                revert with 0, 'SafeMath: Mul Overflow'
            if s + (0 / Mask(112, 0, _112) * Mask(112, 0, _142)) < 0 / Mask(112, 0, _112) * Mask(112, 0, _142):
                revert with 0, 'SafeMath: Add Overflow'
            idx = idx + 1
            s = s + (0 / Mask(112, 0, _112) * Mask(112, 0, _142))
            t = t + Mask(112, 0, _142)
            continue 
        require stor10
        if Mask(112, 0, _115) * stor10 / stor10 != Mask(112, 0, _115):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, _112)
        require ext_code.size(address(_106))
        staticcall address(_106).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _136 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _140 = mem[_136]
        require mem[_136] == mem[_136 + 18 len 14]
        _144 = mem[_136 + 32]
        require mem[_136 + 32] == mem[_136 + 50 len 14]
        require mem[_136 + 64] == mem[_136 + 92 len 4]
        require ext_code.size(address(_106))
        staticcall address(_106).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _160 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_160] == mem[_160 + 12 len 20]
        if mem[_160 + 12 len 20] == wavaxAddress:
            if t + Mask(112, 0, _140) < Mask(112, 0, _140):
                revert with 0, 'SafeMath: Add Overflow'
            if not Mask(112, 0, _140):
                if s < 0:
                    revert with 0, 'SafeMath: Add Overflow'
                idx = idx + 1
                s = s
                t = t + Mask(112, 0, _140)
                continue 
            require Mask(112, 0, _140)
            if Mask(112, 0, _115) * stor10 / Mask(112, 0, _112) * Mask(112, 0, _140) / Mask(112, 0, _140) != Mask(112, 0, _115) * stor10 / Mask(112, 0, _112):
                revert with 0, 'SafeMath: Mul Overflow'
            if s + (Mask(112, 0, _115) * stor10 / Mask(112, 0, _112) * Mask(112, 0, _140)) < Mask(112, 0, _115) * stor10 / Mask(112, 0, _112) * Mask(112, 0, _140):
                revert with 0, 'SafeMath: Add Overflow'
            idx = idx + 1
            s = s + (Mask(112, 0, _115) * stor10 / Mask(112, 0, _112) * Mask(112, 0, _140))
            t = t + Mask(112, 0, _140)
            continue 
        if t + Mask(112, 0, _144) < Mask(112, 0, _144):
            revert with 0, 'SafeMath: Add Overflow'
        if not Mask(112, 0, _144):
            if s < 0:
                revert with 0, 'SafeMath: Add Overflow'
            idx = idx + 1
            s = s
            t = t + Mask(112, 0, _144)
            continue 
        require Mask(112, 0, _144)
        if Mask(112, 0, _115) * stor10 / Mask(112, 0, _112) * Mask(112, 0, _144) / Mask(112, 0, _144) != Mask(112, 0, _115) * stor10 / Mask(112, 0, _112):
            revert with 0, 'SafeMath: Mul Overflow'
        if s + (Mask(112, 0, _115) * stor10 / Mask(112, 0, _112) * Mask(112, 0, _144)) < Mask(112, 0, _115) * stor10 / Mask(112, 0, _112) * Mask(112, 0, _144):
            revert with 0, 'SafeMath: Add Overflow'
        idx = idx + 1
        s = s + (Mask(112, 0, _115) * stor10 / Mask(112, 0, _112) * Mask(112, 0, _144))
        t = t + Mask(112, 0, _144)
        continue 
    if not t:
        return 0
    if t:
        return (s / t)
    revert
}



}
