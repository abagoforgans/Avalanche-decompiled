contract main {




// =====================  Runtime code  =====================


#
#  - getPriceInUSD(address arg1)
#  - sub_1dbab7c6(?)
#
address owner;
address pendingOwner;
address joeAddress;
address wavaxAddress;
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

function _tokenDecimalsMultiplier(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return 10^uint8(-ext_call.return_data[0] + 18)
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
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
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
    if ext_call.return_data[12 len 20] != wavaxAddress:
        if not 10^uint8(-ext_call.return_data[0] + 18):
            if Mask(112, 0, ext_call.return_data[32]):
                return (0 / Mask(112, 0, ext_call.return_data[32]))
        else:
            if 10^uint8(-ext_call.return_data[0] + 18):
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                if Mask(112, 0, ext_call.return_data[32]):
                    return (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]))
    else:
        if not 10^uint8(-ext_call.return_data[0] + 18):
            if Mask(112, 0, ext_call.return_data[0]):
                return (0 / Mask(112, 0, ext_call.return_data[0]))
        else:
            if 10^uint8(-ext_call.return_data[0] + 18):
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                if Mask(112, 0, ext_call.return_data[0]):
                    return (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]))
    revert
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
            if Mask(112, 0, ext_call.return_data[32]):
                return (0 / Mask(112, 0, ext_call.return_data[32]))
        else:
            if 10^uint8(-ext_call.return_data[0] + 18):
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                if Mask(112, 0, ext_call.return_data[32]):
                    return (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]))
    else:
        if not 10^uint8(-ext_call.return_data[0] + 18):
            if Mask(112, 0, ext_call.return_data[0]):
                return (0 / Mask(112, 0, ext_call.return_data[0]))
        else:
            if 10^uint8(-ext_call.return_data[0] + 18):
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                if Mask(112, 0, ext_call.return_data[0]):
                    return (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]))
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
    if ext_call.return_data[12 len 20] != wavaxAddress:
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[32])
            if 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
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
            if ext_call.return_data[12 len 20] != wavaxAddress:
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
                    if ext_call.return_data[12 len 20] != wavaxAddress:
                        if not 10^uint8(-ext_call.return_data[0] + 18):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Mul Overflow'
                            if 1000000000001 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if 2000000000001 * 0 / Mask(112, 0, ext_call.return_data[32]) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            return (2000000000001 * 0 / Mask(112, 0, ext_call.return_data[32]) / 3)
                        require 10^uint8(-ext_call.return_data[0] + 18)
                        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            revert with 0, 'SafeMath: Mul Overflow'
                        require Mask(112, 0, ext_call.return_data[32])
                        if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if 1000000000001 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (1000000000001 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        return ((1000000000001 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[0])
                        if 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if 1000000000001 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (1000000000001 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        return ((1000000000001 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[0])
                    if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 1000000000001 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (1000000000001 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((1000000000001 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
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
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        return ((2 * 10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
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
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        return ((2 * 10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (1000000000001 * 0 / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (1000000000001 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
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
            if ext_call.return_data[12 len 20] != wavaxAddress:
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((2 * 10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) + (1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[32])
        if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
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
        if ext_call.return_data[12 len 20] != wavaxAddress:
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
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (1000000000001 * 0 / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        return ((10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (1000000000001 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((2 * 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
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
            if ext_call.return_data[12 len 20] != wavaxAddress:
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 2000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return (2000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 3)
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
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
            if ext_call.return_data[12 len 20] != wavaxAddress:
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((2 * 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (1000000000001 * 0 / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (1000000000001 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
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
        if ext_call.return_data[12 len 20] != wavaxAddress:
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                if 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((2 * 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            if 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        return ((10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
    if not 10^uint8(-ext_call.return_data[0] + 18):
        require Mask(112, 0, ext_call.return_data[0])
        if 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
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
        if ext_call.return_data[12 len 20] != wavaxAddress:
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
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (1000000000001 * 0 / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        return ((10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (1000000000001 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((2 * 10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
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
            if ext_call.return_data[12 len 20] != wavaxAddress:
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((2 * 10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
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
            if ext_call.return_data[12 len 20] != wavaxAddress:
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 1000000000001 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (1000000000001 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((1000000000001 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 1000000000001 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (1000000000001 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((1000000000001 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 1000000000001 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 2000000000001 * 0 / Mask(112, 0, ext_call.return_data[0]) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return (2000000000001 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 1000000000001 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (1000000000001 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((1000000000001 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
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
        if ext_call.return_data[12 len 20] != wavaxAddress:
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                if 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            if 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((2 * 10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        return ((10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) + (1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
    require 10^uint8(-ext_call.return_data[0] + 18)
    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: Mul Overflow'
    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
        revert with 0, 'SafeMath: Mul Overflow'
    require Mask(112, 0, ext_call.return_data[0])
    if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: Mul Overflow'
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
    if ext_call.return_data[12 len 20] != wavaxAddress:
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
            if ext_call.return_data[12 len 20] != wavaxAddress:
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (1000000000001 * 0 / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (1000000000001 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((2 * 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
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
        if ext_call.return_data[12 len 20] != wavaxAddress:
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                if 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            if 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Add Overflow'
        if (2 * 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        return ((2 * 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
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
        if ext_call.return_data[12 len 20] != wavaxAddress:
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                if 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            if 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (1000000000001 * 0 / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (1000000000001 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (2 * 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        return ((2 * 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
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
    if ext_call.return_data[12 len 20] != wavaxAddress:
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[32])
            if 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[32])
        if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Add Overflow'
        return ((1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
    if not 10^uint8(-ext_call.return_data[0] + 18):
        require Mask(112, 0, ext_call.return_data[0])
        if 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) < 10^12 * 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        return ((1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^12 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3)
    require 10^uint8(-ext_call.return_data[0] + 18)
    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: Mul Overflow'
    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
        revert with 0, 'SafeMath: Mul Overflow'
    require Mask(112, 0, ext_call.return_data[0])
    if 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 10^12 != 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: Mul Overflow'
    if 1000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: Add Overflow'
    if 2000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^12 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: Add Overflow'
    return (2000000000001 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 3)
}



}
