contract main {




// =====================  Runtime code  =====================


const sub_11178bbb(?) = 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917

const sub_3ee8f988(?) = 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1

const sub_61f3f0b1(?) = 0x694738e0a438d90487b4a549b201142c1a97b556

const sub_7aad2ebd(?) = 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318

const sub_93f8f398(?) = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df

const sub_c56214ad(?) = 0xa184ae1a71ecad20e822cb965b99c287590c4ffe

const sub_e66217e9(?) = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10

const sub_ee104509(?) = 0x1c46450211cb2646cc1da3c5242422967ed9e04c

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const TIME = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3

const MIM = 0x130966628846bfd36ff31a822705796e8cb8c18d


address owner;
address joeRouterAddress;
uint256 sub_544d2e53;
uint256 sub_4636bb50;
uint256 sub_c0481f52;

function sub_4636bb50(?) payable {
    return sub_4636bb50
}

function sub_544d2e53(?) payable {
    return sub_544d2e53
}

function joeRouter() payable {
    return joeRouterAddress
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

function sub_68715111(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
    staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
    staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
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
    staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
    staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
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
    staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
    staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
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
    staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args 0x130966628846bfd36ff31a822705796e8cb8c18d, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
    staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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
    require ext_code.size(joeRouterAddress)
    staticcall joeRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
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
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require (32 * _22) + _21 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _22)] = mem[_21 + 224 len ceil32(32 * _22)]
    if _22 < 1:
        revert with 0, 17
    if _22 - 1 >= _22:
        revert with 0, 50
    return memory
      from (32 * _22 - 1) + ceil32(return_data.size) + 224
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
    require ext_code.size(joeRouterAddress)
    staticcall joeRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
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
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require (32 * _22) + _21 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _22)] = mem[_21 + 224 len ceil32(32 * _22)]
    if _22 < 1:
        revert with 0, 17
    if _22 - 1 >= _22:
        revert with 0, 50
    return memory
      from (32 * _22 - 1) + ceil32(return_data.size) + 224
       len 32
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
    require ext_code.size(joeRouterAddress)
    staticcall joeRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args Mask(255, 1, arg1), Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _25 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _26 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require (32 * _26) + _25 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _26)] = mem[_25 + 224 len ceil32(32 * _26)]
    if _26 < 1:
        revert with 0, 17
    if _26 - 1 >= _26:
        revert with 0, 50
    _41 = mem[(32 * _26 - 1) + ceil32(return_data.size) + 224]
    mem[mem[64] + 4] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
    mem[mem[64] + 36] = 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917
    mem[mem[64] + 68] = _41
    mem[mem[64] + 100] = arg1 / 2
    require ext_code.size(0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc)
    delegate 0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc.0xcdf00d3b with:
         gas gas_remaining wei
        args 0x9ad6c38be94206ca50bb0d90783181662f0cfa10, 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917, _41, arg1 / 2
    mem[mem[64]] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    _44 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64]] = mem[_44]
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
    require ext_code.size(joeRouterAddress)
    staticcall joeRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args Mask(255, 1, arg1), Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _25 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _26 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require (32 * _26) + _25 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _26)] = mem[_25 + 224 len ceil32(32 * _26)]
    if _26 < 1:
        revert with 0, 17
    if _26 - 1 >= _26:
        revert with 0, 50
    _41 = mem[(32 * _26 - 1) + ceil32(return_data.size) + 224]
    mem[mem[64] + 4] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
    mem[mem[64] + 36] = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df
    mem[mem[64] + 68] = _41
    mem[mem[64] + 100] = arg1 / 2
    require ext_code.size(0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc)
    delegate 0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc.0xcdf00d3b with:
         gas gas_remaining wei
        args 0x9ad6c38be94206ca50bb0d90783181662f0cfa10, 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, _41, arg1 / 2
    mem[mem[64]] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    _44 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64]] = mem[_44]
    return memory
      from mem[64]
       len 32
}

