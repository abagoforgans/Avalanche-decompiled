contract main {




// =====================  Runtime code  =====================


#
#  - sub_32471a24(?)
#  - sub_915c4e0b(?)
#
const sub_04f75ce9(?) = (10^18 * ext_call.return_data[160] / ext_call.return_data[160])

const sub_11178bbb(?) = 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917

const sub_3ee8f988(?) = 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1

const joeRouter = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const timeStaking = 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9

const sub_7aad2ebd(?) = 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318

const sub_93f8f398(?) = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df

const sub_beae3881(?) = 10^18 * ext_call.return_data[160] / ext_call.return_data[160], 0

const sub_c13b6b28(?) = 0x694738e0a438d90487b4a549b201142c1a97b556

const sub_c56214ad(?) = 0xa184ae1a71ecad20e822cb965b99c287590c4ffe

const sub_e66217e9(?) = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10

const sub_ee104509(?) = 0x1c46450211cb2646cc1da3c5242422967ed9e04c

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const TIME = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3

const MEMO = 0x136acd46c134e8269052c62a67042d6bdedde3c9

const MIM = 0x130966628846bfd36ff31a822705796e8cb8c18d


address owner;
uint256 sub_544d2e53;
uint256 sub_4636bb50;
uint256 sub_c0481f52;

function sub_4636bb50(?) payable {
    return sub_4636bb50
}

function sub_544d2e53(?) payable {
    return sub_544d2e53
}

function owner() payable {
    return owner
}

function sub_c0481f52(?) payable {
    return sub_c0481f52
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

function sub_8ef969c6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).bondInfo(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    return bool(ext_call.return_data[0])
}

function sub_68715111(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
    staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xa184ae1a71ecad20e822cb965b99c287590c4ffe)
    staticcall 0xa184ae1a71ecad20e822cb965b99c287590c4ffe.payoutFor(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a2a7b241(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
    staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc26850686ce755ffb8690ea156e5a6cf03dcbde1)
    staticcall 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1.payoutFor(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_e65e36ed(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
    staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
    staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f23c0b0a(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
    staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args 0x130966628846bfd36ff31a822705796e8cb8c18d, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
    staticcall 0x694738e0a438d90487b4a549b201142c1a97b556.payoutFor(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ef488c89(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    staticcall 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.warmupInfo(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[96] == bool(ext_call.return_data[96])
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    staticcall 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.epoch() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool((2 * ceil32(return_data.size)) + 352 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    if ext_call.return_data[0] < ext_call.return_data[64]:
        return 0
    if not ext_call.return_data[64]:
        return 0
    return 1
}

function sub_26b2d28b(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 292
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _21 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _22 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require _21 + (32 * _22) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _22)] = mem[_21 + 224 len ceil32(32 * _22)]
    if _22 < 1:
        revert with 0, 17
    if _22 - 1 >= _22:
        revert with 0, 50
    mem[mem[64]] = mem[(32 * _22 - 1) + ceil32(return_data.size) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_70c235f1(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    mem[160] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 292
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _21 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _22 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require _21 + (32 * _22) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _22)] = mem[_21 + 224 len ceil32(32 * _22)]
    if _22 < 1:
        revert with 0, 17
    if _22 - 1 >= _22:
        revert with 0, 50
    mem[mem[64]] = mem[(32 * _22 - 1) + ceil32(return_data.size) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_41ff7d6b(?) payable {
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    staticcall 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.epoch() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.circulatingSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[32]:
        return 0
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] > !ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] + ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[32]) / ext_call.return_data[0])
    if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] > !(ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 0, 17
    if ext_call.return_data[0] + (ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return ((10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0]) / ext_call.return_data[0])
}

function sub_275bc608(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1 / 2
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 292
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args Mask(255, 1, arg1), Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _357 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _358 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require _357 + (32 * _358) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _358)] = mem[_357 + 224 len ceil32(32 * _358)]
    if _358 < 1:
        revert with 0, 17
    if _358 - 1 >= _358:
        revert with 0, 50
    _705 = mem[(32 * _358 - 1) + ceil32(return_data.size) + 224]
    require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
    staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _708 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _709 = mem[_708]
    require mem[_708] == mem[_708 + 18 len 14]
    _710 = mem[_708 + 32]
    require mem[_708 + 32] == mem[_708 + 50 len 14]
    require mem[_708 + 64] == mem[_708 + 92 len 4]
    if _705 <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_AMOUNT'
    if mem[_708 + 18 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if mem[_708 + 50 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if _705 and mem[_708 + 50 len 14] > -1 / _705:
        revert with 0, 17
    if not mem[_708 + 18 len 14]:
        revert with 0, 18
    if _705 * mem[_708 + 50 len 14] / mem[_708 + 18 len 14] <= arg1 / 2:
        require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.feeTo() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _723 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _727 = mem[_723]
        require mem[_723] == mem[_723 + 12 len 20]
        require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
        staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.kLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _730 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not address(_727):
            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _740 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_740] > -1:
                revert with 0, 17
            if _705 and mem[_740] > -1 / _705:
                revert with 0, 17
            if not Mask(112, 0, _709):
                revert with 0, 18
            if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_740] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                revert with 0, 17
            if not Mask(112, 0, _710):
                revert with 0, 18
            if _705 * mem[_740] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_740] / Mask(112, 0, _710):
                mem[mem[64]] = _705 * mem[_740] / Mask(112, 0, _709)
            else:
                mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_740] / Mask(112, 0, _710)
        else:
            if not mem[_730]:
                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _741 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_741] > -1:
                    revert with 0, 17
                if _705 and mem[_741] > -1 / _705:
                    revert with 0, 17
                if not Mask(112, 0, _709):
                    revert with 0, 18
                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_741] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                    revert with 0, 17
                if not Mask(112, 0, _710):
                    revert with 0, 18
                if _705 * mem[_741] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_741] / Mask(112, 0, _710):
                    mem[mem[64]] = _705 * mem[_741] / Mask(112, 0, _709)
                else:
                    mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_741] / Mask(112, 0, _710)
            else:
                if Mask(112, 0, _709) and Mask(112, 0, _710) > -1 / Mask(112, 0, _709):
                    revert with 0, 17
                if Mask(112, 0, _709) * Mask(112, 0, _710) <= 3:
                    if not Mask(112, 0, _709) * Mask(112, 0, _710):
                        if mem[_730] <= 3:
                            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not mem[_730]:
                                _759 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_759] > -1:
                                    revert with 0, 17
                                if _705 and mem[_759] > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_759] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if _705 * mem[_759] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_759] / Mask(112, 0, _710):
                                    mem[mem[64]] = _705 * mem[_759] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_759] / Mask(112, 0, _710)
                            else:
                                _765 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_765] > -1:
                                    revert with 0, 17
                                if _705 and mem[_765] > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_765] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if _705 * mem[_765] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_765] / Mask(112, 0, _710):
                                    mem[mem[64]] = _705 * mem[_765] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_765] / Mask(112, 0, _710)
                        else:
                            if 1 > !(mem[_730] / 2):
                                revert with 0, 17
                            s = (mem[_730] / 2) + 1
                            t = mem[_730]
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if mem[_730] / s > !s:
                                    revert with 0, 17
                                s = (mem[_730] / s) + s / 2
                                t = s
                                continue 
                            if 0 <= t:
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1062 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1062] > -1:
                                    revert with 0, 17
                                if _705 and mem[_1062] > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1062] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if _705 * mem[_1062] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1062] / Mask(112, 0, _710):
                                    mem[mem[64]] = _705 * mem[_1062] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1062] / Mask(112, 0, _710)
                            else:
                                if 0 < t:
                                    revert with 0, 17
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1066 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1082 = mem[_1066]
                                if mem[_1066] and -t > -1 / mem[_1066]:
                                    revert with 0, 17
                                if 0 > !t:
                                    revert with 0, 17
                                if not t:
                                    revert with 0, 18
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1134 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1134] > !(-1 * _1082 * t / t):
                                    revert with 0, 17
                                if _705 and mem[_1134] + (-1 * _1082 * t / t) > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1134] + (-1 * _1082 * t / t) > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_1134] * _705) + (-1 * _1082 * t / t * _705) / Mask(112, 0, _709) < (mem[_1134] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (-1 * _1082 * t / t * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_1134] * _705) + (-1 * _1082 * t / t * _705) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_1134] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (-1 * _1082 * t / t * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710)
                    else:
                        if mem[_730] <= 3:
                            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_730]:
                                _768 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_768] > -1:
                                    revert with 0, 17
                                if _705 and mem[_768] > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_768] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if _705 * mem[_768] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_768] / Mask(112, 0, _710):
                                    mem[mem[64]] = _705 * mem[_768] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_768] / Mask(112, 0, _710)
                            else:
                                _767 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _770 = mem[_767]
                                if mem[_767] and 1 > -1 / mem[_767]:
                                    revert with 0, 17
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _865 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_865] > !(_770 / 5):
                                    revert with 0, 17
                                if _705 and mem[_865] + (_770 / 5) > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_865] + (_770 / 5) > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_865] * _705) + (_770 / 5 * _705) / Mask(112, 0, _709) < (mem[_865] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (_770 / 5 * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_865] * _705) + (_770 / 5 * _705) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_865] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (_770 / 5 * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710)
                        else:
                            if 1 > !(mem[_730] / 2):
                                revert with 0, 17
                            s = (mem[_730] / 2) + 1
                            t = mem[_730]
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if mem[_730] / s > !s:
                                    revert with 0, 17
                                s = (mem[_730] / s) + s / 2
                                t = s
                                continue 
                            if 1 <= t:
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1063 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1063] > -1:
                                    revert with 0, 17
                                if _705 and mem[_1063] > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1063] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if _705 * mem[_1063] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1063] / Mask(112, 0, _710):
                                    mem[mem[64]] = _705 * mem[_1063] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1063] / Mask(112, 0, _710)
                            else:
                                if 1 < t:
                                    revert with 0, 17
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1067 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1083 = mem[_1067]
                                if mem[_1067] and -t + 1 > -1 / mem[_1067]:
                                    revert with 0, 17
                                if 5 > !t:
                                    revert with 0, 17
                                if not t + 5:
                                    revert with 0, 18
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1135 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1135] > !(_1083 - (t * _1083) / t + 5):
                                    revert with 0, 17
                                if _705 and mem[_1135] + (_1083 - (t * _1083) / t + 5) > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1135] + (_1083 - (t * _1083) / t + 5) > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_1135] * _705) + (_1083 - (t * _1083) / t + 5 * _705) / Mask(112, 0, _709) < (mem[_1135] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (_1083 - (t * _1083) / t + 5 * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_1135] * _705) + (_1083 - (t * _1083) / t + 5 * _705) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_1135] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (_1083 - (t * _1083) / t + 5 * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710)
                else:
                    if 1 > !(Mask(112, 0, _709) * Mask(112, 0, _710) / 2):
                        revert with 0, 17
                    s = (Mask(112, 0, _709) * Mask(112, 0, _710) / 2) + 1
                    t = Mask(112, 0, _709) * Mask(112, 0, _710)
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if Mask(112, 0, _709) * Mask(112, 0, _710) / s > !s:
                            revert with 0, 17
                        s = (Mask(112, 0, _709) * Mask(112, 0, _710) / s) + s / 2
                        t = s
                        continue 
                    if mem[_730] <= 3:
                        if not mem[_730]:
                            if t <= 0:
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1091 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1091] > -1:
                                    revert with 0, 17
                                if _705 and mem[_1091] > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1091] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if _705 * mem[_1091] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1091] / Mask(112, 0, _710):
                                    mem[mem[64]] = _705 * mem[_1091] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1091] / Mask(112, 0, _710)
                            else:
                                if t < 0:
                                    revert with 0, 17
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1096 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1104 = mem[_1096]
                                if mem[_1096] and t > -1 / mem[_1096]:
                                    revert with 0, 17
                                if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                    revert with 0, 17
                                if 5 * t > -1:
                                    revert with 0, 17
                                if not 5 * t:
                                    revert with 0, 18
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1161 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1161] > !(_1104 * t / 5 * t):
                                    revert with 0, 17
                                if _705 and mem[_1161] + (_1104 * t / 5 * t) > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1161] + (_1104 * t / 5 * t) > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_1161] * _705) + (_1104 * t / 5 * t * _705) / Mask(112, 0, _709) < (mem[_1161] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (_1104 * t / 5 * t * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_1161] * _705) + (_1104 * t / 5 * t * _705) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_1161] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (_1104 * t / 5 * t * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710)
                        else:
                            if t <= 1:
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1097 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1097] > -1:
                                    revert with 0, 17
                                if _705 and mem[_1097] > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1097] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if _705 * mem[_1097] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1097] / Mask(112, 0, _710):
                                    mem[mem[64]] = _705 * mem[_1097] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1097] / Mask(112, 0, _710)
                            else:
                                if t < 1:
                                    revert with 0, 17
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1101 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1107 = mem[_1101]
                                if mem[_1101] and t - 1 > -1 / mem[_1101]:
                                    revert with 0, 17
                                if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                    revert with 0, 17
                                if 5 * t > -2:
                                    revert with 0, 17
                                if not (5 * t) + 1:
                                    revert with 0, 18
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1167 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1167] > !(-_1107 + (t * _1107) / (5 * t) + 1):
                                    revert with 0, 17
                                if _705 and mem[_1167] + (-_1107 + (t * _1107) / (5 * t) + 1) > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1167] + (-_1107 + (t * _1107) / (5 * t) + 1) > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_1167] * _705) + (-_1107 + (t * _1107) / (5 * t) + 1 * _705) / Mask(112, 0, _709) < (mem[_1167] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (-_1107 + (t * _1107) / (5 * t) + 1 * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_1167] * _705) + (-_1107 + (t * _1107) / (5 * t) + 1 * _705) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_1167] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (-_1107 + (t * _1107) / (5 * t) + 1 * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710)
                    else:
                        if 1 > !(mem[_730] / 2):
                            revert with 0, 17
                        s = (mem[_730] / 2) + 1
                        u = mem[_730]
                        while s < u:
                            if not s:
                                revert with 0, 18
                            if mem[_730] / s > !s:
                                revert with 0, 17
                            s = (mem[_730] / s) + s / 2
                            u = s
                            continue 
                        if t <= u:
                            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1253 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1253] > -1:
                                revert with 0, 17
                            if _705 and mem[_1253] > -1 / _705:
                                revert with 0, 17
                            if not Mask(112, 0, _709):
                                revert with 0, 18
                            if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1253] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                revert with 0, 17
                            if not Mask(112, 0, _710):
                                revert with 0, 18
                            if _705 * mem[_1253] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1253] / Mask(112, 0, _710):
                                mem[mem[64]] = _705 * mem[_1253] / Mask(112, 0, _709)
                            else:
                                mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1253] / Mask(112, 0, _710)
                        else:
                            if t < u:
                                revert with 0, 17
                            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1255 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1259 = mem[_1255]
                            if mem[_1255] and t - u > -1 / mem[_1255]:
                                revert with 0, 17
                            if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                revert with 0, 17
                            if 5 * t > !u:
                                revert with 0, 17
                            if not (5 * t) + u:
                                revert with 0, 18
                            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1265 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1265] > !((t * _1259) - (u * _1259) / (5 * t) + u):
                                revert with 0, 17
                            if _705 and mem[_1265] + ((t * _1259) - (u * _1259) / (5 * t) + u) > -1 / _705:
                                revert with 0, 17
                            if not Mask(112, 0, _709):
                                revert with 0, 18
                            if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1265] + ((t * _1259) - (u * _1259) / (5 * t) + u) > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                revert with 0, 17
                            if not Mask(112, 0, _710):
                                revert with 0, 18
                            if (mem[_1265] * _705) + ((t * _1259) - (u * _1259) / (5 * t) + u * _705) / Mask(112, 0, _709) < (mem[_1265] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + ((t * _1259) - (u * _1259) / (5 * t) + u * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710):
                                mem[mem[64]] = (mem[_1265] * _705) + ((t * _1259) - (u * _1259) / (5 * t) + u * _705) / Mask(112, 0, _709)
                            else:
                                mem[mem[64]] = (mem[_1265] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + ((t * _1259) - (u * _1259) / (5 * t) + u * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710)
    else:
        if arg1 / 2 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_AMOUNT'
        if mem[_708 + 50 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if mem[_708 + 18 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if Mask(255, 1, arg1) and mem[_708 + 18 len 14] > -1 / arg1 / 2:
            revert with 0, 17
        if not mem[_708 + 50 len 14]:
            revert with 0, 18
        require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.feeTo() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _734 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _737 = mem[_734]
        require mem[_734] == mem[_734 + 12 len 20]
        require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
        staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.kLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _746 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not address(_737):
            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _752 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_752] > -1:
                revert with 0, 17
            if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_752] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                revert with 0, 17
            if not Mask(112, 0, _709):
                revert with 0, 18
            if Mask(255, 1, arg1) and mem[_752] > -1 / arg1 / 2:
                revert with 0, 17
            if not Mask(112, 0, _710):
                revert with 0, 18
            if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_752] / Mask(112, 0, _709) < arg1 / 2 * mem[_752] / Mask(112, 0, _710):
                mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_752] / Mask(112, 0, _709)
            else:
                mem[mem[64]] = arg1 / 2 * mem[_752] / Mask(112, 0, _710)
        else:
            if not mem[_746]:
                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _755 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_755] > -1:
                    revert with 0, 17
                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_755] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                    revert with 0, 17
                if not Mask(112, 0, _709):
                    revert with 0, 18
                if Mask(255, 1, arg1) and mem[_755] > -1 / arg1 / 2:
                    revert with 0, 17
                if not Mask(112, 0, _710):
                    revert with 0, 18
                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_755] / Mask(112, 0, _709) < arg1 / 2 * mem[_755] / Mask(112, 0, _710):
                    mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_755] / Mask(112, 0, _709)
                else:
                    mem[mem[64]] = arg1 / 2 * mem[_755] / Mask(112, 0, _710)
            else:
                if Mask(112, 0, _709) and Mask(112, 0, _710) > -1 / Mask(112, 0, _709):
                    revert with 0, 17
                if Mask(112, 0, _709) * Mask(112, 0, _710) <= 3:
                    if not Mask(112, 0, _709) * Mask(112, 0, _710):
                        if mem[_746] <= 3:
                            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not mem[_746]:
                                _815 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_815] > -1:
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_815] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_815] > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_815] / Mask(112, 0, _709) < arg1 / 2 * mem[_815] / Mask(112, 0, _710):
                                    mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_815] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = arg1 / 2 * mem[_815] / Mask(112, 0, _710)
                            else:
                                _823 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_823] > -1:
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_823] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_823] > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_823] / Mask(112, 0, _709) < arg1 / 2 * mem[_823] / Mask(112, 0, _710):
                                    mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_823] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = arg1 / 2 * mem[_823] / Mask(112, 0, _710)
                        else:
                            if 1 > !(mem[_746] / 2):
                                revert with 0, 17
                            s = (mem[_746] / 2) + 1
                            t = mem[_746]
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if mem[_746] / s > !s:
                                    revert with 0, 17
                                s = (mem[_746] / s) + s / 2
                                t = s
                                continue 
                            if 0 <= t:
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1060 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1060] > -1:
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1060] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_1060] > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1060] / Mask(112, 0, _709) < arg1 / 2 * mem[_1060] / Mask(112, 0, _710):
                                    mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1060] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = arg1 / 2 * mem[_1060] / Mask(112, 0, _710)
                            else:
                                if 0 < t:
                                    revert with 0, 17
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1064 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1076 = mem[_1064]
                                if mem[_1064] and -t > -1 / mem[_1064]:
                                    revert with 0, 17
                                if 0 > !t:
                                    revert with 0, 17
                                if not t:
                                    revert with 0, 18
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1132 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1132] > !(-1 * _1076 * t / t):
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1132] + (-1 * _1076 * t / t) > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_1132] + (-1 * _1076 * t / t) > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_1132] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (-1 * _1076 * t / t * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709) < (mem[_1132] * arg1 / 2) + (-1 * _1076 * t / t * arg1 / 2) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_1132] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (-1 * _1076 * t / t * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_1132] * arg1 / 2) + (-1 * _1076 * t / t * arg1 / 2) / Mask(112, 0, _710)
                    else:
                        if mem[_746] <= 3:
                            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_746]:
                                _828 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_828] > -1:
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_828] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_828] > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_828] / Mask(112, 0, _709) < arg1 / 2 * mem[_828] / Mask(112, 0, _710):
                                    mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_828] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = arg1 / 2 * mem[_828] / Mask(112, 0, _710)
                            else:
                                _827 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _832 = mem[_827]
                                if mem[_827] and 1 > -1 / mem[_827]:
                                    revert with 0, 17
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _934 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_934] > !(_832 / 5):
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_934] + (_832 / 5) > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_934] + (_832 / 5) > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_934] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (_832 / 5 * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709) < (mem[_934] * arg1 / 2) + (_832 / 5 * arg1 / 2) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_934] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (_832 / 5 * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_934] * arg1 / 2) + (_832 / 5 * arg1 / 2) / Mask(112, 0, _710)
                        else:
                            if 1 > !(mem[_746] / 2):
                                revert with 0, 17
                            s = (mem[_746] / 2) + 1
                            t = mem[_746]
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if mem[_746] / s > !s:
                                    revert with 0, 17
                                s = (mem[_746] / s) + s / 2
                                t = s
                                continue 
                            if 1 <= t:
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1061 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1061] > -1:
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1061] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_1061] > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1061] / Mask(112, 0, _709) < arg1 / 2 * mem[_1061] / Mask(112, 0, _710):
                                    mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1061] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = arg1 / 2 * mem[_1061] / Mask(112, 0, _710)
                            else:
                                if 1 < t:
                                    revert with 0, 17
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1065 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1077 = mem[_1065]
                                if mem[_1065] and -t + 1 > -1 / mem[_1065]:
                                    revert with 0, 17
                                if 5 > !t:
                                    revert with 0, 17
                                if not t + 5:
                                    revert with 0, 18
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1133 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1133] > !(_1077 - (t * _1077) / t + 5):
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1133] + (_1077 - (t * _1077) / t + 5) > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_1133] + (_1077 - (t * _1077) / t + 5) > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_1133] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (_1077 - (t * _1077) / t + 5 * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709) < (mem[_1133] * arg1 / 2) + (_1077 - (t * _1077) / t + 5 * arg1 / 2) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_1133] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (_1077 - (t * _1077) / t + 5 * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_1133] * arg1 / 2) + (_1077 - (t * _1077) / t + 5 * arg1 / 2) / Mask(112, 0, _710)
                else:
                    if 1 > !(Mask(112, 0, _709) * Mask(112, 0, _710) / 2):
                        revert with 0, 17
                    s = (Mask(112, 0, _709) * Mask(112, 0, _710) / 2) + 1
                    t = Mask(112, 0, _709) * Mask(112, 0, _710)
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if Mask(112, 0, _709) * Mask(112, 0, _710) / s > !s:
                            revert with 0, 17
                        s = (Mask(112, 0, _709) * Mask(112, 0, _710) / s) + s / 2
                        t = s
                        continue 
                    if mem[_746] <= 3:
                        if not mem[_746]:
                            if t <= 0:
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1088 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1088] > -1:
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1088] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_1088] > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1088] / Mask(112, 0, _709) < arg1 / 2 * mem[_1088] / Mask(112, 0, _710):
                                    mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1088] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = arg1 / 2 * mem[_1088] / Mask(112, 0, _710)
                            else:
                                if t < 0:
                                    revert with 0, 17
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1094 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1102 = mem[_1094]
                                if mem[_1094] and t > -1 / mem[_1094]:
                                    revert with 0, 17
                                if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                    revert with 0, 17
                                if 5 * t > -1:
                                    revert with 0, 17
                                if not 5 * t:
                                    revert with 0, 18
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1156 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1156] > !(_1102 * t / 5 * t):
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1156] + (_1102 * t / 5 * t) > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_1156] + (_1102 * t / 5 * t) > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_1156] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (_1102 * t / 5 * t * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709) < (mem[_1156] * arg1 / 2) + (_1102 * t / 5 * t * arg1 / 2) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_1156] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (_1102 * t / 5 * t * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_1156] * arg1 / 2) + (_1102 * t / 5 * t * arg1 / 2) / Mask(112, 0, _710)
                        else:
                            if t <= 1:
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1095 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1095] > -1:
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1095] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_1095] > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1095] / Mask(112, 0, _709) < arg1 / 2 * mem[_1095] / Mask(112, 0, _710):
                                    mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1095] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = arg1 / 2 * mem[_1095] / Mask(112, 0, _710)
                            else:
                                if t < 1:
                                    revert with 0, 17
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1099 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1106 = mem[_1099]
                                if mem[_1099] and t - 1 > -1 / mem[_1099]:
                                    revert with 0, 17
                                if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                    revert with 0, 17
                                if 5 * t > -2:
                                    revert with 0, 17
                                if not (5 * t) + 1:
                                    revert with 0, 18
                                require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                                staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1164 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1164] > !(-_1106 + (t * _1106) / (5 * t) + 1):
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1164] + (-_1106 + (t * _1106) / (5 * t) + 1) > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_1164] + (-_1106 + (t * _1106) / (5 * t) + 1) > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_1164] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (-_1106 + (t * _1106) / (5 * t) + 1 * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709) < (mem[_1164] * arg1 / 2) + (-_1106 + (t * _1106) / (5 * t) + 1 * arg1 / 2) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_1164] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (-_1106 + (t * _1106) / (5 * t) + 1 * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_1164] * arg1 / 2) + (-_1106 + (t * _1106) / (5 * t) + 1 * arg1 / 2) / Mask(112, 0, _710)
                    else:
                        if 1 > !(mem[_746] / 2):
                            revert with 0, 17
                        s = (mem[_746] / 2) + 1
                        u = mem[_746]
                        while s < u:
                            if not s:
                                revert with 0, 18
                            if mem[_746] / s > !s:
                                revert with 0, 17
                            s = (mem[_746] / s) + s / 2
                            u = s
                            continue 
                        if t <= u:
                            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1252 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1252] > -1:
                                revert with 0, 17
                            if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1252] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                revert with 0, 17
                            if not Mask(112, 0, _709):
                                revert with 0, 18
                            if Mask(255, 1, arg1) and mem[_1252] > -1 / arg1 / 2:
                                revert with 0, 17
                            if not Mask(112, 0, _710):
                                revert with 0, 18
                            if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1252] / Mask(112, 0, _709) < arg1 / 2 * mem[_1252] / Mask(112, 0, _710):
                                mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1252] / Mask(112, 0, _709)
                            else:
                                mem[mem[64]] = arg1 / 2 * mem[_1252] / Mask(112, 0, _710)
                        else:
                            if t < u:
                                revert with 0, 17
                            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1254 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1258 = mem[_1254]
                            if mem[_1254] and t - u > -1 / mem[_1254]:
                                revert with 0, 17
                            if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                revert with 0, 17
                            if 5 * t > !u:
                                revert with 0, 17
                            if not (5 * t) + u:
                                revert with 0, 18
                            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
                            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1264 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1264] > !((t * _1258) - (u * _1258) / (5 * t) + u):
                                revert with 0, 17
                            if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1264] + ((t * _1258) - (u * _1258) / (5 * t) + u) > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                revert with 0, 17
                            if not Mask(112, 0, _709):
                                revert with 0, 18
                            if Mask(255, 1, arg1) and mem[_1264] + ((t * _1258) - (u * _1258) / (5 * t) + u) > -1 / arg1 / 2:
                                revert with 0, 17
                            if not Mask(112, 0, _710):
                                revert with 0, 18
                            if (mem[_1264] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + ((t * _1258) - (u * _1258) / (5 * t) + u * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709) < (mem[_1264] * arg1 / 2) + ((t * _1258) - (u * _1258) / (5 * t) + u * arg1 / 2) / Mask(112, 0, _710):
                                mem[mem[64]] = (mem[_1264] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + ((t * _1258) - (u * _1258) / (5 * t) + u * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709)
                            else:
                                mem[mem[64]] = (mem[_1264] * arg1 / 2) + ((t * _1258) - (u * _1258) / (5 * t) + u * arg1 / 2) / Mask(112, 0, _710)
    return memory
      from mem[64]
       len 32
}

function sub_ba450a7c(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    mem[160] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1 / 2
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 292
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args Mask(255, 1, arg1), Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _357 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _358 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require _357 + (32 * _358) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _358)] = mem[_357 + 224 len ceil32(32 * _358)]
    if _358 < 1:
        revert with 0, 17
    if _358 - 1 >= _358:
        revert with 0, 50
    _705 = mem[(32 * _358 - 1) + ceil32(return_data.size) + 224]
    require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
    staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _708 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _709 = mem[_708]
    require mem[_708] == mem[_708 + 18 len 14]
    _710 = mem[_708 + 32]
    require mem[_708 + 32] == mem[_708 + 50 len 14]
    require mem[_708 + 64] == mem[_708 + 92 len 4]
    if _705 <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_AMOUNT'
    if mem[_708 + 18 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if mem[_708 + 50 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if _705 and mem[_708 + 50 len 14] > -1 / _705:
        revert with 0, 17
    if not mem[_708 + 18 len 14]:
        revert with 0, 18
    if _705 * mem[_708 + 50 len 14] / mem[_708 + 18 len 14] <= arg1 / 2:
        require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.feeTo() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _723 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _727 = mem[_723]
        require mem[_723] == mem[_723 + 12 len 20]
        require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
        staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.kLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _730 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not address(_727):
            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _740 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_740] > -1:
                revert with 0, 17
            if _705 and mem[_740] > -1 / _705:
                revert with 0, 17
            if not Mask(112, 0, _709):
                revert with 0, 18
            if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_740] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                revert with 0, 17
            if not Mask(112, 0, _710):
                revert with 0, 18
            if _705 * mem[_740] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_740] / Mask(112, 0, _710):
                mem[mem[64]] = _705 * mem[_740] / Mask(112, 0, _709)
            else:
                mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_740] / Mask(112, 0, _710)
        else:
            if not mem[_730]:
                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _741 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_741] > -1:
                    revert with 0, 17
                if _705 and mem[_741] > -1 / _705:
                    revert with 0, 17
                if not Mask(112, 0, _709):
                    revert with 0, 18
                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_741] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                    revert with 0, 17
                if not Mask(112, 0, _710):
                    revert with 0, 18
                if _705 * mem[_741] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_741] / Mask(112, 0, _710):
                    mem[mem[64]] = _705 * mem[_741] / Mask(112, 0, _709)
                else:
                    mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_741] / Mask(112, 0, _710)
            else:
                if Mask(112, 0, _709) and Mask(112, 0, _710) > -1 / Mask(112, 0, _709):
                    revert with 0, 17
                if Mask(112, 0, _709) * Mask(112, 0, _710) <= 3:
                    if not Mask(112, 0, _709) * Mask(112, 0, _710):
                        if mem[_730] <= 3:
                            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not mem[_730]:
                                _759 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_759] > -1:
                                    revert with 0, 17
                                if _705 and mem[_759] > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_759] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if _705 * mem[_759] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_759] / Mask(112, 0, _710):
                                    mem[mem[64]] = _705 * mem[_759] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_759] / Mask(112, 0, _710)
                            else:
                                _765 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_765] > -1:
                                    revert with 0, 17
                                if _705 and mem[_765] > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_765] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if _705 * mem[_765] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_765] / Mask(112, 0, _710):
                                    mem[mem[64]] = _705 * mem[_765] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_765] / Mask(112, 0, _710)
                        else:
                            if 1 > !(mem[_730] / 2):
                                revert with 0, 17
                            s = (mem[_730] / 2) + 1
                            t = mem[_730]
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if mem[_730] / s > !s:
                                    revert with 0, 17
                                s = (mem[_730] / s) + s / 2
                                t = s
                                continue 
                            if 0 <= t:
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1062 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1062] > -1:
                                    revert with 0, 17
                                if _705 and mem[_1062] > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1062] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if _705 * mem[_1062] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1062] / Mask(112, 0, _710):
                                    mem[mem[64]] = _705 * mem[_1062] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1062] / Mask(112, 0, _710)
                            else:
                                if 0 < t:
                                    revert with 0, 17
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1066 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1082 = mem[_1066]
                                if mem[_1066] and -t > -1 / mem[_1066]:
                                    revert with 0, 17
                                if 0 > !t:
                                    revert with 0, 17
                                if not t:
                                    revert with 0, 18
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1134 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1134] > !(-1 * _1082 * t / t):
                                    revert with 0, 17
                                if _705 and mem[_1134] + (-1 * _1082 * t / t) > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1134] + (-1 * _1082 * t / t) > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_1134] * _705) + (-1 * _1082 * t / t * _705) / Mask(112, 0, _709) < (mem[_1134] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (-1 * _1082 * t / t * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_1134] * _705) + (-1 * _1082 * t / t * _705) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_1134] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (-1 * _1082 * t / t * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710)
                    else:
                        if mem[_730] <= 3:
                            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_730]:
                                _768 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_768] > -1:
                                    revert with 0, 17
                                if _705 and mem[_768] > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_768] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if _705 * mem[_768] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_768] / Mask(112, 0, _710):
                                    mem[mem[64]] = _705 * mem[_768] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_768] / Mask(112, 0, _710)
                            else:
                                _767 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _770 = mem[_767]
                                if mem[_767] and 1 > -1 / mem[_767]:
                                    revert with 0, 17
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _865 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_865] > !(_770 / 5):
                                    revert with 0, 17
                                if _705 and mem[_865] + (_770 / 5) > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_865] + (_770 / 5) > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_865] * _705) + (_770 / 5 * _705) / Mask(112, 0, _709) < (mem[_865] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (_770 / 5 * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_865] * _705) + (_770 / 5 * _705) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_865] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (_770 / 5 * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710)
                        else:
                            if 1 > !(mem[_730] / 2):
                                revert with 0, 17
                            s = (mem[_730] / 2) + 1
                            t = mem[_730]
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if mem[_730] / s > !s:
                                    revert with 0, 17
                                s = (mem[_730] / s) + s / 2
                                t = s
                                continue 
                            if 1 <= t:
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1063 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1063] > -1:
                                    revert with 0, 17
                                if _705 and mem[_1063] > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1063] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if _705 * mem[_1063] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1063] / Mask(112, 0, _710):
                                    mem[mem[64]] = _705 * mem[_1063] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1063] / Mask(112, 0, _710)
                            else:
                                if 1 < t:
                                    revert with 0, 17
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1067 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1083 = mem[_1067]
                                if mem[_1067] and -t + 1 > -1 / mem[_1067]:
                                    revert with 0, 17
                                if 5 > !t:
                                    revert with 0, 17
                                if not t + 5:
                                    revert with 0, 18
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1135 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1135] > !(_1083 - (t * _1083) / t + 5):
                                    revert with 0, 17
                                if _705 and mem[_1135] + (_1083 - (t * _1083) / t + 5) > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1135] + (_1083 - (t * _1083) / t + 5) > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_1135] * _705) + (_1083 - (t * _1083) / t + 5 * _705) / Mask(112, 0, _709) < (mem[_1135] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (_1083 - (t * _1083) / t + 5 * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_1135] * _705) + (_1083 - (t * _1083) / t + 5 * _705) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_1135] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (_1083 - (t * _1083) / t + 5 * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710)
                else:
                    if 1 > !(Mask(112, 0, _709) * Mask(112, 0, _710) / 2):
                        revert with 0, 17
                    s = (Mask(112, 0, _709) * Mask(112, 0, _710) / 2) + 1
                    t = Mask(112, 0, _709) * Mask(112, 0, _710)
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if Mask(112, 0, _709) * Mask(112, 0, _710) / s > !s:
                            revert with 0, 17
                        s = (Mask(112, 0, _709) * Mask(112, 0, _710) / s) + s / 2
                        t = s
                        continue 
                    if mem[_730] <= 3:
                        if not mem[_730]:
                            if t <= 0:
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1091 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1091] > -1:
                                    revert with 0, 17
                                if _705 and mem[_1091] > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1091] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if _705 * mem[_1091] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1091] / Mask(112, 0, _710):
                                    mem[mem[64]] = _705 * mem[_1091] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1091] / Mask(112, 0, _710)
                            else:
                                if t < 0:
                                    revert with 0, 17
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1096 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1104 = mem[_1096]
                                if mem[_1096] and t > -1 / mem[_1096]:
                                    revert with 0, 17
                                if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                    revert with 0, 17
                                if 5 * t > -1:
                                    revert with 0, 17
                                if not 5 * t:
                                    revert with 0, 18
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1161 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1161] > !(_1104 * t / 5 * t):
                                    revert with 0, 17
                                if _705 and mem[_1161] + (_1104 * t / 5 * t) > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1161] + (_1104 * t / 5 * t) > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_1161] * _705) + (_1104 * t / 5 * t * _705) / Mask(112, 0, _709) < (mem[_1161] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (_1104 * t / 5 * t * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_1161] * _705) + (_1104 * t / 5 * t * _705) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_1161] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (_1104 * t / 5 * t * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710)
                        else:
                            if t <= 1:
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1097 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1097] > -1:
                                    revert with 0, 17
                                if _705 and mem[_1097] > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1097] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if _705 * mem[_1097] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1097] / Mask(112, 0, _710):
                                    mem[mem[64]] = _705 * mem[_1097] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1097] / Mask(112, 0, _710)
                            else:
                                if t < 1:
                                    revert with 0, 17
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1101 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1107 = mem[_1101]
                                if mem[_1101] and t - 1 > -1 / mem[_1101]:
                                    revert with 0, 17
                                if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                    revert with 0, 17
                                if 5 * t > -2:
                                    revert with 0, 17
                                if not (5 * t) + 1:
                                    revert with 0, 18
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1167 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1167] > !(-_1107 + (t * _1107) / (5 * t) + 1):
                                    revert with 0, 17
                                if _705 and mem[_1167] + (-_1107 + (t * _1107) / (5 * t) + 1) > -1 / _705:
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1167] + (-_1107 + (t * _1107) / (5 * t) + 1) > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_1167] * _705) + (-_1107 + (t * _1107) / (5 * t) + 1 * _705) / Mask(112, 0, _709) < (mem[_1167] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (-_1107 + (t * _1107) / (5 * t) + 1 * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_1167] * _705) + (-_1107 + (t * _1107) / (5 * t) + 1 * _705) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_1167] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + (-_1107 + (t * _1107) / (5 * t) + 1 * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710)
                    else:
                        if 1 > !(mem[_730] / 2):
                            revert with 0, 17
                        s = (mem[_730] / 2) + 1
                        u = mem[_730]
                        while s < u:
                            if not s:
                                revert with 0, 18
                            if mem[_730] / s > !s:
                                revert with 0, 17
                            s = (mem[_730] / s) + s / 2
                            u = s
                            continue 
                        if t <= u:
                            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1253 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1253] > -1:
                                revert with 0, 17
                            if _705 and mem[_1253] > -1 / _705:
                                revert with 0, 17
                            if not Mask(112, 0, _709):
                                revert with 0, 18
                            if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1253] > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                revert with 0, 17
                            if not Mask(112, 0, _710):
                                revert with 0, 18
                            if _705 * mem[_1253] / Mask(112, 0, _709) < _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1253] / Mask(112, 0, _710):
                                mem[mem[64]] = _705 * mem[_1253] / Mask(112, 0, _709)
                            else:
                                mem[mem[64]] = _705 * Mask(112, 0, _710) / Mask(112, 0, _709) * mem[_1253] / Mask(112, 0, _710)
                        else:
                            if t < u:
                                revert with 0, 17
                            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1255 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1259 = mem[_1255]
                            if mem[_1255] and t - u > -1 / mem[_1255]:
                                revert with 0, 17
                            if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                revert with 0, 17
                            if 5 * t > !u:
                                revert with 0, 17
                            if not (5 * t) + u:
                                revert with 0, 18
                            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1265 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1265] > !((t * _1259) - (u * _1259) / (5 * t) + u):
                                revert with 0, 17
                            if _705 and mem[_1265] + ((t * _1259) - (u * _1259) / (5 * t) + u) > -1 / _705:
                                revert with 0, 17
                            if not Mask(112, 0, _709):
                                revert with 0, 18
                            if _705 * Mask(112, 0, _710) / Mask(112, 0, _709) and mem[_1265] + ((t * _1259) - (u * _1259) / (5 * t) + u) > -1 / _705 * Mask(112, 0, _710) / Mask(112, 0, _709):
                                revert with 0, 17
                            if not Mask(112, 0, _710):
                                revert with 0, 18
                            if (mem[_1265] * _705) + ((t * _1259) - (u * _1259) / (5 * t) + u * _705) / Mask(112, 0, _709) < (mem[_1265] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + ((t * _1259) - (u * _1259) / (5 * t) + u * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710):
                                mem[mem[64]] = (mem[_1265] * _705) + ((t * _1259) - (u * _1259) / (5 * t) + u * _705) / Mask(112, 0, _709)
                            else:
                                mem[mem[64]] = (mem[_1265] * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) + ((t * _1259) - (u * _1259) / (5 * t) + u * _705 * Mask(112, 0, _710) / Mask(112, 0, _709)) / Mask(112, 0, _710)
    else:
        if arg1 / 2 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_AMOUNT'
        if mem[_708 + 50 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if mem[_708 + 18 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if Mask(255, 1, arg1) and mem[_708 + 18 len 14] > -1 / arg1 / 2:
            revert with 0, 17
        if not mem[_708 + 50 len 14]:
            revert with 0, 18
        require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.feeTo() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _734 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _737 = mem[_734]
        require mem[_734] == mem[_734 + 12 len 20]
        require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
        staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.kLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _746 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not address(_737):
            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _752 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_752] > -1:
                revert with 0, 17
            if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_752] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                revert with 0, 17
            if not Mask(112, 0, _709):
                revert with 0, 18
            if Mask(255, 1, arg1) and mem[_752] > -1 / arg1 / 2:
                revert with 0, 17
            if not Mask(112, 0, _710):
                revert with 0, 18
            if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_752] / Mask(112, 0, _709) < arg1 / 2 * mem[_752] / Mask(112, 0, _710):
                mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_752] / Mask(112, 0, _709)
            else:
                mem[mem[64]] = arg1 / 2 * mem[_752] / Mask(112, 0, _710)
        else:
            if not mem[_746]:
                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _755 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_755] > -1:
                    revert with 0, 17
                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_755] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                    revert with 0, 17
                if not Mask(112, 0, _709):
                    revert with 0, 18
                if Mask(255, 1, arg1) and mem[_755] > -1 / arg1 / 2:
                    revert with 0, 17
                if not Mask(112, 0, _710):
                    revert with 0, 18
                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_755] / Mask(112, 0, _709) < arg1 / 2 * mem[_755] / Mask(112, 0, _710):
                    mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_755] / Mask(112, 0, _709)
                else:
                    mem[mem[64]] = arg1 / 2 * mem[_755] / Mask(112, 0, _710)
            else:
                if Mask(112, 0, _709) and Mask(112, 0, _710) > -1 / Mask(112, 0, _709):
                    revert with 0, 17
                if Mask(112, 0, _709) * Mask(112, 0, _710) <= 3:
                    if not Mask(112, 0, _709) * Mask(112, 0, _710):
                        if mem[_746] <= 3:
                            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not mem[_746]:
                                _815 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_815] > -1:
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_815] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_815] > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_815] / Mask(112, 0, _709) < arg1 / 2 * mem[_815] / Mask(112, 0, _710):
                                    mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_815] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = arg1 / 2 * mem[_815] / Mask(112, 0, _710)
                            else:
                                _823 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_823] > -1:
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_823] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_823] > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_823] / Mask(112, 0, _709) < arg1 / 2 * mem[_823] / Mask(112, 0, _710):
                                    mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_823] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = arg1 / 2 * mem[_823] / Mask(112, 0, _710)
                        else:
                            if 1 > !(mem[_746] / 2):
                                revert with 0, 17
                            s = (mem[_746] / 2) + 1
                            t = mem[_746]
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if mem[_746] / s > !s:
                                    revert with 0, 17
                                s = (mem[_746] / s) + s / 2
                                t = s
                                continue 
                            if 0 <= t:
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1060 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1060] > -1:
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1060] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_1060] > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1060] / Mask(112, 0, _709) < arg1 / 2 * mem[_1060] / Mask(112, 0, _710):
                                    mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1060] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = arg1 / 2 * mem[_1060] / Mask(112, 0, _710)
                            else:
                                if 0 < t:
                                    revert with 0, 17
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1064 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1076 = mem[_1064]
                                if mem[_1064] and -t > -1 / mem[_1064]:
                                    revert with 0, 17
                                if 0 > !t:
                                    revert with 0, 17
                                if not t:
                                    revert with 0, 18
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1132 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1132] > !(-1 * _1076 * t / t):
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1132] + (-1 * _1076 * t / t) > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_1132] + (-1 * _1076 * t / t) > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_1132] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (-1 * _1076 * t / t * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709) < (mem[_1132] * arg1 / 2) + (-1 * _1076 * t / t * arg1 / 2) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_1132] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (-1 * _1076 * t / t * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_1132] * arg1 / 2) + (-1 * _1076 * t / t * arg1 / 2) / Mask(112, 0, _710)
                    else:
                        if mem[_746] <= 3:
                            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_746]:
                                _828 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_828] > -1:
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_828] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_828] > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_828] / Mask(112, 0, _709) < arg1 / 2 * mem[_828] / Mask(112, 0, _710):
                                    mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_828] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = arg1 / 2 * mem[_828] / Mask(112, 0, _710)
                            else:
                                _827 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _832 = mem[_827]
                                if mem[_827] and 1 > -1 / mem[_827]:
                                    revert with 0, 17
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _934 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_934] > !(_832 / 5):
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_934] + (_832 / 5) > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_934] + (_832 / 5) > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_934] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (_832 / 5 * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709) < (mem[_934] * arg1 / 2) + (_832 / 5 * arg1 / 2) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_934] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (_832 / 5 * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_934] * arg1 / 2) + (_832 / 5 * arg1 / 2) / Mask(112, 0, _710)
                        else:
                            if 1 > !(mem[_746] / 2):
                                revert with 0, 17
                            s = (mem[_746] / 2) + 1
                            t = mem[_746]
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if mem[_746] / s > !s:
                                    revert with 0, 17
                                s = (mem[_746] / s) + s / 2
                                t = s
                                continue 
                            if 1 <= t:
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1061 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1061] > -1:
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1061] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_1061] > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1061] / Mask(112, 0, _709) < arg1 / 2 * mem[_1061] / Mask(112, 0, _710):
                                    mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1061] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = arg1 / 2 * mem[_1061] / Mask(112, 0, _710)
                            else:
                                if 1 < t:
                                    revert with 0, 17
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1065 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1077 = mem[_1065]
                                if mem[_1065] and -t + 1 > -1 / mem[_1065]:
                                    revert with 0, 17
                                if 5 > !t:
                                    revert with 0, 17
                                if not t + 5:
                                    revert with 0, 18
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1133 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1133] > !(_1077 - (t * _1077) / t + 5):
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1133] + (_1077 - (t * _1077) / t + 5) > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_1133] + (_1077 - (t * _1077) / t + 5) > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_1133] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (_1077 - (t * _1077) / t + 5 * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709) < (mem[_1133] * arg1 / 2) + (_1077 - (t * _1077) / t + 5 * arg1 / 2) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_1133] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (_1077 - (t * _1077) / t + 5 * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_1133] * arg1 / 2) + (_1077 - (t * _1077) / t + 5 * arg1 / 2) / Mask(112, 0, _710)
                else:
                    if 1 > !(Mask(112, 0, _709) * Mask(112, 0, _710) / 2):
                        revert with 0, 17
                    s = (Mask(112, 0, _709) * Mask(112, 0, _710) / 2) + 1
                    t = Mask(112, 0, _709) * Mask(112, 0, _710)
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if Mask(112, 0, _709) * Mask(112, 0, _710) / s > !s:
                            revert with 0, 17
                        s = (Mask(112, 0, _709) * Mask(112, 0, _710) / s) + s / 2
                        t = s
                        continue 
                    if mem[_746] <= 3:
                        if not mem[_746]:
                            if t <= 0:
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1088 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1088] > -1:
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1088] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_1088] > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1088] / Mask(112, 0, _709) < arg1 / 2 * mem[_1088] / Mask(112, 0, _710):
                                    mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1088] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = arg1 / 2 * mem[_1088] / Mask(112, 0, _710)
                            else:
                                if t < 0:
                                    revert with 0, 17
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1094 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1102 = mem[_1094]
                                if mem[_1094] and t > -1 / mem[_1094]:
                                    revert with 0, 17
                                if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                    revert with 0, 17
                                if 5 * t > -1:
                                    revert with 0, 17
                                if not 5 * t:
                                    revert with 0, 18
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1156 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1156] > !(_1102 * t / 5 * t):
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1156] + (_1102 * t / 5 * t) > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_1156] + (_1102 * t / 5 * t) > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_1156] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (_1102 * t / 5 * t * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709) < (mem[_1156] * arg1 / 2) + (_1102 * t / 5 * t * arg1 / 2) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_1156] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (_1102 * t / 5 * t * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_1156] * arg1 / 2) + (_1102 * t / 5 * t * arg1 / 2) / Mask(112, 0, _710)
                        else:
                            if t <= 1:
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1095 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1095] > -1:
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1095] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_1095] > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1095] / Mask(112, 0, _709) < arg1 / 2 * mem[_1095] / Mask(112, 0, _710):
                                    mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1095] / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = arg1 / 2 * mem[_1095] / Mask(112, 0, _710)
                            else:
                                if t < 1:
                                    revert with 0, 17
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1099 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1106 = mem[_1099]
                                if mem[_1099] and t - 1 > -1 / mem[_1099]:
                                    revert with 0, 17
                                if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                    revert with 0, 17
                                if 5 * t > -2:
                                    revert with 0, 17
                                if not (5 * t) + 1:
                                    revert with 0, 18
                                require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                                staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1164 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1164] > !(-_1106 + (t * _1106) / (5 * t) + 1):
                                    revert with 0, 17
                                if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1164] + (-_1106 + (t * _1106) / (5 * t) + 1) > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                    revert with 0, 17
                                if not Mask(112, 0, _709):
                                    revert with 0, 18
                                if Mask(255, 1, arg1) and mem[_1164] + (-_1106 + (t * _1106) / (5 * t) + 1) > -1 / arg1 / 2:
                                    revert with 0, 17
                                if not Mask(112, 0, _710):
                                    revert with 0, 18
                                if (mem[_1164] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (-_1106 + (t * _1106) / (5 * t) + 1 * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709) < (mem[_1164] * arg1 / 2) + (-_1106 + (t * _1106) / (5 * t) + 1 * arg1 / 2) / Mask(112, 0, _710):
                                    mem[mem[64]] = (mem[_1164] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + (-_1106 + (t * _1106) / (5 * t) + 1 * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709)
                                else:
                                    mem[mem[64]] = (mem[_1164] * arg1 / 2) + (-_1106 + (t * _1106) / (5 * t) + 1 * arg1 / 2) / Mask(112, 0, _710)
                    else:
                        if 1 > !(mem[_746] / 2):
                            revert with 0, 17
                        s = (mem[_746] / 2) + 1
                        u = mem[_746]
                        while s < u:
                            if not s:
                                revert with 0, 18
                            if mem[_746] / s > !s:
                                revert with 0, 17
                            s = (mem[_746] / s) + s / 2
                            u = s
                            continue 
                        if t <= u:
                            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1252 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1252] > -1:
                                revert with 0, 17
                            if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1252] > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                revert with 0, 17
                            if not Mask(112, 0, _709):
                                revert with 0, 18
                            if Mask(255, 1, arg1) and mem[_1252] > -1 / arg1 / 2:
                                revert with 0, 17
                            if not Mask(112, 0, _710):
                                revert with 0, 18
                            if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1252] / Mask(112, 0, _709) < arg1 / 2 * mem[_1252] / Mask(112, 0, _710):
                                mem[mem[64]] = arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) * mem[_1252] / Mask(112, 0, _709)
                            else:
                                mem[mem[64]] = arg1 / 2 * mem[_1252] / Mask(112, 0, _710)
                        else:
                            if t < u:
                                revert with 0, 17
                            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1254 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1258 = mem[_1254]
                            if mem[_1254] and t - u > -1 / mem[_1254]:
                                revert with 0, 17
                            if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                revert with 0, 17
                            if 5 * t > !u:
                                revert with 0, 17
                            if not (5 * t) + u:
                                revert with 0, 18
                            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
                            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1264 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1264] > !((t * _1258) - (u * _1258) / (5 * t) + u):
                                revert with 0, 17
                            if arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710) and mem[_1264] + ((t * _1258) - (u * _1258) / (5 * t) + u) > -1 / arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710):
                                revert with 0, 17
                            if not Mask(112, 0, _709):
                                revert with 0, 18
                            if Mask(255, 1, arg1) and mem[_1264] + ((t * _1258) - (u * _1258) / (5 * t) + u) > -1 / arg1 / 2:
                                revert with 0, 17
                            if not Mask(112, 0, _710):
                                revert with 0, 18
                            if (mem[_1264] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + ((t * _1258) - (u * _1258) / (5 * t) + u * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709) < (mem[_1264] * arg1 / 2) + ((t * _1258) - (u * _1258) / (5 * t) + u * arg1 / 2) / Mask(112, 0, _710):
                                mem[mem[64]] = (mem[_1264] * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) + ((t * _1258) - (u * _1258) / (5 * t) + u * arg1 / 2 * Mask(112, 0, _709) / Mask(112, 0, _710)) / Mask(112, 0, _709)
                            else:
                                mem[mem[64]] = (mem[_1264] * arg1 / 2) + ((t * _1258) - (u * _1258) / (5 * t) + u * arg1 / 2) / Mask(112, 0, _710)
    return memory
      from mem[64]
       len 32
}



}
