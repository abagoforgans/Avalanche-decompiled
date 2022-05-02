contract main {




// =====================  Runtime code  =====================


#
#  - getPriceInUsd(address arg1)
#  - sub_c500e214(?)
#  - sub_cf5e39ad(?)
#  - sub_f74f08cd(?)
#
address owner;
address pendingOwner;
address joeAddress;
address wavaxAddress;
address joeFactoryAddress;
address sub_4e57afe0Address;
address sub_2c9e2b05Address;

function wavax() payable {
    return wavaxAddress
}

function sub_2c9e2b05(?) payable {
    return sub_2c9e2b05Address
}

function sub_4e57afe0(?) payable {
    return sub_4e57afe0Address
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

function sub_f8fcc2aa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).poolLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
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

function sub_2b443875(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    mem[96] = 0x5a2f3d0900000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).poolInfo() with:
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
    require ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128 <= test266151307() and (32 * mem[mem[96] + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (128 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require return_data.size + -s + 96 >= 128
        _20 = mem[64]
        require mem[64] + 128 <= test266151307() and mem[64] + 128 >= mem[64]
        mem[64] = mem[64] + 128
        require mem[s] == mem[s + 12 len 20]
        mem[_20] = mem[s]
        require mem[s + 32] == mem[s + 32]
        mem[_20 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 64]
        mem[_20 + 64] = mem[s + 64]
        require mem[s + 96] == mem[s + 96]
        mem[_20 + 96] = mem[s + 96]
        mem[t] = _20
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    require arg2 < mem[ceil32(return_data.size) + 96]
    mem[mem[64]] = mem[mem[(32 * arg2) + ceil32(return_data.size) + 128] + 12 len 20]
    return memory
      from mem[64]
       len 32
}

function getPools(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x5a2f3d0900000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.poolInfo() with:
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
    require ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128 <= test266151307() and (32 * mem[mem[96] + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (128 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require return_data.size + -s + 96 >= 128
        _21 = mem[64]
        require mem[64] + 128 <= test266151307() and mem[64] + 128 >= mem[64]
        mem[64] = mem[64] + 128
        require mem[s] == mem[s + 12 len 20]
        mem[_21] = mem[s]
        require mem[s + 32] == mem[s + 32]
        mem[_21 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 64]
        mem[_21 + 64] = mem[s + 64]
        require mem[s + 96] == mem[s + 96]
        mem[_21 + 96] = mem[s + 96]
        mem[t] = _21
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    _20 = mem[64]
    mem[mem[64]] = 32
    _22 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _22:
        _33 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_33 + 32]
        mem[t + 64] = mem[_33 + 64]
        mem[t + 96] = mem[_33 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _20 + (128 * _22) + -mem[64] + 64
}

function getPriceInAvax(address arg1) payable {
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
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if address(ext_call.return_data[0]) != wavaxAddress:
        if not 10^uint8(-ext_call.return_data[0] + 18):
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / 10^18 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
        else:
            if 10^uint8(-ext_call.return_data[0] + 18):
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / 10^18 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18))
    else:
        if not 10^uint8(-ext_call.return_data[0] + 18):
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / 10^18 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
        else:
            if 10^uint8(-ext_call.return_data[0] + 18):
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / 10^18 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18))
    revert
}

function getAvaxPrice() payable {
    require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
    staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
    staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
    if ext_call.return_data[12 len 20] != wavaxAddress:
        staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    if ext_call.return_data[12 len 20] != wavaxAddress:
                        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not 10^uint8(-ext_call.return_data[0] + 18):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if 3 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            return (3 * 0 / Mask(112, 0, ext_call.return_data[32]) / 3)
                        require 10^uint8(-ext_call.return_data[0] + 18)
                        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            revert with 0, 'SafeMath: Mul Overflow'
                        require Mask(112, 0, ext_call.return_data[32])
                        if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[0])
                        if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[0])
                    if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[32])
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return (3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 3)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
    staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not 10^uint8(-ext_call.return_data[0] + 18):
        require Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 3 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return (3 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
    require 10^uint8(-ext_call.return_data[0] + 18)
    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: Mul Overflow'
    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
        revert with 0, 'SafeMath: Mul Overflow'
    require Mask(112, 0, ext_call.return_data[0])
    require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
    staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
    staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
    if ext_call.return_data[12 len 20] != wavaxAddress:
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[32])
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Add Overflow'
        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
    staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not 10^uint8(-ext_call.return_data[0] + 18):
        require Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
    require 10^uint8(-ext_call.return_data[0] + 18)
    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: Mul Overflow'
    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
        revert with 0, 'SafeMath: Mul Overflow'
    require Mask(112, 0, ext_call.return_data[0])
    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
    if ext_call.return_data[12 len 20] != wavaxAddress:
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[32])
            if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[32])
        if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Add Overflow'
        return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not 10^uint8(-ext_call.return_data[0] + 18):
        require Mask(112, 0, ext_call.return_data[0])
        if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
    require 10^uint8(-ext_call.return_data[0] + 18)
    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: Mul Overflow'
    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
        revert with 0, 'SafeMath: Mul Overflow'
    require Mask(112, 0, ext_call.return_data[0])
    if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: Add Overflow'
    if 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: Add Overflow'
    return (3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 3)
}



}