function sub_04777210(?) payable {
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
    require ext_code.size(joeRouterAddress)
    staticcall joeRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _228 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _229 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require (32 * _229) + _228 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _229)] = mem[_228 + 224 len ceil32(32 * _229)]
    if _229 < 1:
        revert with 0, 17
    if _229 - 1 >= _229:
        revert with 0, 50
    mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[mem[64] + 36] = mem[(32 * _229 - 1) + ceil32(return_data.size) + 224]
    require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
    staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, mem[(32 * _229 - 1) + ceil32(return_data.size) + 224]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _450 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _451 = mem[_450]
    mem[mem[64] + 4] = mem[_450]
    require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
    staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
            gas gas_remaining wei
           args _451
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _454 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _455 = mem[_454]
    _456 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_456]:
        revert with 0, 50
    mem[_456 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    if 1 >= mem[_456]:
        revert with 0, 50
    mem[_456 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[_456 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_456 + 100] = arg1
    mem[_456 + 132] = 64
    mem[_456 + 164] = mem[_456]
    idx = 0
    s = _456 + 196
    t = _456 + 32
    while idx < mem[_456]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(joeRouterAddress)
    staticcall joeRouterAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _456 + (32 * mem[_456]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _659 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _660 = mem[_659]
    require mem[_659] <= test266151307()
    require _659 + mem[_659] + 31 < _659 + return_data.size
    _661 = mem[_659 + mem[_659]]
    if mem[_659 + mem[_659]] > test266151307():
        revert with 0, 65
    if _659 + ceil32(return_data.size) + ceil32(32 * mem[_659 + mem[_659]]) + 1 > test266151307() or ceil32(32 * mem[_659 + mem[_659]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _659 + ceil32(return_data.size) + ceil32(32 * mem[_659 + mem[_659]]) + 1
    mem[_659 + ceil32(return_data.size)] = _661
    require (32 * _661) + _660 + 32 <= return_data.size
    mem[_659 + ceil32(return_data.size) + 32 len ceil32(32 * _661)] = mem[_659 + _660 + 32 len ceil32(32 * _661)]
    if _661 < 1:
        revert with 0, 17
    if _661 - 1 >= _661:
        revert with 0, 50
    _856 = mem[(32 * _661 - 1) + _659 + ceil32(return_data.size) + 32]
    mem[mem[64] + 4] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[mem[64] + 36] = _856
    require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
    staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args 0x130966628846bfd36ff31a822705796e8cb8c18d, _856
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _859 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _860 = mem[_859]
    mem[mem[64] + 4] = mem[_859]
    require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
    staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
            gas gas_remaining wei
           args _860
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _863 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _864 = mem[_863]
    if mem[_863] <= _455:
        _865 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_865]:
            revert with 0, 50
        mem[_865 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
        if 1 >= mem[_865]:
            revert with 0, 50
        mem[_865 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[_865 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_865 + 100] = arg1 / 2
        mem[_865 + 132] = 64
        mem[_865 + 164] = mem[_865]
        idx = 0
        s = _865 + 196
        t = _865 + 32
        while idx < mem[_865]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(joeRouterAddress)
        staticcall joeRouterAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _865 + (32 * mem[_865]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1047 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1049 = mem[_1047]
        require mem[_1047] <= test266151307()
        require _1047 + mem[_1047] + 31 < _1047 + return_data.size
        _1051 = mem[_1047 + mem[_1047]]
        if mem[_1047 + mem[_1047]] > test266151307():
            revert with 0, 65
        if _1047 + ceil32(return_data.size) + ceil32(32 * mem[_1047 + mem[_1047]]) + 1 > test266151307() or ceil32(32 * mem[_1047 + mem[_1047]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _1047 + ceil32(return_data.size) + ceil32(32 * mem[_1047 + mem[_1047]]) + 1
        mem[_1047 + ceil32(return_data.size)] = _1051
        require (32 * _1051) + _1049 + 32 <= return_data.size
        mem[_1047 + ceil32(return_data.size) + 32 len ceil32(32 * _1051)] = mem[_1047 + _1049 + 32 len ceil32(32 * _1051)]
        if _1051 < 1:
            revert with 0, 17
        if _1051 - 1 >= _1051:
            revert with 0, 50
        _1217 = mem[(32 * _1051 - 1) + _1047 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
        mem[mem[64] + 36] = 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917
        mem[mem[64] + 68] = _1217
        mem[mem[64] + 100] = arg1 / 2
        require ext_code.size(0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc)
        delegate 0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc.0xcdf00d3b with:
             gas gas_remaining wei
            args 0x9ad6c38be94206ca50bb0d90783181662f0cfa10, 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917, _1217, arg1 / 2
        mem[mem[64]] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        _1223 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1225 = mem[_1223]
        mem[mem[64] + 4] = 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917
        mem[mem[64] + 36] = _1225
        require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
        staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917, _1225
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1231 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1233 = mem[_1231]
        mem[mem[64] + 4] = mem[_1231]
        require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
        staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
                gas gas_remaining wei
               args _1233
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1239 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1241 = mem[_1239]
        if _864 <= _455:
            _1243 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1243]:
                revert with 0, 50
            mem[_1243 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            if 1 >= mem[_1243]:
                revert with 0, 50
            mem[_1243 + 64] = 0x130966628846bfd36ff31a822705796e8cb8c18d
            mem[_1243 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1243 + 100] = arg1 / 2
            mem[_1243 + 132] = 64
            mem[_1243 + 164] = mem[_1243]
            idx = 0
            s = _1243 + 196
            t = _1243 + 32
            while idx < mem[_1243]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(joeRouterAddress)
            staticcall joeRouterAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1243 + (32 * mem[_1243]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1375 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1379 = mem[_1375]
            require mem[_1375] <= test266151307()
            require _1375 + mem[_1375] + 31 < _1375 + return_data.size
            _1383 = mem[_1375 + mem[_1375]]
            if mem[_1375 + mem[_1375]] > test266151307():
                revert with 0, 65
            if _1375 + ceil32(return_data.size) + ceil32(32 * mem[_1375 + mem[_1375]]) + 1 > test266151307() or ceil32(32 * mem[_1375 + mem[_1375]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _1375 + ceil32(return_data.size) + ceil32(32 * mem[_1375 + mem[_1375]]) + 1
            mem[_1375 + ceil32(return_data.size)] = _1383
            require (32 * _1383) + _1379 + 32 <= return_data.size
            mem[_1375 + ceil32(return_data.size) + 32 len ceil32(32 * _1383)] = mem[_1375 + _1379 + 32 len ceil32(32 * _1383)]
            if _1383 < 1:
                revert with 0, 17
            if _1383 - 1 >= _1383:
                revert with 0, 50
            _1483 = mem[(32 * _1383 - 1) + _1375 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
            mem[mem[64] + 36] = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df
            mem[mem[64] + 68] = _1483
            mem[mem[64] + 100] = arg1 / 2
            require ext_code.size(0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc)
            delegate 0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc.0xcdf00d3b with:
                 gas gas_remaining wei
                args 0x9ad6c38be94206ca50bb0d90783181662f0cfa10, 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, _1483, arg1 / 2
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _1495 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1499 = mem[_1495]
            mem[mem[64] + 4] = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df
            mem[mem[64] + 36] = _1499
            require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
            staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, _1499
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1511 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1515 = mem[_1511]
            mem[mem[64] + 4] = mem[_1511]
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
                    gas gas_remaining wei
                   args _1515
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1527 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _864 <= _455:
                return 0, _455
            return 3, mem[_1527]
        _1248 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_1248]:
            revert with 0, 50
        mem[_1248 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
        if 1 >= mem[_1248]:
            revert with 0, 50
        mem[_1248 + 64] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[_1248 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_1248 + 100] = arg1 / 2
        mem[_1248 + 132] = 64
        mem[_1248 + 164] = mem[_1248]
        idx = 0
        s = _1248 + 196
        t = _1248 + 32
        while idx < mem[_1248]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(joeRouterAddress)
        staticcall joeRouterAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1248 + (32 * mem[_1248]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1376 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1380 = mem[_1376]
        require mem[_1376] <= test266151307()
        require _1376 + mem[_1376] + 31 < _1376 + return_data.size
        _1384 = mem[_1376 + mem[_1376]]
        if mem[_1376 + mem[_1376]] > test266151307():
            revert with 0, 65
        if _1376 + ceil32(return_data.size) + ceil32(32 * mem[_1376 + mem[_1376]]) + 1 > test266151307() or ceil32(32 * mem[_1376 + mem[_1376]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _1376 + ceil32(return_data.size) + ceil32(32 * mem[_1376 + mem[_1376]]) + 1
        mem[_1376 + ceil32(return_data.size)] = _1384
        require (32 * _1384) + _1380 + 32 <= return_data.size
        mem[_1376 + ceil32(return_data.size) + 32 len ceil32(32 * _1384)] = mem[_1376 + _1380 + 32 len ceil32(32 * _1384)]
        if _1384 < 1:
            revert with 0, 17
        if _1384 - 1 >= _1384:
            revert with 0, 50
        _1484 = mem[(32 * _1384 - 1) + _1376 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
        mem[mem[64] + 36] = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df
        mem[mem[64] + 68] = _1484
        mem[mem[64] + 100] = arg1 / 2
        require ext_code.size(0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc)
        delegate 0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc.0xcdf00d3b with:
             gas gas_remaining wei
            args 0x9ad6c38be94206ca50bb0d90783181662f0cfa10, 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, _1484, arg1 / 2
        mem[mem[64]] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        _1496 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1500 = mem[_1496]
        mem[mem[64] + 4] = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df
        mem[mem[64] + 36] = _1500
        require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
        staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, _1500
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1512 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1516 = mem[_1512]
        mem[mem[64] + 4] = mem[_1512]
        require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
        staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
                gas gas_remaining wei
               args _1516
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1528 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _864 <= _1241:
            return 2, _1241
        return 3, mem[_1528]
    _868 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_868]:
        revert with 0, 50
    mem[_868 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    if 1 >= mem[_868]:
        revert with 0, 50
    mem[_868 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[_868 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_868 + 100] = arg1 / 2
    mem[_868 + 132] = 64
    mem[_868 + 164] = mem[_868]
    idx = 0
    s = _868 + 196
    t = _868 + 32
    while idx < mem[_868]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(joeRouterAddress)
    staticcall joeRouterAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _868 + (32 * mem[_868]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1048 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1050 = mem[_1048]
    require mem[_1048] <= test266151307()
    require _1048 + mem[_1048] + 31 < _1048 + return_data.size
    _1052 = mem[_1048 + mem[_1048]]
    if mem[_1048 + mem[_1048]] > test266151307():
        revert with 0, 65
    if _1048 + ceil32(return_data.size) + ceil32(32 * mem[_1048 + mem[_1048]]) + 1 > test266151307() or ceil32(32 * mem[_1048 + mem[_1048]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _1048 + ceil32(return_data.size) + ceil32(32 * mem[_1048 + mem[_1048]]) + 1
    mem[_1048 + ceil32(return_data.size)] = _1052
    require (32 * _1052) + _1050 + 32 <= return_data.size
    mem[_1048 + ceil32(return_data.size) + 32 len ceil32(32 * _1052)] = mem[_1048 + _1050 + 32 len ceil32(32 * _1052)]
    if _1052 < 1:
        revert with 0, 17
    if _1052 - 1 >= _1052:
        revert with 0, 50
    _1218 = mem[(32 * _1052 - 1) + _1048 + ceil32(return_data.size) + 32]
    mem[mem[64] + 4] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
    mem[mem[64] + 36] = 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917
    mem[mem[64] + 68] = _1218
    mem[mem[64] + 100] = arg1 / 2
    require ext_code.size(0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc)
    delegate 0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc.0xcdf00d3b with:
         gas gas_remaining wei
        args 0x9ad6c38be94206ca50bb0d90783181662f0cfa10, 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917, _1218, arg1 / 2
    mem[mem[64]] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    _1224 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1226 = mem[_1224]
    mem[mem[64] + 4] = 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917
    mem[mem[64] + 36] = _1226
    require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
    staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917, _1226
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1232 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1234 = mem[_1232]
    mem[mem[64] + 4] = mem[_1232]
    require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
    staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
            gas gas_remaining wei
           args _1234
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1240 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1242 = mem[_1240]
    if _864 <= _864:
        _1245 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_1245]:
            revert with 0, 50
        mem[_1245 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
        if 1 >= mem[_1245]:
            revert with 0, 50
        mem[_1245 + 64] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[_1245 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_1245 + 100] = arg1 / 2
        mem[_1245 + 132] = 64
        mem[_1245 + 164] = mem[_1245]
        idx = 0
        s = _1245 + 196
        t = _1245 + 32
        while idx < mem[_1245]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(joeRouterAddress)
        staticcall joeRouterAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1245 + (32 * mem[_1245]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1377 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1381 = mem[_1377]
        require mem[_1377] <= test266151307()
        require _1377 + mem[_1377] + 31 < _1377 + return_data.size
        _1385 = mem[_1377 + mem[_1377]]
        if mem[_1377 + mem[_1377]] > test266151307():
            revert with 0, 65
        if _1377 + ceil32(return_data.size) + ceil32(32 * mem[_1377 + mem[_1377]]) + 1 > test266151307() or ceil32(32 * mem[_1377 + mem[_1377]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _1377 + ceil32(return_data.size) + ceil32(32 * mem[_1377 + mem[_1377]]) + 1
        mem[_1377 + ceil32(return_data.size)] = _1385
        require (32 * _1385) + _1381 + 32 <= return_data.size
        mem[_1377 + ceil32(return_data.size) + 32 len ceil32(32 * _1385)] = mem[_1377 + _1381 + 32 len ceil32(32 * _1385)]
        if _1385 < 1:
            revert with 0, 17
        if _1385 - 1 >= _1385:
            revert with 0, 50
        _1485 = mem[(32 * _1385 - 1) + _1377 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
        mem[mem[64] + 36] = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df
        mem[mem[64] + 68] = _1485
        mem[mem[64] + 100] = arg1 / 2
        require ext_code.size(0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc)
        delegate 0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc.0xcdf00d3b with:
             gas gas_remaining wei
            args 0x9ad6c38be94206ca50bb0d90783181662f0cfa10, 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, _1485, arg1 / 2
        mem[mem[64]] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        _1497 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1501 = mem[_1497]
        mem[mem[64] + 4] = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df
        mem[mem[64] + 36] = _1501
        require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
        staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, _1501
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1513 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1517 = mem[_1513]
        mem[mem[64] + 4] = mem[_1513]
        require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
        staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
                gas gas_remaining wei
               args _1517
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1529 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _864 <= _864:
            return 1, _864
        return 3, mem[_1529]
    _1251 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_1251]:
        revert with 0, 50
    mem[_1251 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    if 1 >= mem[_1251]:
        revert with 0, 50
    mem[_1251 + 64] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[_1251 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_1251 + 100] = arg1 / 2
    mem[_1251 + 132] = 64
    mem[_1251 + 164] = mem[_1251]
    idx = 0
    s = _1251 + 196
    t = _1251 + 32
    while idx < mem[_1251]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(joeRouterAddress)
    staticcall joeRouterAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _1251 + (32 * mem[_1251]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1378 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1382 = mem[_1378]
    require mem[_1378] <= test266151307()
    require _1378 + mem[_1378] + 31 < _1378 + return_data.size
    _1386 = mem[_1378 + mem[_1378]]
    if mem[_1378 + mem[_1378]] > test266151307():
        revert with 0, 65
    if _1378 + ceil32(return_data.size) + ceil32(32 * mem[_1378 + mem[_1378]]) + 1 > test266151307() or ceil32(32 * mem[_1378 + mem[_1378]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _1378 + ceil32(return_data.size) + ceil32(32 * mem[_1378 + mem[_1378]]) + 1
    mem[_1378 + ceil32(return_data.size)] = _1386
    require (32 * _1386) + _1382 + 32 <= return_data.size
    mem[_1378 + ceil32(return_data.size) + 32 len ceil32(32 * _1386)] = mem[_1378 + _1382 + 32 len ceil32(32 * _1386)]
    if _1386 < 1:
        revert with 0, 17
    if _1386 - 1 >= _1386:
        revert with 0, 50
    _1486 = mem[(32 * _1386 - 1) + _1378 + ceil32(return_data.size) + 32]
    mem[mem[64] + 4] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
    mem[mem[64] + 36] = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df
    mem[mem[64] + 68] = _1486
    mem[mem[64] + 100] = arg1 / 2
    require ext_code.size(0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc)
    delegate 0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc.0xcdf00d3b with:
         gas gas_remaining wei
        args 0x9ad6c38be94206ca50bb0d90783181662f0cfa10, 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, _1486, arg1 / 2
    mem[mem[64]] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    _1498 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1502 = mem[_1498]
    mem[mem[64] + 4] = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df
    mem[mem[64] + 36] = _1502
    require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
    staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, _1502
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1514 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1518 = mem[_1514]
    mem[mem[64] + 4] = mem[_1514]
    require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
    staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
            gas gas_remaining wei
           args _1518
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1530 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if _864 <= _1242:
        return 2, _1242
    return 3, mem[_1530]
}

function sub_32471a24(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4636bb50 = arg1
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
    require ext_code.size(joeRouterAddress)
    staticcall joeRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _214 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _215 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require (32 * _215) + _214 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _215)] = mem[_214 + 224 len ceil32(32 * _215)]
    if _215 < 1:
        revert with 0, 17
    if _215 - 1 >= _215:
        revert with 0, 50
    _417 = mem[(32 * _215 - 1) + ceil32(return_data.size) + 224]
    mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[mem[64] + 36] = _417
    require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
    staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _417
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _420 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _421 = mem[_420]
    mem[mem[64] + 4] = mem[_420]
    require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
    staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
            gas gas_remaining wei
           args _421
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _424 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _425 = mem[_424]
    _426 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_426]:
        revert with 0, 50
    mem[_426 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    if 1 >= mem[_426]:
        revert with 0, 50
    mem[_426 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[_426 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_426 + 100] = arg1
    mem[_426 + 132] = 64
    mem[_426 + 164] = mem[_426]
    idx = 0
    s = _426 + 196
    t = _426 + 32
    while idx < mem[_426]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(joeRouterAddress)
    staticcall joeRouterAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _426 + (32 * mem[_426]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _613 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _614 = mem[_613]
    require mem[_613] <= test266151307()
    require _613 + mem[_613] + 31 < _613 + return_data.size
    _615 = mem[_613 + mem[_613]]
    if mem[_613 + mem[_613]] > test266151307():
        revert with 0, 65
    if _613 + ceil32(return_data.size) + ceil32(32 * mem[_613 + mem[_613]]) + 1 > test266151307() or ceil32(32 * mem[_613 + mem[_613]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _613 + ceil32(return_data.size) + ceil32(32 * mem[_613 + mem[_613]]) + 1
    mem[_613 + ceil32(return_data.size)] = _615
    require (32 * _615) + _614 + 32 <= return_data.size
    mem[_613 + ceil32(return_data.size) + 32 len ceil32(32 * _615)] = mem[_613 + _614 + 32 len ceil32(32 * _615)]
    if _615 < 1:
        revert with 0, 17
    if _615 - 1 >= _615:
        revert with 0, 50
    _794 = mem[(32 * _615 - 1) + _613 + ceil32(return_data.size) + 32]
    mem[mem[64] + 4] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[mem[64] + 36] = _794
    require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
    staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args 0x130966628846bfd36ff31a822705796e8cb8c18d, _794
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _797 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _798 = mem[_797]
    mem[mem[64] + 4] = mem[_797]
    require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
    staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
            gas gas_remaining wei
           args _798
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _801 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _802 = mem[_801]
    if mem[_801] <= _425:
        _803 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_803]:
            revert with 0, 50
        mem[_803 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
        if 1 >= mem[_803]:
            revert with 0, 50
        mem[_803 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[_803 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_803 + 100] = arg1 / 2
        mem[_803 + 132] = 64
        mem[_803 + 164] = mem[_803]
        idx = 0
        s = _803 + 196
        t = _803 + 32
        while idx < mem[_803]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(joeRouterAddress)
        staticcall joeRouterAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _803 + (32 * mem[_803]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _969 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _971 = mem[_969]
        require mem[_969] <= test266151307()
        require _969 + mem[_969] + 31 < _969 + return_data.size
        _973 = mem[_969 + mem[_969]]
        if mem[_969 + mem[_969]] > test266151307():
            revert with 0, 65
        if _969 + ceil32(return_data.size) + ceil32(32 * mem[_969 + mem[_969]]) + 1 > test266151307() or ceil32(32 * mem[_969 + mem[_969]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _969 + ceil32(return_data.size) + ceil32(32 * mem[_969 + mem[_969]]) + 1
        mem[_969 + ceil32(return_data.size)] = _973
        require (32 * _973) + _971 + 32 <= return_data.size
        mem[_969 + ceil32(return_data.size) + 32 len ceil32(32 * _973)] = mem[_969 + _971 + 32 len ceil32(32 * _973)]
        if _973 < 1:
            revert with 0, 17
        if _973 - 1 >= _973:
            revert with 0, 50
        _1123 = mem[(32 * _973 - 1) + _969 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
        mem[mem[64] + 36] = 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917
        mem[mem[64] + 68] = _1123
        mem[mem[64] + 100] = arg1 / 2
        require ext_code.size(0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc)
        delegate 0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc.0xcdf00d3b with:
             gas gas_remaining wei
            args 0x9ad6c38be94206ca50bb0d90783181662f0cfa10, 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917, _1123, arg1 / 2
        mem[mem[64]] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        _1129 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1131 = mem[_1129]
        mem[mem[64] + 4] = 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917
        mem[mem[64] + 36] = _1131
        require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
        staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917, _1131
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1137 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1139 = mem[_1137]
        mem[mem[64] + 4] = mem[_1137]
        require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
        staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
                gas gas_remaining wei
               args _1139
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1145 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1147 = mem[_1145]
        if _802 <= _425:
            _1149 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1149]:
                revert with 0, 50
            mem[_1149 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            if 1 >= mem[_1149]:
                revert with 0, 50
            mem[_1149 + 64] = 0x130966628846bfd36ff31a822705796e8cb8c18d
            mem[_1149 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1149 + 100] = arg1 / 2
            mem[_1149 + 132] = 64
            mem[_1149 + 164] = mem[_1149]
            idx = 0
            s = _1149 + 196
            t = _1149 + 32
            while idx < mem[_1149]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(joeRouterAddress)
            staticcall joeRouterAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1149 + (32 * mem[_1149]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1265 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1269 = mem[_1265]
            require mem[_1265] <= test266151307()
            require _1265 + mem[_1265] + 31 < _1265 + return_data.size
            _1273 = mem[_1265 + mem[_1265]]
            if mem[_1265 + mem[_1265]] > test266151307():
                revert with 0, 65
            if _1265 + ceil32(return_data.size) + ceil32(32 * mem[_1265 + mem[_1265]]) + 1 > test266151307() or ceil32(32 * mem[_1265 + mem[_1265]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _1265 + ceil32(return_data.size) + ceil32(32 * mem[_1265 + mem[_1265]]) + 1
            mem[_1265 + ceil32(return_data.size)] = _1273
            require (32 * _1273) + _1269 + 32 <= return_data.size
            mem[_1265 + ceil32(return_data.size) + 32 len ceil32(32 * _1273)] = mem[_1265 + _1269 + 32 len ceil32(32 * _1273)]
            if _1273 < 1:
                revert with 0, 17
            if _1273 - 1 >= _1273:
                revert with 0, 50
            _1357 = mem[(32 * _1273 - 1) + _1265 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
            mem[mem[64] + 36] = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df
            mem[mem[64] + 68] = _1357
            mem[mem[64] + 100] = arg1 / 2
            require ext_code.size(0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc)
            delegate 0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc.0xcdf00d3b with:
                 gas gas_remaining wei
                args 0x9ad6c38be94206ca50bb0d90783181662f0cfa10, 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, _1357, arg1 / 2
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _1369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1373 = mem[_1369]
            mem[mem[64] + 4] = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df
            mem[mem[64] + 36] = _1373
            require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
            staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, _1373
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1385 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1389 = mem[_1385]
            mem[mem[64] + 4] = mem[_1385]
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
                    gas gas_remaining wei
                   args _1389
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1401 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _802 <= _425:
                sub_c0481f52 = _425
                sub_544d2e53 = 0
            else:
                sub_c0481f52 = mem[_1401]
                sub_544d2e53 = 3
        else:
            _1154 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1154]:
                revert with 0, 50
            mem[_1154 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            if 1 >= mem[_1154]:
                revert with 0, 50
            mem[_1154 + 64] = 0x130966628846bfd36ff31a822705796e8cb8c18d
            mem[_1154 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1154 + 100] = arg1 / 2
            mem[_1154 + 132] = 64
            mem[_1154 + 164] = mem[_1154]
            idx = 0
            s = _1154 + 196
            t = _1154 + 32
            while idx < mem[_1154]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(joeRouterAddress)
            staticcall joeRouterAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1154 + (32 * mem[_1154]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1266 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1270 = mem[_1266]
            require mem[_1266] <= test266151307()
            require _1266 + mem[_1266] + 31 < _1266 + return_data.size
            _1274 = mem[_1266 + mem[_1266]]
            if mem[_1266 + mem[_1266]] > test266151307():
                revert with 0, 65
            if _1266 + ceil32(return_data.size) + ceil32(32 * mem[_1266 + mem[_1266]]) + 1 > test266151307() or ceil32(32 * mem[_1266 + mem[_1266]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _1266 + ceil32(return_data.size) + ceil32(32 * mem[_1266 + mem[_1266]]) + 1
            mem[_1266 + ceil32(return_data.size)] = _1274
            require (32 * _1274) + _1270 + 32 <= return_data.size
            mem[_1266 + ceil32(return_data.size) + 32 len ceil32(32 * _1274)] = mem[_1266 + _1270 + 32 len ceil32(32 * _1274)]
            if _1274 < 1:
                revert with 0, 17
            if _1274 - 1 >= _1274:
                revert with 0, 50
            _1358 = mem[(32 * _1274 - 1) + _1266 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
            mem[mem[64] + 36] = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df
            mem[mem[64] + 68] = _1358
            mem[mem[64] + 100] = arg1 / 2
            require ext_code.size(0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc)
            delegate 0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc.0xcdf00d3b with:
                 gas gas_remaining wei
                args 0x9ad6c38be94206ca50bb0d90783181662f0cfa10, 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, _1358, arg1 / 2
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _1370 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1374 = mem[_1370]
            mem[mem[64] + 4] = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df
            mem[mem[64] + 36] = _1374
            require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
            staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, _1374
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1386 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1390 = mem[_1386]
            mem[mem[64] + 4] = mem[_1386]
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
                    gas gas_remaining wei
                   args _1390
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1402 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _802 <= _1147:
                sub_c0481f52 = _1147
                sub_544d2e53 = 2
            else:
                sub_c0481f52 = mem[_1402]
                sub_544d2e53 = 3
    else:
        _806 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_806]:
            revert with 0, 50
        mem[_806 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
        if 1 >= mem[_806]:
            revert with 0, 50
        mem[_806 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[_806 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_806 + 100] = arg1 / 2
        mem[_806 + 132] = 64
        mem[_806 + 164] = mem[_806]
        idx = 0
        s = _806 + 196
        t = _806 + 32
        while idx < mem[_806]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(joeRouterAddress)
        staticcall joeRouterAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _806 + (32 * mem[_806]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _970 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _972 = mem[_970]
        require mem[_970] <= test266151307()
        require _970 + mem[_970] + 31 < _970 + return_data.size
        _974 = mem[_970 + mem[_970]]
        if mem[_970 + mem[_970]] > test266151307():
            revert with 0, 65
        if _970 + ceil32(return_data.size) + ceil32(32 * mem[_970 + mem[_970]]) + 1 > test266151307() or ceil32(32 * mem[_970 + mem[_970]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _970 + ceil32(return_data.size) + ceil32(32 * mem[_970 + mem[_970]]) + 1
        mem[_970 + ceil32(return_data.size)] = _974
        require (32 * _974) + _972 + 32 <= return_data.size
        mem[_970 + ceil32(return_data.size) + 32 len ceil32(32 * _974)] = mem[_970 + _972 + 32 len ceil32(32 * _974)]
        if _974 < 1:
            revert with 0, 17
        if _974 - 1 >= _974:
            revert with 0, 50
        _1124 = mem[(32 * _974 - 1) + _970 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
        mem[mem[64] + 36] = 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917
        mem[mem[64] + 68] = _1124
        mem[mem[64] + 100] = arg1 / 2
        require ext_code.size(0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc)
        delegate 0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc.0xcdf00d3b with:
             gas gas_remaining wei
            args 0x9ad6c38be94206ca50bb0d90783181662f0cfa10, 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917, _1124, arg1 / 2
        mem[mem[64]] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        _1130 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1132 = mem[_1130]
        mem[mem[64] + 4] = 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917
        mem[mem[64] + 36] = _1132
        require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
        staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917, _1132
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1138 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1140 = mem[_1138]
        mem[mem[64] + 4] = mem[_1138]
        require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
        staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
                gas gas_remaining wei
               args _1140
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1148 = mem[_1146]
        if _802 <= _802:
            _1151 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1151]:
                revert with 0, 50
            mem[_1151 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            if 1 >= mem[_1151]:
                revert with 0, 50
            mem[_1151 + 64] = 0x130966628846bfd36ff31a822705796e8cb8c18d
            mem[_1151 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1151 + 100] = arg1 / 2
            mem[_1151 + 132] = 64
            mem[_1151 + 164] = mem[_1151]
            idx = 0
            s = _1151 + 196
            t = _1151 + 32
            while idx < mem[_1151]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(joeRouterAddress)
            staticcall joeRouterAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1151 + (32 * mem[_1151]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1267 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1271 = mem[_1267]
            require mem[_1267] <= test266151307()
            require _1267 + mem[_1267] + 31 < _1267 + return_data.size
            _1275 = mem[_1267 + mem[_1267]]
            if mem[_1267 + mem[_1267]] > test266151307():
                revert with 0, 65
            if _1267 + ceil32(return_data.size) + ceil32(32 * mem[_1267 + mem[_1267]]) + 1 > test266151307() or ceil32(32 * mem[_1267 + mem[_1267]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _1267 + ceil32(return_data.size) + ceil32(32 * mem[_1267 + mem[_1267]]) + 1
            mem[_1267 + ceil32(return_data.size)] = _1275
            require (32 * _1275) + _1271 + 32 <= return_data.size
            mem[_1267 + ceil32(return_data.size) + 32 len ceil32(32 * _1275)] = mem[_1267 + _1271 + 32 len ceil32(32 * _1275)]
            if _1275 < 1:
                revert with 0, 17
            if _1275 - 1 >= _1275:
                revert with 0, 50
            _1359 = mem[(32 * _1275 - 1) + _1267 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
            mem[mem[64] + 36] = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df
            mem[mem[64] + 68] = _1359
            mem[mem[64] + 100] = arg1 / 2
            require ext_code.size(0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc)
            delegate 0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc.0xcdf00d3b with:
                 gas gas_remaining wei
                args 0x9ad6c38be94206ca50bb0d90783181662f0cfa10, 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, _1359, arg1 / 2
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _1371 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1375 = mem[_1371]
            mem[mem[64] + 4] = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df
            mem[mem[64] + 36] = _1375
            require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
            staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, _1375
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1387 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1391 = mem[_1387]
            mem[mem[64] + 4] = mem[_1387]
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
                    gas gas_remaining wei
                   args _1391
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1403 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _802 <= _802:
                sub_c0481f52 = _802
                sub_544d2e53 = 1
            else:
                sub_c0481f52 = mem[_1403]
                sub_544d2e53 = 3
        else:
            _1157 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1157]:
                revert with 0, 50
            mem[_1157 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            if 1 >= mem[_1157]:
                revert with 0, 50
            mem[_1157 + 64] = 0x130966628846bfd36ff31a822705796e8cb8c18d
            mem[_1157 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1157 + 100] = arg1 / 2
            mem[_1157 + 132] = 64
            mem[_1157 + 164] = mem[_1157]
            idx = 0
            s = _1157 + 196
            t = _1157 + 32
            while idx < mem[_1157]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(joeRouterAddress)
            staticcall joeRouterAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1157 + (32 * mem[_1157]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1268 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1272 = mem[_1268]
            require mem[_1268] <= test266151307()
            require _1268 + mem[_1268] + 31 < _1268 + return_data.size
            _1276 = mem[_1268 + mem[_1268]]
            if mem[_1268 + mem[_1268]] > test266151307():
                revert with 0, 65
            if _1268 + ceil32(return_data.size) + ceil32(32 * mem[_1268 + mem[_1268]]) + 1 > test266151307() or ceil32(32 * mem[_1268 + mem[_1268]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _1268 + ceil32(return_data.size) + ceil32(32 * mem[_1268 + mem[_1268]]) + 1
            mem[_1268 + ceil32(return_data.size)] = _1276
            require (32 * _1276) + _1272 + 32 <= return_data.size
            mem[_1268 + ceil32(return_data.size) + 32 len ceil32(32 * _1276)] = mem[_1268 + _1272 + 32 len ceil32(32 * _1276)]
            if _1276 < 1:
                revert with 0, 17
            if _1276 - 1 >= _1276:
                revert with 0, 50
            _1360 = mem[(32 * _1276 - 1) + _1268 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
            mem[mem[64] + 36] = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df
            mem[mem[64] + 68] = _1360
            mem[mem[64] + 100] = arg1 / 2
            require ext_code.size(0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc)
            delegate 0x712734a31f66b4e770ff201f7cf3a5cbffebe7fc.0xcdf00d3b with:
                 gas gas_remaining wei
                args 0x9ad6c38be94206ca50bb0d90783181662f0cfa10, 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, _1360, arg1 / 2
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _1372 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1376 = mem[_1372]
            mem[mem[64] + 4] = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df
            mem[mem[64] + 36] = _1376
            require ext_code.size(0x1c46450211cb2646cc1da3c5242422967ed9e04c)
            staticcall 0x1c46450211cb2646cc1da3c5242422967ed9e04c.valueOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df, _1376
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1388 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1392 = mem[_1388]
            mem[mem[64] + 4] = mem[_1388]
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            staticcall 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.payoutFor(uint256 rg1) with:
                    gas gas_remaining wei
                   args _1392
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1404 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _802 <= _1148:
                sub_c0481f52 = _1148
                sub_544d2e53 = 2
            else:
                sub_c0481f52 = mem[_1404]
                sub_544d2e53 = 3
}



}
