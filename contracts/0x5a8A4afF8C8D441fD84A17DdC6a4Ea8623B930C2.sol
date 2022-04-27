contract main {




// =====================  Runtime code  =====================


#
#  - totalDeposit(address arg1)
#
address stor0;
address stor1;
address stor2;
address stor3;
address stor4;

function _fallback() payable {
    revert
}

function prezzoKrown() payable {
    require ext_code.size(stor3)
    staticcall stor3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor1)
    staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function prezzoMatic() payable {
    require ext_code.size(stor2)
    staticcall stor2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor1)
    staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (10^12 * ext_call.return_data[0])
}

function totalSupplyBusdPool() payable {
    mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
    mem[100] = 2
    require ext_code.size(stor4)
    staticcall stor4.0x1526fe27 with:
            gas gas_remaining wei
           args 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    _4 = mem[96 len 4], 0
    _5 = 2, mem[132 len 28]
    require 2, mem[132 len 28] <= 4294967296
    require 2, mem[132 len 28] + 32 <= return_data.size
    require mem[2, mem[132 len 28] + 96] <= 4294967296 and 2, mem[132 len 28] + mem[2, mem[132 len 28] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[2, mem[132 len 28] + 96]
    require ext_code.size(address(_4))
    staticcall address(_4).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function totalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor4)
    staticcall stor4.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    _5 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + mem[uint32(arg1), mem[132 len 28] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), mem[132 len 28] + 96]
    require ext_code.size(address(_4))
    staticcall address(_4).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function reserve0(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor4)
    staticcall stor4.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    _5 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + mem[uint32(arg1), mem[132 len 28] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), mem[132 len 28] + 96]
    require ext_code.size(address(_4))
    staticcall address(_4).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[18 len 14]
}

function reserve1(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor4)
    staticcall stor4.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    _5 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + mem[uint32(arg1), mem[132 len 28] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), mem[132 len 28] + 96]
    require ext_code.size(address(_4))
    staticcall address(_4).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[50 len 14]
}

function prezzoKRWinUSDC() payable {
    require ext_code.size(stor2)
    staticcall stor2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor1)
    staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    staticcall stor3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor1)
    staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function token0(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor4)
    staticcall stor4.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    _5 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + mem[uint32(arg1), mem[132 len 28] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), mem[132 len 28] + 96]
    require ext_code.size(address(_4))
    staticcall address(_4).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function token1(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor4)
    staticcall stor4.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    _5 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + mem[uint32(arg1), mem[132 len 28] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), mem[132 len 28] + 96]
    require ext_code.size(address(_4))
    staticcall address(_4).0xd21220a7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function reverseToken0(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor4)
    staticcall stor4.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    _5 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + mem[uint32(arg1), mem[132 len 28] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), mem[132 len 28] + 96]
    require ext_code.size(address(_4))
    staticcall address(_4).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(_4))
    staticcall address(_4).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    staticcall stor4.0x92ab723e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
}

function reverseToken1(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor4)
    staticcall stor4.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    _5 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + mem[uint32(arg1), mem[132 len 28] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), mem[132 len 28] + 96]
    require ext_code.size(address(_4))
    staticcall address(_4).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(_4))
    staticcall address(_4).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    staticcall stor4.0x92ab723e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
}

function reverseToken0Total(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor4)
    staticcall stor4.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    _5 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + mem[uint32(arg1), mem[132 len 28] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), mem[132 len 28] + 96]
    require ext_code.size(stor4)
    staticcall stor4.0x93f1a40b with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(_4))
    staticcall address(_4).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(_4))
    staticcall address(_4).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
}

function reverseToken1Total(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor4)
    staticcall stor4.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    _5 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + mem[uint32(arg1), mem[132 len 28] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), mem[132 len 28] + 96]
    require ext_code.size(stor4)
    staticcall stor4.0x93f1a40b with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(_4))
    staticcall address(_4).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(_4))
    staticcall address(_4).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
}

function prezzoToken0(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor4)
    staticcall stor4.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    _5 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + mem[uint32(arg1), mem[132 len 28] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), mem[132 len 28] + 96]
    require ext_code.size(address(_4))
    staticcall address(_4).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor1)
    staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function prezzoToken1(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor4)
    staticcall stor4.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    _5 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + mem[uint32(arg1), mem[132 len 28] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), mem[132 len 28] + 96]
    require ext_code.size(address(_4))
    staticcall address(_4).0xd21220a7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor1)
    staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] / 10^12)
}

function calculatePending(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor4)
    staticcall stor4.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    _5 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + mem[uint32(arg1), mem[132 len 28] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), mem[132 len 28] + 96]
    _8 = mem[_5 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_5 + 96])] = mem[_5 + 128 len ceil32(mem[_5 + 96])]
    if not _8 % 32:
        require ext_code.size(stor4)
        staticcall stor4.0x93f1a40b with:
                gas gas_remaining wei
               args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if mem[320] > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not mem[288]:
            if mem[256] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require mem[256]
            if mem[352] + (0 / mem[256]) < mem[352]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if ext_call.return_data[32] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[32]
            require ext_call.return_data[0]
            if (mem[352] * ext_call.return_data[0]) + (0 / mem[256] * ext_call.return_data[0]) / ext_call.return_data[0] != mem[352] + (0 / mem[256]):
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_8 + ceil32(return_data.size) + 357 len 31]
            if ext_call.return_data[32] > (mem[352] * ext_call.return_data[0]) + (0 / mem[256] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((mem[352] * ext_call.return_data[0]) + (0 / mem[256] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[32])
        require mem[288]
        if (block.number * mem[288]) - (mem[320] * mem[288]) / mem[288] != block.number - mem[320]:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[_8 + ceil32(return_data.size) + 293 len 31]
        if not (block.number * mem[288]) - (mem[320] * mem[288]):
            if mem[256] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require mem[256]
            if mem[352] + (0 / mem[256]) < mem[352]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if ext_call.return_data[32] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[32]
            require ext_call.return_data[0]
            if (mem[352] * ext_call.return_data[0]) + (0 / mem[256] * ext_call.return_data[0]) / ext_call.return_data[0] != mem[352] + (0 / mem[256]):
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_8 + ceil32(return_data.size) + 357 len 31]
            if ext_call.return_data[32] > (mem[352] * ext_call.return_data[0]) + (0 / mem[256] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((mem[352] * ext_call.return_data[0]) + (0 / mem[256] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[32])
        require (block.number * mem[288]) - (mem[320] * mem[288])
        if (10^18 * block.number * mem[288]) - (10^18 * mem[320] * mem[288]) / (block.number * mem[288]) - (mem[320] * mem[288]) != 10^18:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[_8 + ceil32(return_data.size) + 293 len 31]
        if mem[256] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require mem[256]
        if mem[352] + ((10^18 * block.number * mem[288]) - (10^18 * mem[320] * mem[288]) / mem[256]) < mem[352]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if ext_call.return_data[32] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[32]
        require ext_call.return_data[0]
        if (mem[352] * ext_call.return_data[0]) + ((10^18 * block.number * mem[288]) - (10^18 * mem[320] * mem[288]) / mem[256] * ext_call.return_data[0]) / ext_call.return_data[0] != mem[352] + ((10^18 * block.number * mem[288]) - (10^18 * mem[320] * mem[288]) / mem[256]):
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[_8 + ceil32(return_data.size) + 357 len 31]
    else:
        mem[floor32(_8) + ceil32(return_data.size) + 128] = mem[floor32(_8) + ceil32(return_data.size) + -(_8 % 32) + 160 len _8 % 32]
        require ext_code.size(stor4)
        staticcall stor4.0x93f1a40b with:
                gas gas_remaining wei
               args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if mem[320] > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not mem[288]:
            if mem[256] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require mem[256]
            if mem[352] + (0 / mem[256]) < mem[352]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if ext_call.return_data[32] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[32]
            require ext_call.return_data[0]
            if (mem[352] * ext_call.return_data[0]) + (0 / mem[256] * ext_call.return_data[0]) / ext_call.return_data[0] != mem[352] + (0 / mem[256]):
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_8) + ceil32(return_data.size) + 389 len 31]
            if ext_call.return_data[32] > (mem[352] * ext_call.return_data[0]) + (0 / mem[256] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((mem[352] * ext_call.return_data[0]) + (0 / mem[256] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[32])
        require mem[288]
        if (block.number * mem[288]) - (mem[320] * mem[288]) / mem[288] != block.number - mem[320]:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[floor32(_8) + ceil32(return_data.size) + 325 len 31]
        if not (block.number * mem[288]) - (mem[320] * mem[288]):
            if mem[256] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require mem[256]
            if mem[352] + (0 / mem[256]) < mem[352]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if ext_call.return_data[32] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[32]
            require ext_call.return_data[0]
            if (mem[352] * ext_call.return_data[0]) + (0 / mem[256] * ext_call.return_data[0]) / ext_call.return_data[0] != mem[352] + (0 / mem[256]):
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_8) + ceil32(return_data.size) + 389 len 31]
            if ext_call.return_data[32] > (mem[352] * ext_call.return_data[0]) + (0 / mem[256] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((mem[352] * ext_call.return_data[0]) + (0 / mem[256] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[32])
        require (block.number * mem[288]) - (mem[320] * mem[288])
        if (10^18 * block.number * mem[288]) - (10^18 * mem[320] * mem[288]) / (block.number * mem[288]) - (mem[320] * mem[288]) != 10^18:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[floor32(_8) + ceil32(return_data.size) + 325 len 31]
        if mem[256] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require mem[256]
        if mem[352] + ((10^18 * block.number * mem[288]) - (10^18 * mem[320] * mem[288]) / mem[256]) < mem[352]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if ext_call.return_data[32] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[32]
        require ext_call.return_data[0]
        if (mem[352] * ext_call.return_data[0]) + ((10^18 * block.number * mem[288]) - (10^18 * mem[320] * mem[288]) / mem[256] * ext_call.return_data[0]) / ext_call.return_data[0] != mem[352] + ((10^18 * block.number * mem[288]) - (10^18 * mem[320] * mem[288]) / mem[256]):
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[floor32(_8) + ceil32(return_data.size) + 389 len 31]
    ('eq', ('div', ('add', ('mul', ('mem', ('range', 352, 32)), ('ext_call.return_data', 0, 32)), ('mul', ('div', ('add', ('mul', 1000000000000000000, 'number', ('mem', ('range', 288, 32))), ('mul', -1000000000000000000, ('mem', ('range', 320, 32)), ('mem', ('range', 288, 32)))), ('mem', ('range', 256, 32))), ('ext_call.return_data', 0, 32))), ('ext_call.return_data', 0, 32)), ('add', ('mem', ('range', 352, 32)), ('div', ('add', ('mul', 1000000000000000000, 'number', ('mem', ('range', 288, 32))), ('mul', -1000000000000000000, ('mem', ('range', 320, 32)), ('mem', ('range', 288, 32)))), ('mem', ('range', 256, 32)))))
    if ext_call.return_data[32] > (mem[352] * ext_call.return_data[0]) + ((10^18 * block.number * mem[288]) - (10^18 * mem[320] * mem[288]) / mem[256] * ext_call.return_data[0]) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((mem[352] * ext_call.return_data[0]) + ((10^18 * block.number * mem[288]) - (10^18 * mem[320] * mem[288]) / mem[256] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[32])
}

function totalPending(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor4)
    staticcall stor4.mem[var63003 len 4] with:
            gas gas_remaining wei
           args mem[var63003 + 4 len var63004 - 4]
    mem[var63005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var67003 >= mem[var67002]:
        return var67004
    mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
    mem[100] = var71002
    require ext_code.size(stor4)
    staticcall stor4.mem[var73003 len 4] with:
            gas gas_remaining wei
           args mem[var73003 + 4 len var73004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    require mem[var77002 + 32] <= 4294967296
    require var79002 + var79004 + 32 <= var79005
    require mem[var81003] <= 4294967296 and var81001 + mem[var81003] <= var81006
    mem[var83003] = var83001
    _3833 = mem[var83004]
    if var30001 < mem[var83004]:
        mem[var83003 + var30001 + 32] = mem[var83004 + var30001 + 32]
        var30001 = var30001 + 32
        continue 
    if mem[var83004] % 32:
        mem[floor32(mem[var83004]) + var83003 + 32] = mem[floor32(mem[var83004]) + var83003 + -(mem[var83004] % 32) + 64 len mem[var83004] % 32]
        _4246 = mem[var83005 + 128]
        _4247 = mem[var83005 + 160]
        _4248 = mem[var83005 + 192]
        _4249 = mem[var83005 + 224]
        require ext_code.size(stor4)
        staticcall stor4.0x93f1a40b with:
                gas gas_remaining wei
               args var83016, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[floor32(_3833) + var83003 + 64] = 30
        mem[floor32(_3833) + var83003 + 96] = 'SafeMath: subtraction overflow'
        if _4248 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not _4247:
            mem[floor32(_3833) + var83003 + 128] = 26
            mem[floor32(_3833) + var83003 + 160] = 'SafeMath: division by zero'
            if _4246 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require _4246
            if _4249 + (0 / _4246) < _4249:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                mem[floor32(_3833) + var83003 + 192] = 26
                mem[floor32(_3833) + var83003 + 224] = 'SafeMath: division by zero'
                mem[floor32(_3833) + var83003 + 256] = 30
                mem[floor32(_3833) + var83003 + 288] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[32] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(stor4)
                staticcall stor4.poolLength() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var83018 + 1 >= ext_call.return_data[0]:
                    return (var83019 - ext_call.return_data[32])
            else:
                require ext_call.return_data[0]
                if (_4249 * ext_call.return_data[0]) + (0 / _4246 * ext_call.return_data[0]) / ext_call.return_data[0] != _4249 + (0 / _4246):
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_3833) + var83003 + 293 len 31]
                mem[floor32(_3833) + var83003 + 192] = 26
                mem[floor32(_3833) + var83003 + 224] = 'SafeMath: division by zero'
                mem[floor32(_3833) + var83003 + 256] = 30
                mem[floor32(_3833) + var83003 + 288] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[32] > (_4249 * ext_call.return_data[0]) + (0 / _4246 * ext_call.return_data[0]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(stor4)
                staticcall stor4.poolLength() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var83018 + 1 >= ext_call.return_data[0]:
                    return (var83019 + ((_4249 * ext_call.return_data[0]) + (0 / _4246 * ext_call.return_data[0]) / 10^18) - ext_call.return_data[32])
        else:
            require _4247
            if (block.number * _4247) - (_4248 * _4247) / _4247 != block.number - _4248:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_3833) + var83003 + 229 len 31]
            if not (block.number * _4247) - (_4248 * _4247):
                mem[floor32(_3833) + var83003 + 128] = 26
                mem[floor32(_3833) + var83003 + 160] = 'SafeMath: division by zero'
                if _4246 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require _4246
                if _4249 + (0 / _4246) < _4249:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    mem[floor32(_3833) + var83003 + 192] = 26
                    mem[floor32(_3833) + var83003 + 224] = 'SafeMath: division by zero'
                    mem[floor32(_3833) + var83003 + 256] = 30
                    mem[floor32(_3833) + var83003 + 288] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[32] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(stor4)
                    staticcall stor4.poolLength() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if var83018 + 1 >= ext_call.return_data[0]:
                        return (var83019 - ext_call.return_data[32])
                else:
                    require ext_call.return_data[0]
                    if (_4249 * ext_call.return_data[0]) + (0 / _4246 * ext_call.return_data[0]) / ext_call.return_data[0] != _4249 + (0 / _4246):
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_3833) + var83003 + 293 len 31]
                    mem[floor32(_3833) + var83003 + 192] = 26
                    mem[floor32(_3833) + var83003 + 224] = 'SafeMath: division by zero'
                    mem[floor32(_3833) + var83003 + 256] = 30
                    mem[floor32(_3833) + var83003 + 288] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[32] > (_4249 * ext_call.return_data[0]) + (0 / _4246 * ext_call.return_data[0]) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(stor4)
                    staticcall stor4.poolLength() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if var83018 + 1 >= ext_call.return_data[0]:
                        return (var83019 + ((_4249 * ext_call.return_data[0]) + (0 / _4246 * ext_call.return_data[0]) / 10^18) - ext_call.return_data[32])
            else:
                require (block.number * _4247) - (_4248 * _4247)
                if (10^18 * block.number * _4247) - (10^18 * _4248 * _4247) / (block.number * _4247) - (_4248 * _4247) != 10^18:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_3833) + var83003 + 229 len 31]
                mem[floor32(_3833) + var83003 + 128] = 26
                mem[floor32(_3833) + var83003 + 160] = 'SafeMath: division by zero'
                if _4246 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require _4246
                if _4249 + ((10^18 * block.number * _4247) - (10^18 * _4248 * _4247) / _4246) < _4249:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    mem[floor32(_3833) + var83003 + 192] = 26
                    mem[floor32(_3833) + var83003 + 224] = 'SafeMath: division by zero'
                    mem[floor32(_3833) + var83003 + 256] = 30
                    mem[floor32(_3833) + var83003 + 288] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[32] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(stor4)
                    staticcall stor4.poolLength() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if var83018 + 1 >= ext_call.return_data[0]:
                        return (var83019 - ext_call.return_data[32])
                else:
                    require ext_call.return_data[0]
                    if (_4249 * ext_call.return_data[0]) + ((10^18 * block.number * _4247) - (10^18 * _4248 * _4247) / _4246 * ext_call.return_data[0]) / ext_call.return_data[0] != _4249 + ((10^18 * block.number * _4247) - (10^18 * _4248 * _4247) / _4246):
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_3833) + var83003 + 293 len 31]
                    mem[floor32(_3833) + var83003 + 192] = 26
                    mem[floor32(_3833) + var83003 + 224] = 'SafeMath: division by zero'
                    mem[floor32(_3833) + var83003 + 256] = 30
                    mem[floor32(_3833) + var83003 + 288] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[32] > (_4249 * ext_call.return_data[0]) + ((10^18 * block.number * _4247) - (10^18 * _4248 * _4247) / _4246 * ext_call.return_data[0]) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(stor4)
                    staticcall stor4.poolLength() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if var83018 + 1 >= ext_call.return_data[0]:
                        return (var83019 + ((_4249 * ext_call.return_data[0]) + ((10^18 * block.number * _4247) - (10^18 * _4248 * _4247) / _4246 * ext_call.return_data[0]) / 10^18) - ext_call.return_data[32])
        ('lt', ('add', 1, ('var', 83018)), ('ext_call.return_data', 0, 32))
        mem[floor32(_3833) + var83003 + 320] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
        mem[floor32(_3833) + var83003 + 324] = var83018 + 1
        require ext_code.size(stor4)
        staticcall stor4.0x1526fe27 with:
                gas gas_remaining wei
               args (var83018 + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(_3833) + var83003 + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(_3833) + var83003 + ceil32(return_data.size) + 320
        require return_data.size >= 288
        require uint32(var83018 + 1), mem[floor32(_3833) + var83003 + 356 len 28] <= 4294967296
        require uint32(var83018 + 1), mem[floor32(_3833) + var83003 + 356 len 28] + 32 <= return_data.size
        require mem[uint32(var83018 + 1), mem[floor32(_3833) + var83003 + 356 len 28] + floor32(_3833) + var83003 + 320] <= 4294967296 and uint32(var83018 + 1), mem[floor32(_3833) + var83003 + 356 len 28] + mem[uint32(var83018 + 1), mem[floor32(_3833) + var83003 + 356 len 28] + floor32(_3833) + var83003 + 320] + 32 <= return_data.size
        mem[floor32(_3833) + var83003 + ceil32(return_data.size) + 320] = mem[uint32(var83018 + 1), mem[floor32(_3833) + var83003 + 356 len 28] + floor32(_3833) + var83003 + 320]
    else:
        mem[64] = mem[var83004] + var83003 + 32
        _4236 = mem[var83005 + 128]
        _4237 = mem[var83005 + 160]
        _4238 = mem[var83005 + 192]
        _4239 = mem[var83005 + 224]
        mem[mem[64] + 36] = arg1
        require ext_code.size(stor4)
        staticcall stor4.0x93f1a40b with:
                gas gas_remaining wei
               args var83016, arg1
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        _4256 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4256] = 30
        mem[_4256 + 32] = 'SafeMath: subtraction overflow'
        if _4238 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not _4237:
            _4278 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4278] = 26
            mem[_4278 + 32] = 'SafeMath: division by zero'
            if _4236 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require _4236
            if _4239 + (0 / _4236) < _4239:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                _4344 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4344] = 26
                mem[_4344 + 32] = 'SafeMath: division by zero'
                _4365 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4365] = 30
                mem[_4365 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[32] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(stor4)
                staticcall stor4.poolLength() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var83018 + 1 >= ext_call.return_data[0]:
                    return (var83019 - ext_call.return_data[32])
                mem[mem[64]] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = var83018 + 1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args (var83018 + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4515 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                require mem[_4515 + 32] <= 4294967296
                require mem[_4515 + 32] + 32 <= return_data.size
                require mem[mem[_4515 + 32] + _4515] <= 4294967296 and mem[_4515 + 32] + mem[mem[_4515 + 32] + _4515] + 32 <= return_data.size
                mem[_4515 + ceil32(return_data.size)] = mem[mem[_4515 + 32] + _4515]
            else:
                require ext_call.return_data[0]
                if (_4239 * ext_call.return_data[0]) + (0 / _4236 * ext_call.return_data[0]) / ext_call.return_data[0] != _4239 + (0 / _4236):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _4351 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4351] = 26
                mem[_4351 + 32] = 'SafeMath: division by zero'
                _4369 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4369] = 30
                mem[_4369 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[32] > (_4239 * ext_call.return_data[0]) + (0 / _4236 * ext_call.return_data[0]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(stor4)
                staticcall stor4.poolLength() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var83018 + 1 >= ext_call.return_data[0]:
                    return (var83019 + ((_4239 * ext_call.return_data[0]) + (0 / _4236 * ext_call.return_data[0]) / 10^18) - ext_call.return_data[32])
                mem[mem[64]] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = var83018 + 1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args (var83018 + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4546 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                require mem[_4546 + 32] <= 4294967296
                require mem[_4546 + 32] + 32 <= return_data.size
                require mem[mem[_4546 + 32] + _4546] <= 4294967296 and mem[_4546 + 32] + mem[mem[_4546 + 32] + _4546] + 32 <= return_data.size
                mem[_4546 + ceil32(return_data.size)] = mem[mem[_4546 + 32] + _4546]
        else:
            require _4237
            if (block.number * _4237) - (_4238 * _4237) / _4237 != block.number - _4238:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * _4237) - (_4238 * _4237):
                _4282 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4282] = 26
                mem[_4282 + 32] = 'SafeMath: division by zero'
                if _4236 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require _4236
                if _4239 + (0 / _4236) < _4239:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    _4350 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4350] = 26
                    mem[_4350 + 32] = 'SafeMath: division by zero'
                    _4368 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4368] = 30
                    mem[_4368 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[32] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(stor4)
                    staticcall stor4.poolLength() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if var83018 + 1 >= ext_call.return_data[0]:
                        return (var83019 - ext_call.return_data[32])
                    mem[mem[64]] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = var83018 + 1
                    require ext_code.size(stor4)
                    staticcall stor4.0x1526fe27 with:
                            gas gas_remaining wei
                           args (var83018 + 1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4545 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    require mem[_4545 + 32] <= 4294967296
                    require mem[_4545 + 32] + 32 <= return_data.size
                    require mem[mem[_4545 + 32] + _4545] <= 4294967296 and mem[_4545 + 32] + mem[mem[_4545 + 32] + _4545] + 32 <= return_data.size
                    mem[_4545 + ceil32(return_data.size)] = mem[mem[_4545 + 32] + _4545]
                else:
                    require ext_call.return_data[0]
                    if (_4239 * ext_call.return_data[0]) + (0 / _4236 * ext_call.return_data[0]) / ext_call.return_data[0] != _4239 + (0 / _4236):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _4359 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4359] = 26
                    mem[_4359 + 32] = 'SafeMath: division by zero'
                    _4379 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4379] = 30
                    mem[_4379 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[32] > (_4239 * ext_call.return_data[0]) + (0 / _4236 * ext_call.return_data[0]) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(stor4)
                    staticcall stor4.poolLength() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if var83018 + 1 >= ext_call.return_data[0]:
                        return (var83019 + ((_4239 * ext_call.return_data[0]) + (0 / _4236 * ext_call.return_data[0]) / 10^18) - ext_call.return_data[32])
                    mem[mem[64]] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = var83018 + 1
                    require ext_code.size(stor4)
                    staticcall stor4.0x1526fe27 with:
                            gas gas_remaining wei
                           args (var83018 + 1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4574 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    require mem[_4574 + 32] <= 4294967296
                    require mem[_4574 + 32] + 32 <= return_data.size
                    require mem[mem[_4574 + 32] + _4574] <= 4294967296 and mem[_4574 + 32] + mem[mem[_4574 + 32] + _4574] + 32 <= return_data.size
                    mem[_4574 + ceil32(return_data.size)] = mem[mem[_4574 + 32] + _4574]
            else:
                require (block.number * _4237) - (_4238 * _4237)
                if (10^18 * block.number * _4237) - (10^18 * _4238 * _4237) / (block.number * _4237) - (_4238 * _4237) != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _4292 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4292] = 26
                mem[_4292 + 32] = 'SafeMath: division by zero'
                if _4236 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require _4236
                if _4239 + ((10^18 * block.number * _4237) - (10^18 * _4238 * _4237) / _4236) < _4239:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    _4358 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4358] = 26
                    mem[_4358 + 32] = 'SafeMath: division by zero'
                    _4378 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4378] = 30
                    mem[_4378 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[32] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(stor4)
                    staticcall stor4.poolLength() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if var83018 + 1 >= ext_call.return_data[0]:
                        return (var83019 - ext_call.return_data[32])
                    mem[mem[64]] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = var83018 + 1
                    require ext_code.size(stor4)
                    staticcall stor4.0x1526fe27 with:
                            gas gas_remaining wei
                           args (var83018 + 1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4573 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    require mem[_4573 + 32] <= 4294967296
                    require mem[_4573 + 32] + 32 <= return_data.size
                    require mem[mem[_4573 + 32] + _4573] <= 4294967296 and mem[_4573 + 32] + mem[mem[_4573 + 32] + _4573] + 32 <= return_data.size
                    mem[_4573 + ceil32(return_data.size)] = mem[mem[_4573 + 32] + _4573]
                else:
                    require ext_call.return_data[0]
                    if (_4239 * ext_call.return_data[0]) + ((10^18 * block.number * _4237) - (10^18 * _4238 * _4237) / _4236 * ext_call.return_data[0]) / ext_call.return_data[0] != _4239 + ((10^18 * block.number * _4237) - (10^18 * _4238 * _4237) / _4236):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _4364 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4364] = 26
                    mem[_4364 + 32] = 'SafeMath: division by zero'
                    _4398 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4398] = 30
                    mem[_4398 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[32] > (_4239 * ext_call.return_data[0]) + ((10^18 * block.number * _4237) - (10^18 * _4238 * _4237) / _4236 * ext_call.return_data[0]) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(stor4)
                    staticcall stor4.poolLength() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if var83018 + 1 >= ext_call.return_data[0]:
                        return (var83019 + ((_4239 * ext_call.return_data[0]) + ((10^18 * block.number * _4237) - (10^18 * _4238 * _4237) / _4236 * ext_call.return_data[0]) / 10^18) - ext_call.return_data[32])
                    mem[mem[64]] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = var83018 + 1
                    require ext_code.size(stor4)
                    staticcall stor4.0x1526fe27 with:
                            gas gas_remaining wei
                           args (var83018 + 1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4598 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    require mem[_4598 + 32] <= 4294967296
                    require mem[_4598 + 32] + 32 <= return_data.size
                    require mem[mem[_4598 + 32] + _4598] <= 4294967296 and mem[_4598 + 32] + mem[mem[_4598 + 32] + _4598] + 32 <= return_data.size
                    mem[_4598 + ceil32(return_data.size)] = mem[mem[_4598 + 32] + _4598]
    var30001 = 0
    continue 
}

function tvl(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor4)
    staticcall stor4.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    if not arg1:
        _10 = mem[96 len 4], Mask(224, 32, arg1) >> 32
        _11 = uint32(arg1), mem[132 len 28]
        require uint32(arg1), mem[132 len 28] <= 4294967296
        require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
        require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + mem[uint32(arg1), mem[132 len 28] + 96] + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), mem[132 len 28] + 96]
        _16 = mem[_11 + 96]
        mem[ceil32(return_data.size) + 128 len ceil32(mem[_11 + 96])] = mem[_11 + 128 len ceil32(mem[_11 + 96])]
        if not _16 % 32:
            require ext_code.size(address(_10))
            staticcall address(_10).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(address(_10))
            staticcall address(_10).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            staticcall stor4.0x92ab723e with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(stor2)
            staticcall stor2.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(stor1)
            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor3)
            staticcall stor3.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[_16 + ceil32(return_data.size) + 164] = Mask(112, 0, ext_call.return_data[0])
            mem[_16 + ceil32(return_data.size) + 196] = Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(stor1)
            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_16 + ceil32(return_data.size) + 128] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[_16 + ceil32(return_data.size) + 132] = arg1
            require ext_code.size(stor4)
            staticcall stor4.0x1526fe27 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_16 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _16 + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 288
            _1463 = mem[_16 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32
            require uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 <= 4294967296
            require uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 32 <= return_data.size
            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + _16 + ceil32(return_data.size) + 128] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + _16 + ceil32(return_data.size) + 128] + 32 <= return_data.size
            mem[_16 + (2 * ceil32(return_data.size)) + 128] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + _16 + ceil32(return_data.size) + 128]
            require ext_code.size(address(_1463))
            staticcall address(_1463).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(address(_1463))
            staticcall address(_1463).0x18160ddd with:
                    gas gas_remaining wei
        else:
            mem[floor32(_16) + ceil32(return_data.size) + 128] = mem[floor32(_16) + ceil32(return_data.size) + -(_16 % 32) + 160 len _16 % 32]
            require ext_code.size(address(_10))
            staticcall address(_10).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(address(_10))
            staticcall address(_10).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            staticcall stor4.0x92ab723e with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(stor2)
            staticcall stor2.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(stor1)
            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor3)
            staticcall stor3.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[floor32(_16) + ceil32(return_data.size) + 196] = Mask(112, 0, ext_call.return_data[0])
            mem[floor32(_16) + ceil32(return_data.size) + 228] = Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(stor1)
            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[floor32(_16) + ceil32(return_data.size) + 160] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[floor32(_16) + ceil32(return_data.size) + 164] = arg1
            require ext_code.size(stor4)
            staticcall stor4.0x1526fe27 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_16) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_16) + (2 * ceil32(return_data.size)) + 160
            require return_data.size >= 288
            _1470 = mem[floor32(_16) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32
            require uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 <= 4294967296
            require uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 32 <= return_data.size
            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + floor32(_16) + ceil32(return_data.size) + 160] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + floor32(_16) + ceil32(return_data.size) + 160] + 32 <= return_data.size
            mem[floor32(_16) + (2 * ceil32(return_data.size)) + 160] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + floor32(_16) + ceil32(return_data.size) + 160]
            require ext_code.size(address(_1470))
            staticcall address(_1470).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(address(_1470))
            staticcall address(_1470).0x18160ddd with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        staticcall stor4.0x92ab723e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(stor2)
        staticcall stor2.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(stor1)
        staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ((10^12 * ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18))
    _7 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    _8 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + mem[uint32(arg1), mem[132 len 28] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), mem[132 len 28] + 96]
    _15 = mem[_8 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_8 + 96])] = mem[_8 + 128 len ceil32(mem[_8 + 96])]
    if not _15 % 32:
        require ext_code.size(address(_7))
        staticcall address(_7).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(address(_7))
        staticcall address(_7).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        staticcall stor4.0x92ab723e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(stor2)
        staticcall stor2.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[_15 + ceil32(return_data.size) + 164] = Mask(112, 0, ext_call.return_data[32])
        mem[_15 + ceil32(return_data.size) + 196] = Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(stor1)
        staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_15 + ceil32(return_data.size) + 128] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
        mem[_15 + ceil32(return_data.size) + 132] = arg1
        require ext_code.size(stor4)
        staticcall stor4.0x1526fe27 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_15 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _15 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 288
        _1375 = mem[_15 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32
        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
        require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _15 + ceil32(return_data.size) + 128] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _15 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        mem[_15 + (2 * ceil32(return_data.size)) + 128] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _15 + ceil32(return_data.size) + 128]
        _1395 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _15 + ceil32(return_data.size) + 128]
        mem[_15 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _15 + ceil32(return_data.size) + 128])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _15 + ceil32(return_data.size) + 160 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _15 + ceil32(return_data.size) + 128])]
        if not _1395 % 32:
            require ext_code.size(address(_1375))
            staticcall address(_1375).0xd21220a7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            staticcall stor0.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[_1395 + _15 + (2 * ceil32(return_data.size)) + 196] = Mask(112, 0, ext_call.return_data[32])
            mem[_1395 + _15 + (2 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(stor1)
            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_1395 + _15 + (2 * ceil32(return_data.size)) + 160] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[_1395 + _15 + (2 * ceil32(return_data.size)) + 164] = arg1
            require ext_code.size(stor4)
            staticcall stor4.0x1526fe27 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1395 + _15 + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1395 + _15 + (4 * ceil32(return_data.size)) + 160
            require return_data.size >= 288
            _2699 = mem[_1395 + _15 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg1) >> 32
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1395 + _15 + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1395 + _15 + (2 * ceil32(return_data.size)) + 160] + 32 <= return_data.size
            mem[_1395 + _15 + (4 * ceil32(return_data.size)) + 160] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1395 + _15 + (2 * ceil32(return_data.size)) + 160]
            _2723 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1395 + _15 + (2 * ceil32(return_data.size)) + 160]
            mem[_1395 + _15 + (4 * ceil32(return_data.size)) + 192 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1395 + _15 + (2 * ceil32(return_data.size)) + 160])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1395 + _15 + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1395 + _15 + (2 * ceil32(return_data.size)) + 160])]
            if not _2723 % 32:
                require ext_code.size(address(_2699))
                staticcall address(_2699).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_2699))
                staticcall address(_2699).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                staticcall stor4.0x92ab723e with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[_2723 + _1395 + _15 + (4 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[32])
                mem[_2723 + _1395 + _15 + (4 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_2723 + _1395 + _15 + (4 * ceil32(return_data.size)) + 192] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[_2723 + _1395 + _15 + (4 * ceil32(return_data.size)) + 196] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2723 + _1395 + _15 + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2723 + _1395 + _15 + (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 288
                _3773 = mem[_2723 + _1395 + _15 + (4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2723 + _1395 + _15 + (4 * ceil32(return_data.size)) + 192] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2723 + _1395 + _15 + (4 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                mem[_2723 + _1395 + _15 + (6 * ceil32(return_data.size)) + 192] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2723 + _1395 + _15 + (4 * ceil32(return_data.size)) + 192]
                require ext_code.size(address(_3773))
                staticcall address(_3773).token0() with:
                        gas gas_remaining wei
            else:
                mem[floor32(_2723) + _1395 + _15 + (4 * ceil32(return_data.size)) + 192] = mem[floor32(_2723) + _1395 + _15 + (4 * ceil32(return_data.size)) + -(_2723 % 32) + 224 len _2723 % 32]
                require ext_code.size(address(_2699))
                staticcall address(_2699).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_2699))
                staticcall address(_2699).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                staticcall stor4.0x92ab723e with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[floor32(_2723) + _1395 + _15 + (4 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
                mem[floor32(_2723) + _1395 + _15 + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[floor32(_2723) + _1395 + _15 + (4 * ceil32(return_data.size)) + 224] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[floor32(_2723) + _1395 + _15 + (4 * ceil32(return_data.size)) + 228] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(_2723) + _1395 + _15 + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(_2723) + _1395 + _15 + (6 * ceil32(return_data.size)) + 224
                require return_data.size >= 288
                _3789 = mem[floor32(_2723) + _1395 + _15 + (4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2723) + _1395 + _15 + (4 * ceil32(return_data.size)) + 224] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2723) + _1395 + _15 + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                mem[floor32(_2723) + _1395 + _15 + (6 * ceil32(return_data.size)) + 224] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2723) + _1395 + _15 + (4 * ceil32(return_data.size)) + 224]
                require ext_code.size(address(_3789))
                staticcall address(_3789).token0() with:
                        gas gas_remaining wei
        else:
            mem[floor32(_1395) + _15 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_1395) + _15 + (2 * ceil32(return_data.size)) + -(_1395 % 32) + 192 len _1395 % 32]
            require ext_code.size(address(_1375))
            staticcall address(_1375).0xd21220a7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            staticcall stor0.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[floor32(_1395) + _15 + (2 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[32])
            mem[floor32(_1395) + _15 + (2 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(stor1)
            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[floor32(_1395) + _15 + (2 * ceil32(return_data.size)) + 192] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[floor32(_1395) + _15 + (2 * ceil32(return_data.size)) + 196] = arg1
            require ext_code.size(stor4)
            staticcall stor4.0x1526fe27 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_1395) + _15 + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 288
            _2707 = mem[floor32(_1395) + _15 + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1395) + _15 + (2 * ceil32(return_data.size)) + 192] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1395) + _15 + (2 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
            mem[floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 192] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1395) + _15 + (2 * ceil32(return_data.size)) + 192]
            _2727 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1395) + _15 + (2 * ceil32(return_data.size)) + 192]
            mem[floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 224 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1395) + _15 + (2 * ceil32(return_data.size)) + 192])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1395) + _15 + (2 * ceil32(return_data.size)) + 224 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1395) + _15 + (2 * ceil32(return_data.size)) + 192])]
            if not _2727 % 32:
                require ext_code.size(address(_2707))
                staticcall address(_2707).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_2707))
                staticcall address(_2707).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                staticcall stor4.0x92ab723e with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[_2727 + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
                mem[_2727 + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_2727 + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 224] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[_2727 + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 228] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2727 + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2727 + floor32(_1395) + _15 + (6 * ceil32(return_data.size)) + 224
                require return_data.size >= 288
                _3777 = mem[_2727 + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2727 + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 224] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2727 + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                mem[_2727 + floor32(_1395) + _15 + (6 * ceil32(return_data.size)) + 224] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2727 + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 224]
                require ext_code.size(address(_3777))
                staticcall address(_3777).token0() with:
                        gas gas_remaining wei
            else:
                mem[floor32(_2727) + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_2727) + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + -(_2727 % 32) + 256 len _2727 % 32]
                require ext_code.size(address(_2707))
                staticcall address(_2707).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_2707))
                staticcall address(_2707).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                staticcall stor4.0x92ab723e with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[floor32(_2727) + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[32])
                mem[floor32(_2727) + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[floor32(_2727) + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 256] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[floor32(_2727) + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 260] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(_2727) + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(_2727) + floor32(_1395) + _15 + (6 * ceil32(return_data.size)) + 256
                require return_data.size >= 288
                _3792 = mem[floor32(_2727) + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2727) + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 256] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2727) + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                mem[floor32(_2727) + floor32(_1395) + _15 + (6 * ceil32(return_data.size)) + 256] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2727) + floor32(_1395) + _15 + (4 * ceil32(return_data.size)) + 256]
                require ext_code.size(address(_3792))
                staticcall address(_3792).token0() with:
                        gas gas_remaining wei
    else:
        mem[floor32(_15) + ceil32(return_data.size) + 128] = mem[floor32(_15) + ceil32(return_data.size) + -(_15 % 32) + 160 len _15 % 32]
        require ext_code.size(address(_7))
        staticcall address(_7).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(address(_7))
        staticcall address(_7).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        staticcall stor4.0x92ab723e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(stor2)
        staticcall stor2.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[floor32(_15) + ceil32(return_data.size) + 196] = Mask(112, 0, ext_call.return_data[32])
        mem[floor32(_15) + ceil32(return_data.size) + 228] = Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(stor1)
        staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_15) + ceil32(return_data.size) + 160] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
        mem[floor32(_15) + ceil32(return_data.size) + 164] = arg1
        require ext_code.size(stor4)
        staticcall stor4.0x1526fe27 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(_15) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(_15) + (2 * ceil32(return_data.size)) + 160
        require return_data.size >= 288
        _1385 = mem[floor32(_15) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32
        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
        require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_15) + ceil32(return_data.size) + 160] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_15) + ceil32(return_data.size) + 160] + 32 <= return_data.size
        mem[floor32(_15) + (2 * ceil32(return_data.size)) + 160] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_15) + ceil32(return_data.size) + 160]
        _1399 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_15) + ceil32(return_data.size) + 160]
        mem[floor32(_15) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_15) + ceil32(return_data.size) + 160])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_15) + ceil32(return_data.size) + 192 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_15) + ceil32(return_data.size) + 160])]
        if not _1399 % 32:
            require ext_code.size(address(_1385))
            staticcall address(_1385).0xd21220a7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            staticcall stor0.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[_1399 + floor32(_15) + (2 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[32])
            mem[_1399 + floor32(_15) + (2 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(stor1)
            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_1399 + floor32(_15) + (2 * ceil32(return_data.size)) + 192] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[_1399 + floor32(_15) + (2 * ceil32(return_data.size)) + 196] = arg1
            require ext_code.size(stor4)
            staticcall stor4.0x1526fe27 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1399 + floor32(_15) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 288
            _2703 = mem[_1399 + floor32(_15) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1399 + floor32(_15) + (2 * ceil32(return_data.size)) + 192] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1399 + floor32(_15) + (2 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
            mem[_1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 192] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1399 + floor32(_15) + (2 * ceil32(return_data.size)) + 192]
            _2725 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1399 + floor32(_15) + (2 * ceil32(return_data.size)) + 192]
            mem[_1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 224 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1399 + floor32(_15) + (2 * ceil32(return_data.size)) + 192])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1399 + floor32(_15) + (2 * ceil32(return_data.size)) + 224 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1399 + floor32(_15) + (2 * ceil32(return_data.size)) + 192])]
            if not _2725 % 32:
                require ext_code.size(address(_2703))
                staticcall address(_2703).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_2703))
                staticcall address(_2703).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                staticcall stor4.0x92ab723e with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[_2725 + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
                mem[_2725 + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_2725 + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 224] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[_2725 + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 228] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2725 + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2725 + _1399 + floor32(_15) + (6 * ceil32(return_data.size)) + 224
                require return_data.size >= 288
                _3781 = mem[_2725 + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2725 + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 224] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2725 + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                mem[_2725 + _1399 + floor32(_15) + (6 * ceil32(return_data.size)) + 224] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2725 + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 224]
                require ext_code.size(address(_3781))
                staticcall address(_3781).token0() with:
                        gas gas_remaining wei
            else:
                mem[floor32(_2725) + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_2725) + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + -(_2725 % 32) + 256 len _2725 % 32]
                require ext_code.size(address(_2703))
                staticcall address(_2703).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_2703))
                staticcall address(_2703).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                staticcall stor4.0x92ab723e with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[floor32(_2725) + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[32])
                mem[floor32(_2725) + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[floor32(_2725) + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 256] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[floor32(_2725) + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 260] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(_2725) + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(_2725) + _1399 + floor32(_15) + (6 * ceil32(return_data.size)) + 256
                require return_data.size >= 288
                _3795 = mem[floor32(_2725) + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2725) + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 256] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2725) + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                mem[floor32(_2725) + _1399 + floor32(_15) + (6 * ceil32(return_data.size)) + 256] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2725) + _1399 + floor32(_15) + (4 * ceil32(return_data.size)) + 256]
                require ext_code.size(address(_3795))
                staticcall address(_3795).token0() with:
                        gas gas_remaining wei
        else:
            mem[floor32(_1399) + floor32(_15) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_1399) + floor32(_15) + (2 * ceil32(return_data.size)) + -(_1399 % 32) + 224 len _1399 % 32]
            require ext_code.size(address(_1385))
            staticcall address(_1385).0xd21220a7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            staticcall stor0.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[floor32(_1399) + floor32(_15) + (2 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
            mem[floor32(_1399) + floor32(_15) + (2 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(stor1)
            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[floor32(_1399) + floor32(_15) + (2 * ceil32(return_data.size)) + 224] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[floor32(_1399) + floor32(_15) + (2 * ceil32(return_data.size)) + 228] = arg1
            require ext_code.size(stor4)
            staticcall stor4.0x1526fe27 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_1399) + floor32(_15) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 224
            require return_data.size >= 288
            _2710 = mem[floor32(_1399) + floor32(_15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1399) + floor32(_15) + (2 * ceil32(return_data.size)) + 224] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1399) + floor32(_15) + (2 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
            mem[floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 224] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1399) + floor32(_15) + (2 * ceil32(return_data.size)) + 224]
            _2728 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1399) + floor32(_15) + (2 * ceil32(return_data.size)) + 224]
            mem[floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 256 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1399) + floor32(_15) + (2 * ceil32(return_data.size)) + 224])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1399) + floor32(_15) + (2 * ceil32(return_data.size)) + 256 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1399) + floor32(_15) + (2 * ceil32(return_data.size)) + 224])]
            if not _2728 % 32:
                require ext_code.size(address(_2710))
                staticcall address(_2710).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_2710))
                staticcall address(_2710).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                staticcall stor4.0x92ab723e with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[_2728 + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[32])
                mem[_2728 + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_2728 + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 256] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[_2728 + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 260] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2728 + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2728 + floor32(_1399) + floor32(_15) + (6 * ceil32(return_data.size)) + 256
                require return_data.size >= 288
                _3785 = mem[_2728 + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2728 + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 256] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2728 + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                mem[_2728 + floor32(_1399) + floor32(_15) + (6 * ceil32(return_data.size)) + 256] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2728 + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 256]
                require ext_code.size(address(_3785))
                staticcall address(_3785).token0() with:
                        gas gas_remaining wei
            else:
                mem[floor32(_2728) + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 256] = mem[floor32(_2728) + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + -(_2728 % 32) + 288 len _2728 % 32]
                require ext_code.size(address(_2710))
                staticcall address(_2710).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_2710))
                staticcall address(_2710).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                staticcall stor4.0x92ab723e with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[floor32(_2728) + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[32])
                mem[floor32(_2728) + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[floor32(_2728) + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 288] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[floor32(_2728) + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 292] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(_2728) + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(_2728) + floor32(_1399) + floor32(_15) + (6 * ceil32(return_data.size)) + 288
                require return_data.size >= 288
                _3798 = mem[floor32(_2728) + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2728) + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 288] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2728) + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                mem[floor32(_2728) + floor32(_1399) + floor32(_15) + (6 * ceil32(return_data.size)) + 288] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2728) + floor32(_1399) + floor32(_15) + (4 * ceil32(return_data.size)) + 288]
                require ext_code.size(address(_3798))
                staticcall address(_3798).token0() with:
                        gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor1)
    staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18))
}

function tvlTotal(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor4)
    staticcall stor4.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    if not arg1:
        _10 = mem[96 len 4], Mask(224, 32, arg1) >> 32
        _11 = uint32(arg1), mem[132 len 28]
        require uint32(arg1), mem[132 len 28] <= 4294967296
        require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
        require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + mem[uint32(arg1), mem[132 len 28] + 96] + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), mem[132 len 28] + 96]
        _16 = mem[_11 + 96]
        mem[ceil32(return_data.size) + 128 len ceil32(mem[_11 + 96])] = mem[_11 + 128 len ceil32(mem[_11 + 96])]
        if not _16 % 32:
            require ext_code.size(stor4)
            staticcall stor4.0x93f1a40b with:
                    gas gas_remaining wei
                   args arg1, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(_10))
            staticcall address(_10).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(address(_10))
            staticcall address(_10).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(stor2)
            staticcall stor2.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(stor1)
            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor3)
            staticcall stor3.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[_16 + ceil32(return_data.size) + 164] = Mask(112, 0, ext_call.return_data[0])
            mem[_16 + ceil32(return_data.size) + 196] = Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(stor1)
            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_16 + ceil32(return_data.size) + 128] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[_16 + ceil32(return_data.size) + 132] = arg1
            require ext_code.size(stor4)
            staticcall stor4.0x1526fe27 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_16 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _16 + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 288
            _1483 = mem[_16 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32
            require uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 <= 4294967296
            require uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 32 <= return_data.size
            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + _16 + ceil32(return_data.size) + 128] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + _16 + ceil32(return_data.size) + 128] + 32 <= return_data.size
            mem[_16 + (2 * ceil32(return_data.size)) + 128] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + _16 + ceil32(return_data.size) + 128]
            require ext_code.size(stor4)
            staticcall stor4.0x93f1a40b with:
                    gas gas_remaining wei
                   args arg1, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(_1483))
            staticcall address(_1483).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(address(_1483))
            staticcall address(_1483).0x18160ddd with:
                    gas gas_remaining wei
        else:
            mem[floor32(_16) + ceil32(return_data.size) + 128] = mem[floor32(_16) + ceil32(return_data.size) + -(_16 % 32) + 160 len _16 % 32]
            require ext_code.size(stor4)
            staticcall stor4.0x93f1a40b with:
                    gas gas_remaining wei
                   args arg1, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(_10))
            staticcall address(_10).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(address(_10))
            staticcall address(_10).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(stor2)
            staticcall stor2.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(stor1)
            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor3)
            staticcall stor3.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[floor32(_16) + ceil32(return_data.size) + 196] = Mask(112, 0, ext_call.return_data[0])
            mem[floor32(_16) + ceil32(return_data.size) + 228] = Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(stor1)
            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[floor32(_16) + ceil32(return_data.size) + 160] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[floor32(_16) + ceil32(return_data.size) + 164] = arg1
            require ext_code.size(stor4)
            staticcall stor4.0x1526fe27 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_16) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_16) + (2 * ceil32(return_data.size)) + 160
            require return_data.size >= 288
            _1490 = mem[floor32(_16) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32
            require uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 <= 4294967296
            require uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 32 <= return_data.size
            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + floor32(_16) + ceil32(return_data.size) + 160] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + floor32(_16) + ceil32(return_data.size) + 160] + 32 <= return_data.size
            mem[floor32(_16) + (2 * ceil32(return_data.size)) + 160] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + floor32(_16) + ceil32(return_data.size) + 160]
            require ext_code.size(stor4)
            staticcall stor4.0x93f1a40b with:
                    gas gas_remaining wei
                   args arg1, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(_1490))
            staticcall address(_1490).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(address(_1490))
            staticcall address(_1490).0x18160ddd with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(stor2)
        staticcall stor2.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(stor1)
        staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ((10^12 * ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18))
    _7 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    _8 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + mem[uint32(arg1), mem[132 len 28] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), mem[132 len 28] + 96]
    _15 = mem[_8 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_8 + 96])] = mem[_8 + 128 len ceil32(mem[_8 + 96])]
    if not _15 % 32:
        require ext_code.size(stor4)
        staticcall stor4.0x93f1a40b with:
                gas gas_remaining wei
               args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(_7))
        staticcall address(_7).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(address(_7))
        staticcall address(_7).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(stor2)
        staticcall stor2.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[_15 + ceil32(return_data.size) + 164] = Mask(112, 0, ext_call.return_data[32])
        mem[_15 + ceil32(return_data.size) + 196] = Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(stor1)
        staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_15 + ceil32(return_data.size) + 128] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
        mem[_15 + ceil32(return_data.size) + 132] = arg1
        require ext_code.size(stor4)
        staticcall stor4.0x1526fe27 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_15 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _15 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 288
        _1395 = mem[_15 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32
        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
        require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _15 + ceil32(return_data.size) + 128] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _15 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        mem[_15 + (2 * ceil32(return_data.size)) + 128] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _15 + ceil32(return_data.size) + 128]
        _1415 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _15 + ceil32(return_data.size) + 128]
        mem[_15 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _15 + ceil32(return_data.size) + 128])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _15 + ceil32(return_data.size) + 160 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _15 + ceil32(return_data.size) + 128])]
        if not _1415 % 32:
            require ext_code.size(address(_1395))
            staticcall address(_1395).0xd21220a7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            staticcall stor0.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[_1415 + _15 + (2 * ceil32(return_data.size)) + 196] = Mask(112, 0, ext_call.return_data[32])
            mem[_1415 + _15 + (2 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(stor1)
            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_1415 + _15 + (2 * ceil32(return_data.size)) + 160] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[_1415 + _15 + (2 * ceil32(return_data.size)) + 164] = arg1
            require ext_code.size(stor4)
            staticcall stor4.0x1526fe27 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1415 + _15 + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1415 + _15 + (4 * ceil32(return_data.size)) + 160
            require return_data.size >= 288
            _2735 = mem[_1415 + _15 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg1) >> 32
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1415 + _15 + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1415 + _15 + (2 * ceil32(return_data.size)) + 160] + 32 <= return_data.size
            mem[_1415 + _15 + (4 * ceil32(return_data.size)) + 160] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1415 + _15 + (2 * ceil32(return_data.size)) + 160]
            _2759 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1415 + _15 + (2 * ceil32(return_data.size)) + 160]
            mem[_1415 + _15 + (4 * ceil32(return_data.size)) + 192 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1415 + _15 + (2 * ceil32(return_data.size)) + 160])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1415 + _15 + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1415 + _15 + (2 * ceil32(return_data.size)) + 160])]
            if not _2759 % 32:
                require ext_code.size(stor4)
                staticcall stor4.0x93f1a40b with:
                        gas gas_remaining wei
                       args arg1, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(_2735))
                staticcall address(_2735).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_2735))
                staticcall address(_2735).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[_2759 + _1415 + _15 + (4 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[32])
                mem[_2759 + _1415 + _15 + (4 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_2759 + _1415 + _15 + (4 * ceil32(return_data.size)) + 192] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[_2759 + _1415 + _15 + (4 * ceil32(return_data.size)) + 196] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2759 + _1415 + _15 + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2759 + _1415 + _15 + (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 288
                _3825 = mem[_2759 + _1415 + _15 + (4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2759 + _1415 + _15 + (4 * ceil32(return_data.size)) + 192] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2759 + _1415 + _15 + (4 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                mem[_2759 + _1415 + _15 + (6 * ceil32(return_data.size)) + 192] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2759 + _1415 + _15 + (4 * ceil32(return_data.size)) + 192]
                require ext_code.size(address(_3825))
                staticcall address(_3825).token0() with:
                        gas gas_remaining wei
            else:
                mem[floor32(_2759) + _1415 + _15 + (4 * ceil32(return_data.size)) + 192] = mem[floor32(_2759) + _1415 + _15 + (4 * ceil32(return_data.size)) + -(_2759 % 32) + 224 len _2759 % 32]
                require ext_code.size(stor4)
                staticcall stor4.0x93f1a40b with:
                        gas gas_remaining wei
                       args arg1, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(_2735))
                staticcall address(_2735).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_2735))
                staticcall address(_2735).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[floor32(_2759) + _1415 + _15 + (4 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
                mem[floor32(_2759) + _1415 + _15 + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[floor32(_2759) + _1415 + _15 + (4 * ceil32(return_data.size)) + 224] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[floor32(_2759) + _1415 + _15 + (4 * ceil32(return_data.size)) + 228] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(_2759) + _1415 + _15 + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(_2759) + _1415 + _15 + (6 * ceil32(return_data.size)) + 224
                require return_data.size >= 288
                _3841 = mem[floor32(_2759) + _1415 + _15 + (4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2759) + _1415 + _15 + (4 * ceil32(return_data.size)) + 224] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2759) + _1415 + _15 + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                mem[floor32(_2759) + _1415 + _15 + (6 * ceil32(return_data.size)) + 224] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2759) + _1415 + _15 + (4 * ceil32(return_data.size)) + 224]
                require ext_code.size(address(_3841))
                staticcall address(_3841).token0() with:
                        gas gas_remaining wei
        else:
            mem[floor32(_1415) + _15 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_1415) + _15 + (2 * ceil32(return_data.size)) + -(_1415 % 32) + 192 len _1415 % 32]
            require ext_code.size(address(_1395))
            staticcall address(_1395).0xd21220a7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            staticcall stor0.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[floor32(_1415) + _15 + (2 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[32])
            mem[floor32(_1415) + _15 + (2 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(stor1)
            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[floor32(_1415) + _15 + (2 * ceil32(return_data.size)) + 192] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[floor32(_1415) + _15 + (2 * ceil32(return_data.size)) + 196] = arg1
            require ext_code.size(stor4)
            staticcall stor4.0x1526fe27 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_1415) + _15 + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 288
            _2743 = mem[floor32(_1415) + _15 + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1415) + _15 + (2 * ceil32(return_data.size)) + 192] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1415) + _15 + (2 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
            mem[floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 192] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1415) + _15 + (2 * ceil32(return_data.size)) + 192]
            _2763 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1415) + _15 + (2 * ceil32(return_data.size)) + 192]
            mem[floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 224 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1415) + _15 + (2 * ceil32(return_data.size)) + 192])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1415) + _15 + (2 * ceil32(return_data.size)) + 224 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1415) + _15 + (2 * ceil32(return_data.size)) + 192])]
            if not _2763 % 32:
                require ext_code.size(stor4)
                staticcall stor4.0x93f1a40b with:
                        gas gas_remaining wei
                       args arg1, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(_2743))
                staticcall address(_2743).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_2743))
                staticcall address(_2743).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[_2763 + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
                mem[_2763 + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_2763 + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 224] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[_2763 + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 228] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2763 + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2763 + floor32(_1415) + _15 + (6 * ceil32(return_data.size)) + 224
                require return_data.size >= 288
                _3829 = mem[_2763 + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2763 + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 224] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2763 + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                mem[_2763 + floor32(_1415) + _15 + (6 * ceil32(return_data.size)) + 224] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2763 + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 224]
                require ext_code.size(address(_3829))
                staticcall address(_3829).token0() with:
                        gas gas_remaining wei
            else:
                mem[floor32(_2763) + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_2763) + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + -(_2763 % 32) + 256 len _2763 % 32]
                require ext_code.size(stor4)
                staticcall stor4.0x93f1a40b with:
                        gas gas_remaining wei
                       args arg1, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(_2743))
                staticcall address(_2743).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_2743))
                staticcall address(_2743).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[floor32(_2763) + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[32])
                mem[floor32(_2763) + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[floor32(_2763) + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 256] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[floor32(_2763) + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 260] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(_2763) + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(_2763) + floor32(_1415) + _15 + (6 * ceil32(return_data.size)) + 256
                require return_data.size >= 288
                _3844 = mem[floor32(_2763) + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2763) + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 256] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2763) + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                mem[floor32(_2763) + floor32(_1415) + _15 + (6 * ceil32(return_data.size)) + 256] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2763) + floor32(_1415) + _15 + (4 * ceil32(return_data.size)) + 256]
                require ext_code.size(address(_3844))
                staticcall address(_3844).token0() with:
                        gas gas_remaining wei
    else:
        mem[floor32(_15) + ceil32(return_data.size) + 128] = mem[floor32(_15) + ceil32(return_data.size) + -(_15 % 32) + 160 len _15 % 32]
        require ext_code.size(stor4)
        staticcall stor4.0x93f1a40b with:
                gas gas_remaining wei
               args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(_7))
        staticcall address(_7).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(address(_7))
        staticcall address(_7).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(stor2)
        staticcall stor2.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[floor32(_15) + ceil32(return_data.size) + 196] = Mask(112, 0, ext_call.return_data[32])
        mem[floor32(_15) + ceil32(return_data.size) + 228] = Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(stor1)
        staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_15) + ceil32(return_data.size) + 160] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
        mem[floor32(_15) + ceil32(return_data.size) + 164] = arg1
        require ext_code.size(stor4)
        staticcall stor4.0x1526fe27 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(_15) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(_15) + (2 * ceil32(return_data.size)) + 160
        require return_data.size >= 288
        _1405 = mem[floor32(_15) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32
        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
        require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_15) + ceil32(return_data.size) + 160] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_15) + ceil32(return_data.size) + 160] + 32 <= return_data.size
        mem[floor32(_15) + (2 * ceil32(return_data.size)) + 160] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_15) + ceil32(return_data.size) + 160]
        _1419 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_15) + ceil32(return_data.size) + 160]
        mem[floor32(_15) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_15) + ceil32(return_data.size) + 160])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_15) + ceil32(return_data.size) + 192 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_15) + ceil32(return_data.size) + 160])]
        if not _1419 % 32:
            require ext_code.size(address(_1405))
            staticcall address(_1405).0xd21220a7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            staticcall stor0.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[_1419 + floor32(_15) + (2 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[32])
            mem[_1419 + floor32(_15) + (2 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(stor1)
            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_1419 + floor32(_15) + (2 * ceil32(return_data.size)) + 192] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[_1419 + floor32(_15) + (2 * ceil32(return_data.size)) + 196] = arg1
            require ext_code.size(stor4)
            staticcall stor4.0x1526fe27 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1419 + floor32(_15) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 288
            _2739 = mem[_1419 + floor32(_15) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1419 + floor32(_15) + (2 * ceil32(return_data.size)) + 192] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1419 + floor32(_15) + (2 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
            mem[_1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 192] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1419 + floor32(_15) + (2 * ceil32(return_data.size)) + 192]
            _2761 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1419 + floor32(_15) + (2 * ceil32(return_data.size)) + 192]
            mem[_1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 224 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1419 + floor32(_15) + (2 * ceil32(return_data.size)) + 192])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1419 + floor32(_15) + (2 * ceil32(return_data.size)) + 224 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1419 + floor32(_15) + (2 * ceil32(return_data.size)) + 192])]
            if not _2761 % 32:
                require ext_code.size(stor4)
                staticcall stor4.0x93f1a40b with:
                        gas gas_remaining wei
                       args arg1, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(_2739))
                staticcall address(_2739).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_2739))
                staticcall address(_2739).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[_2761 + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
                mem[_2761 + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_2761 + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 224] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[_2761 + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 228] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2761 + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2761 + _1419 + floor32(_15) + (6 * ceil32(return_data.size)) + 224
                require return_data.size >= 288
                _3833 = mem[_2761 + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2761 + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 224] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2761 + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                mem[_2761 + _1419 + floor32(_15) + (6 * ceil32(return_data.size)) + 224] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2761 + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 224]
                require ext_code.size(address(_3833))
                staticcall address(_3833).token0() with:
                        gas gas_remaining wei
            else:
                mem[floor32(_2761) + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_2761) + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + -(_2761 % 32) + 256 len _2761 % 32]
                require ext_code.size(stor4)
                staticcall stor4.0x93f1a40b with:
                        gas gas_remaining wei
                       args arg1, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(_2739))
                staticcall address(_2739).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_2739))
                staticcall address(_2739).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[floor32(_2761) + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[32])
                mem[floor32(_2761) + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[floor32(_2761) + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 256] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[floor32(_2761) + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 260] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(_2761) + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(_2761) + _1419 + floor32(_15) + (6 * ceil32(return_data.size)) + 256
                require return_data.size >= 288
                _3847 = mem[floor32(_2761) + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2761) + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 256] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2761) + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                mem[floor32(_2761) + _1419 + floor32(_15) + (6 * ceil32(return_data.size)) + 256] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2761) + _1419 + floor32(_15) + (4 * ceil32(return_data.size)) + 256]
                require ext_code.size(address(_3847))
                staticcall address(_3847).token0() with:
                        gas gas_remaining wei
        else:
            mem[floor32(_1419) + floor32(_15) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_1419) + floor32(_15) + (2 * ceil32(return_data.size)) + -(_1419 % 32) + 224 len _1419 % 32]
            require ext_code.size(address(_1405))
            staticcall address(_1405).0xd21220a7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            staticcall stor0.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[floor32(_1419) + floor32(_15) + (2 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
            mem[floor32(_1419) + floor32(_15) + (2 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(stor1)
            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[floor32(_1419) + floor32(_15) + (2 * ceil32(return_data.size)) + 224] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[floor32(_1419) + floor32(_15) + (2 * ceil32(return_data.size)) + 228] = arg1
            require ext_code.size(stor4)
            staticcall stor4.0x1526fe27 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_1419) + floor32(_15) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 224
            require return_data.size >= 288
            _2746 = mem[floor32(_1419) + floor32(_15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1419) + floor32(_15) + (2 * ceil32(return_data.size)) + 224] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1419) + floor32(_15) + (2 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
            mem[floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 224] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1419) + floor32(_15) + (2 * ceil32(return_data.size)) + 224]
            _2764 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1419) + floor32(_15) + (2 * ceil32(return_data.size)) + 224]
            mem[floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 256 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1419) + floor32(_15) + (2 * ceil32(return_data.size)) + 224])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1419) + floor32(_15) + (2 * ceil32(return_data.size)) + 256 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1419) + floor32(_15) + (2 * ceil32(return_data.size)) + 224])]
            if not _2764 % 32:
                require ext_code.size(stor4)
                staticcall stor4.0x93f1a40b with:
                        gas gas_remaining wei
                       args arg1, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(_2746))
                staticcall address(_2746).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_2746))
                staticcall address(_2746).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[_2764 + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[32])
                mem[_2764 + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_2764 + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 256] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[_2764 + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 260] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2764 + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2764 + floor32(_1419) + floor32(_15) + (6 * ceil32(return_data.size)) + 256
                require return_data.size >= 288
                _3837 = mem[_2764 + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2764 + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 256] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2764 + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                mem[_2764 + floor32(_1419) + floor32(_15) + (6 * ceil32(return_data.size)) + 256] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2764 + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 256]
                require ext_code.size(address(_3837))
                staticcall address(_3837).token0() with:
                        gas gas_remaining wei
            else:
                mem[floor32(_2764) + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 256] = mem[floor32(_2764) + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + -(_2764 % 32) + 288 len _2764 % 32]
                require ext_code.size(stor4)
                staticcall stor4.0x93f1a40b with:
                        gas gas_remaining wei
                       args arg1, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(_2746))
                staticcall address(_2746).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_2746))
                staticcall address(_2746).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[floor32(_2764) + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[32])
                mem[floor32(_2764) + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[floor32(_2764) + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 288] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[floor32(_2764) + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 292] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(_2764) + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(_2764) + floor32(_1419) + floor32(_15) + (6 * ceil32(return_data.size)) + 288
                require return_data.size >= 288
                _3850 = mem[floor32(_2764) + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2764) + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 288] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2764) + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                mem[floor32(_2764) + floor32(_1419) + floor32(_15) + (6 * ceil32(return_data.size)) + 288] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2764) + floor32(_1419) + floor32(_15) + (4 * ceil32(return_data.size)) + 288]
                require ext_code.size(address(_3850))
                staticcall address(_3850).token0() with:
                        gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor1)
    staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18))
}

function apr(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor1)
    staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    staticcall stor3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[132] = Mask(112, 0, ext_call.return_data[0])
    mem[164] = Mask(112, 0, ext_call.return_data[32])
    require ext_code.size(stor1)
    staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    staticcall stor4.0xbdf32e63 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor4)
    staticcall stor4.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    if not arg1:
        _34 = mem[96 len 4], Mask(224, 32, arg1) >> 32
        require uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 <= 4294967296
        require uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 32 <= return_data.size
        require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 96] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 96] + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 96]
        _40 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 96]
        mem[ceil32(return_data.size) + 128 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 96])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 128 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 96])]
        if not _40 % 32:
            require ext_code.size(address(_34))
            staticcall address(_34).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(address(_34))
            staticcall address(_34).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            staticcall stor4.0x92ab723e with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3)
                staticcall stor3.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[_40 + ceil32(return_data.size) + 164] = Mask(112, 0, ext_call.return_data[0])
                mem[_40 + ceil32(return_data.size) + 196] = Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_40 + ceil32(return_data.size) + 128] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[_40 + ceil32(return_data.size) + 132] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_40 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _40 + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 288
                _1487 = mem[_40 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + _40 + ceil32(return_data.size) + 128] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + _40 + ceil32(return_data.size) + 128] + 32 <= return_data.size
                mem[_40 + (2 * ceil32(return_data.size)) + 128] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + _40 + ceil32(return_data.size) + 128]
                require ext_code.size(address(_1487))
                staticcall address(_1487).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_1487))
                staticcall address(_1487).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                staticcall stor4.0x92ab723e with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(stor2)
                    staticcall stor2.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(stor1)
                    staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (10^12 * ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + 1:
                        return (100 * 17520000 * ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / (10^12 * ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + 1 / 10^18)
        else:
            mem[floor32(_40) + ceil32(return_data.size) + 128] = mem[floor32(_40) + ceil32(return_data.size) + -(_40 % 32) + 160 len _40 % 32]
            require ext_code.size(address(_34))
            staticcall address(_34).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(address(_34))
            staticcall address(_34).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            staticcall stor4.0x92ab723e with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3)
                staticcall stor3.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[floor32(_40) + ceil32(return_data.size) + 196] = Mask(112, 0, ext_call.return_data[0])
                mem[floor32(_40) + ceil32(return_data.size) + 228] = Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[floor32(_40) + ceil32(return_data.size) + 160] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[floor32(_40) + ceil32(return_data.size) + 164] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(_40) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(_40) + (2 * ceil32(return_data.size)) + 160
                require return_data.size >= 288
                _1494 = mem[floor32(_40) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + floor32(_40) + ceil32(return_data.size) + 160] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + floor32(_40) + ceil32(return_data.size) + 160] + 32 <= return_data.size
                mem[floor32(_40) + (2 * ceil32(return_data.size)) + 160] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + floor32(_40) + ceil32(return_data.size) + 160]
                require ext_code.size(address(_1494))
                staticcall address(_1494).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_1494))
                staticcall address(_1494).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                staticcall stor4.0x92ab723e with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(stor2)
                    staticcall stor2.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(stor1)
                    staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (10^12 * ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + 1:
                        return (100 * 17520000 * ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / (10^12 * ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + 1 / 10^18)
    else:
        _31 = mem[96 len 4], Mask(224, 32, arg1) >> 32
        require uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 <= 4294967296
        require uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 32 <= return_data.size
        require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 96] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 96] + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 96]
        _39 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 96]
        mem[ceil32(return_data.size) + 128 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 96])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 128 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 96])]
        if not _39 % 32:
            require ext_code.size(address(_31))
            staticcall address(_31).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(address(_31))
            staticcall address(_31).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            staticcall stor4.0x92ab723e with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[_39 + ceil32(return_data.size) + 164] = Mask(112, 0, ext_call.return_data[32])
                mem[_39 + ceil32(return_data.size) + 196] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_39 + ceil32(return_data.size) + 128] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[_39 + ceil32(return_data.size) + 132] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_39 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _39 + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 288
                _1399 = mem[_39 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _39 + ceil32(return_data.size) + 128] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _39 + ceil32(return_data.size) + 128] + 32 <= return_data.size
                mem[_39 + (2 * ceil32(return_data.size)) + 128] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _39 + ceil32(return_data.size) + 128]
                _1419 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _39 + ceil32(return_data.size) + 128]
                mem[_39 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _39 + ceil32(return_data.size) + 128])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _39 + ceil32(return_data.size) + 160 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _39 + ceil32(return_data.size) + 128])]
                if not _1419 % 32:
                    require ext_code.size(address(_1399))
                    staticcall address(_1399).0xd21220a7 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    staticcall stor0.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_1419 + _39 + (2 * ceil32(return_data.size)) + 196] = Mask(112, 0, ext_call.return_data[32])
                    mem[_1419 + _39 + (2 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[0])
                    require ext_code.size(stor1)
                    staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1419 + _39 + (2 * ceil32(return_data.size)) + 160] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                    mem[_1419 + _39 + (2 * ceil32(return_data.size)) + 164] = arg1
                    require ext_code.size(stor4)
                    staticcall stor4.0x1526fe27 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1419 + _39 + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1419 + _39 + (4 * ceil32(return_data.size)) + 160
                    require return_data.size >= 288
                    _2723 = mem[_1419 + _39 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg1) >> 32
                    require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                    require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                    require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1419 + _39 + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1419 + _39 + (2 * ceil32(return_data.size)) + 160] + 32 <= return_data.size
                    mem[_1419 + _39 + (4 * ceil32(return_data.size)) + 160] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1419 + _39 + (2 * ceil32(return_data.size)) + 160]
                    _2739 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1419 + _39 + (2 * ceil32(return_data.size)) + 160]
                    mem[_1419 + _39 + (4 * ceil32(return_data.size)) + 192 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1419 + _39 + (2 * ceil32(return_data.size)) + 160])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1419 + _39 + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1419 + _39 + (2 * ceil32(return_data.size)) + 160])]
                    if not _2739 % 32:
                        require ext_code.size(address(_2723))
                        staticcall address(_2723).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_2723))
                        staticcall address(_2723).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        staticcall stor4.0x92ab723e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(stor2)
                            staticcall stor2.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[_2739 + _1419 + _39 + (4 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[32])
                            mem[_2739 + _1419 + _39 + (4 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_2739 + _1419 + _39 + (4 * ceil32(return_data.size)) + 192] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[_2739 + _1419 + _39 + (4 * ceil32(return_data.size)) + 196] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2739 + _1419 + _39 + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _2739 + _1419 + _39 + (6 * ceil32(return_data.size)) + 192
                            require return_data.size >= 288
                            _3797 = mem[_2739 + _1419 + _39 + (4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2739 + _1419 + _39 + (4 * ceil32(return_data.size)) + 192] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2739 + _1419 + _39 + (4 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                            mem[_2739 + _1419 + _39 + (6 * ceil32(return_data.size)) + 192] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2739 + _1419 + _39 + (4 * ceil32(return_data.size)) + 192]
                            require ext_code.size(address(_3797))
                            staticcall address(_3797).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + 1:
                                return (100 * 17520000 * ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + 1 / 10^18)
                    else:
                        mem[floor32(_2739) + _1419 + _39 + (4 * ceil32(return_data.size)) + 192] = mem[floor32(_2739) + _1419 + _39 + (4 * ceil32(return_data.size)) + -(_2739 % 32) + 224 len _2739 % 32]
                        require ext_code.size(address(_2723))
                        staticcall address(_2723).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_2723))
                        staticcall address(_2723).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        staticcall stor4.0x92ab723e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(stor2)
                            staticcall stor2.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[floor32(_2739) + _1419 + _39 + (4 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
                            mem[floor32(_2739) + _1419 + _39 + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[floor32(_2739) + _1419 + _39 + (4 * ceil32(return_data.size)) + 224] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[floor32(_2739) + _1419 + _39 + (4 * ceil32(return_data.size)) + 228] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_2739) + _1419 + _39 + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_2739) + _1419 + _39 + (6 * ceil32(return_data.size)) + 224
                            require return_data.size >= 288
                            _3813 = mem[floor32(_2739) + _1419 + _39 + (4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2739) + _1419 + _39 + (4 * ceil32(return_data.size)) + 224] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2739) + _1419 + _39 + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                            mem[floor32(_2739) + _1419 + _39 + (6 * ceil32(return_data.size)) + 224] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2739) + _1419 + _39 + (4 * ceil32(return_data.size)) + 224]
                            require ext_code.size(address(_3813))
                            staticcall address(_3813).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + 1:
                                return (100 * 17520000 * ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + 1 / 10^18)
                else:
                    mem[floor32(_1419) + _39 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_1419) + _39 + (2 * ceil32(return_data.size)) + -(_1419 % 32) + 192 len _1419 % 32]
                    require ext_code.size(address(_1399))
                    staticcall address(_1399).0xd21220a7 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    staticcall stor0.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[floor32(_1419) + _39 + (2 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[32])
                    mem[floor32(_1419) + _39 + (2 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[0])
                    require ext_code.size(stor1)
                    staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[floor32(_1419) + _39 + (2 * ceil32(return_data.size)) + 192] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                    mem[floor32(_1419) + _39 + (2 * ceil32(return_data.size)) + 196] = arg1
                    require ext_code.size(stor4)
                    staticcall stor4.0x1526fe27 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[floor32(_1419) + _39 + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 288
                    _2731 = mem[floor32(_1419) + _39 + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                    require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                    require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                    require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1419) + _39 + (2 * ceil32(return_data.size)) + 192] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1419) + _39 + (2 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                    mem[floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 192] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1419) + _39 + (2 * ceil32(return_data.size)) + 192]
                    _2743 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1419) + _39 + (2 * ceil32(return_data.size)) + 192]
                    mem[floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 224 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1419) + _39 + (2 * ceil32(return_data.size)) + 192])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1419) + _39 + (2 * ceil32(return_data.size)) + 224 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1419) + _39 + (2 * ceil32(return_data.size)) + 192])]
                    if not _2743 % 32:
                        require ext_code.size(address(_2731))
                        staticcall address(_2731).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_2731))
                        staticcall address(_2731).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        staticcall stor4.0x92ab723e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(stor2)
                            staticcall stor2.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[_2743 + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
                            mem[_2743 + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_2743 + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 224] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[_2743 + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 228] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2743 + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _2743 + floor32(_1419) + _39 + (6 * ceil32(return_data.size)) + 224
                            require return_data.size >= 288
                            _3801 = mem[_2743 + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2743 + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 224] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2743 + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                            mem[_2743 + floor32(_1419) + _39 + (6 * ceil32(return_data.size)) + 224] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2743 + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 224]
                            require ext_code.size(address(_3801))
                            staticcall address(_3801).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + 1:
                                return (100 * 17520000 * ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + 1 / 10^18)
                    else:
                        mem[floor32(_2743) + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_2743) + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + -(_2743 % 32) + 256 len _2743 % 32]
                        require ext_code.size(address(_2731))
                        staticcall address(_2731).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_2731))
                        staticcall address(_2731).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        staticcall stor4.0x92ab723e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(stor2)
                            staticcall stor2.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[floor32(_2743) + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[32])
                            mem[floor32(_2743) + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[floor32(_2743) + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 256] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[floor32(_2743) + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 260] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_2743) + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_2743) + floor32(_1419) + _39 + (6 * ceil32(return_data.size)) + 256
                            require return_data.size >= 288
                            _3816 = mem[floor32(_2743) + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2743) + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 256] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2743) + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            mem[floor32(_2743) + floor32(_1419) + _39 + (6 * ceil32(return_data.size)) + 256] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2743) + floor32(_1419) + _39 + (4 * ceil32(return_data.size)) + 256]
                            require ext_code.size(address(_3816))
                            staticcall address(_3816).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + 1:
                                return (100 * 17520000 * ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + 1 / 10^18)
        else:
            mem[floor32(_39) + ceil32(return_data.size) + 128] = mem[floor32(_39) + ceil32(return_data.size) + -(_39 % 32) + 160 len _39 % 32]
            require ext_code.size(address(_31))
            staticcall address(_31).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(address(_31))
            staticcall address(_31).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            staticcall stor4.0x92ab723e with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[floor32(_39) + ceil32(return_data.size) + 196] = Mask(112, 0, ext_call.return_data[32])
                mem[floor32(_39) + ceil32(return_data.size) + 228] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(stor1)
                staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[floor32(_39) + ceil32(return_data.size) + 160] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[floor32(_39) + ceil32(return_data.size) + 164] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(_39) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(_39) + (2 * ceil32(return_data.size)) + 160
                require return_data.size >= 288
                _1409 = mem[floor32(_39) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_39) + ceil32(return_data.size) + 160] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_39) + ceil32(return_data.size) + 160] + 32 <= return_data.size
                mem[floor32(_39) + (2 * ceil32(return_data.size)) + 160] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_39) + ceil32(return_data.size) + 160]
                _1423 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_39) + ceil32(return_data.size) + 160]
                mem[floor32(_39) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_39) + ceil32(return_data.size) + 160])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_39) + ceil32(return_data.size) + 192 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_39) + ceil32(return_data.size) + 160])]
                if not _1423 % 32:
                    require ext_code.size(address(_1409))
                    staticcall address(_1409).0xd21220a7 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    staticcall stor0.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_1423 + floor32(_39) + (2 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[32])
                    mem[_1423 + floor32(_39) + (2 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[0])
                    require ext_code.size(stor1)
                    staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1423 + floor32(_39) + (2 * ceil32(return_data.size)) + 192] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                    mem[_1423 + floor32(_39) + (2 * ceil32(return_data.size)) + 196] = arg1
                    require ext_code.size(stor4)
                    staticcall stor4.0x1526fe27 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1423 + floor32(_39) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 288
                    _2727 = mem[_1423 + floor32(_39) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                    require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                    require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                    require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1423 + floor32(_39) + (2 * ceil32(return_data.size)) + 192] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1423 + floor32(_39) + (2 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                    mem[_1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 192] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1423 + floor32(_39) + (2 * ceil32(return_data.size)) + 192]
                    _2741 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1423 + floor32(_39) + (2 * ceil32(return_data.size)) + 192]
                    mem[_1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 224 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1423 + floor32(_39) + (2 * ceil32(return_data.size)) + 192])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1423 + floor32(_39) + (2 * ceil32(return_data.size)) + 224 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _1423 + floor32(_39) + (2 * ceil32(return_data.size)) + 192])]
                    if not _2741 % 32:
                        require ext_code.size(address(_2727))
                        staticcall address(_2727).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_2727))
                        staticcall address(_2727).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        staticcall stor4.0x92ab723e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(stor2)
                            staticcall stor2.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[_2741 + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
                            mem[_2741 + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_2741 + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 224] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[_2741 + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 228] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2741 + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _2741 + _1423 + floor32(_39) + (6 * ceil32(return_data.size)) + 224
                            require return_data.size >= 288
                            _3805 = mem[_2741 + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2741 + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 224] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2741 + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                            mem[_2741 + _1423 + floor32(_39) + (6 * ceil32(return_data.size)) + 224] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2741 + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 224]
                            require ext_code.size(address(_3805))
                            staticcall address(_3805).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + 1:
                                return (100 * 17520000 * ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + 1 / 10^18)
                    else:
                        mem[floor32(_2741) + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_2741) + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + -(_2741 % 32) + 256 len _2741 % 32]
                        require ext_code.size(address(_2727))
                        staticcall address(_2727).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_2727))
                        staticcall address(_2727).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        staticcall stor4.0x92ab723e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(stor2)
                            staticcall stor2.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[floor32(_2741) + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[32])
                            mem[floor32(_2741) + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[floor32(_2741) + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 256] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[floor32(_2741) + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 260] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_2741) + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_2741) + _1423 + floor32(_39) + (6 * ceil32(return_data.size)) + 256
                            require return_data.size >= 288
                            _3819 = mem[floor32(_2741) + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2741) + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 256] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2741) + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            mem[floor32(_2741) + _1423 + floor32(_39) + (6 * ceil32(return_data.size)) + 256] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2741) + _1423 + floor32(_39) + (4 * ceil32(return_data.size)) + 256]
                            require ext_code.size(address(_3819))
                            staticcall address(_3819).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + 1:
                                return (100 * 17520000 * ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + 1 / 10^18)
                else:
                    mem[floor32(_1423) + floor32(_39) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_1423) + floor32(_39) + (2 * ceil32(return_data.size)) + -(_1423 % 32) + 224 len _1423 % 32]
                    require ext_code.size(address(_1409))
                    staticcall address(_1409).0xd21220a7 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    staticcall stor0.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[floor32(_1423) + floor32(_39) + (2 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
                    mem[floor32(_1423) + floor32(_39) + (2 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[0])
                    require ext_code.size(stor1)
                    staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[floor32(_1423) + floor32(_39) + (2 * ceil32(return_data.size)) + 224] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                    mem[floor32(_1423) + floor32(_39) + (2 * ceil32(return_data.size)) + 228] = arg1
                    require ext_code.size(stor4)
                    staticcall stor4.0x1526fe27 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[floor32(_1423) + floor32(_39) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 288
                    _2734 = mem[floor32(_1423) + floor32(_39) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
                    require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                    require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                    require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1423) + floor32(_39) + (2 * ceil32(return_data.size)) + 224] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1423) + floor32(_39) + (2 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                    mem[floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 224] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1423) + floor32(_39) + (2 * ceil32(return_data.size)) + 224]
                    _2744 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1423) + floor32(_39) + (2 * ceil32(return_data.size)) + 224]
                    mem[floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 256 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1423) + floor32(_39) + (2 * ceil32(return_data.size)) + 224])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1423) + floor32(_39) + (2 * ceil32(return_data.size)) + 256 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_1423) + floor32(_39) + (2 * ceil32(return_data.size)) + 224])]
                    if not _2744 % 32:
                        require ext_code.size(address(_2734))
                        staticcall address(_2734).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_2734))
                        staticcall address(_2734).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        staticcall stor4.0x92ab723e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(stor2)
                            staticcall stor2.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[_2744 + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[32])
                            mem[_2744 + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_2744 + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 256] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[_2744 + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 260] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2744 + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _2744 + floor32(_1423) + floor32(_39) + (6 * ceil32(return_data.size)) + 256
                            require return_data.size >= 288
                            _3809 = mem[_2744 + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2744 + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 256] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2744 + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            mem[_2744 + floor32(_1423) + floor32(_39) + (6 * ceil32(return_data.size)) + 256] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _2744 + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 256]
                            require ext_code.size(address(_3809))
                            staticcall address(_3809).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + 1:
                                return (100 * 17520000 * ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + 1 / 10^18)
                    else:
                        mem[floor32(_2744) + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 256] = mem[floor32(_2744) + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + -(_2744 % 32) + 288 len _2744 % 32]
                        require ext_code.size(address(_2734))
                        staticcall address(_2734).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_2734))
                        staticcall address(_2734).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        staticcall stor4.0x92ab723e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(stor2)
                            staticcall stor2.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[floor32(_2744) + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[32])
                            mem[floor32(_2744) + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[floor32(_2744) + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 288] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[floor32(_2744) + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 292] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_2744) + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_2744) + floor32(_1423) + floor32(_39) + (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 288
                            _3822 = mem[floor32(_2744) + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2744) + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 288] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2744) + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                            mem[floor32(_2744) + floor32(_1423) + floor32(_39) + (6 * ceil32(return_data.size)) + 288] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_2744) + floor32(_1423) + floor32(_39) + (4 * ceil32(return_data.size)) + 288]
                            require ext_code.size(address(_3822))
                            staticcall address(_3822).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + 1:
                                return (100 * 17520000 * ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / (10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18) + (10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^18) + 1 / 10^18)
    revert
}

function dollariPerUnita(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not arg1:
        require ext_code.size(stor1)
        staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        staticcall stor3.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[132] = Mask(112, 0, ext_call.return_data[0])
        mem[164] = Mask(112, 0, ext_call.return_data[32])
        require ext_code.size(stor1)
        staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor4)
        staticcall stor4.0x1526fe27 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 288
        _70 = mem[96 len 4], Mask(224, 32, arg1) >> 32
        require uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 <= 4294967296
        require uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 32 <= return_data.size
        require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 96] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 96] + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 96]
        _80 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 96]
        mem[ceil32(return_data.size) + 128 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 96])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 128 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[0]) << 112 + 96])]
        if not _80 % 32:
            require ext_code.size(address(_70))
            staticcall address(_70).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_80 + ceil32(return_data.size) + 128] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[_80 + ceil32(return_data.size) + 132] = arg1
            require ext_code.size(stor4)
            staticcall stor4.0x1526fe27 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_80 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _80 + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 288
            _2828 = mem[_80 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32
            _2829 = uint32(arg1), mem[_80 + ceil32(return_data.size) + 164 len 28]
            require uint32(arg1), mem[_80 + ceil32(return_data.size) + 164 len 28] <= 4294967296
            require uint32(arg1), mem[_80 + ceil32(return_data.size) + 164 len 28] + 32 <= return_data.size
            require mem[uint32(arg1), mem[_80 + ceil32(return_data.size) + 164 len 28] + _80 + ceil32(return_data.size) + 128] <= 4294967296 and uint32(arg1), mem[_80 + ceil32(return_data.size) + 164 len 28] + mem[uint32(arg1), mem[_80 + ceil32(return_data.size) + 164 len 28] + _80 + ceil32(return_data.size) + 128] + 32 <= return_data.size
            mem[_80 + (2 * ceil32(return_data.size)) + 128] = mem[uint32(arg1), mem[_80 + ceil32(return_data.size) + 164 len 28] + _80 + ceil32(return_data.size) + 128]
            require ext_code.size(address(_2828))
            staticcall address(_2828).getReserves() with:
                    gas gas_remaining wei
        else:
            mem[floor32(_80) + ceil32(return_data.size) + 128] = mem[floor32(_80) + ceil32(return_data.size) + -(_80 % 32) + 160 len _80 % 32]
            require ext_code.size(address(_70))
            staticcall address(_70).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[floor32(_80) + ceil32(return_data.size) + 160] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[floor32(_80) + ceil32(return_data.size) + 164] = arg1
            require ext_code.size(stor4)
            staticcall stor4.0x1526fe27 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_80) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_80) + (2 * ceil32(return_data.size)) + 160
            require return_data.size >= 288
            _2833 = mem[floor32(_80) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32
            _2834 = uint32(arg1), mem[floor32(_80) + ceil32(return_data.size) + 196 len 28]
            require uint32(arg1), mem[floor32(_80) + ceil32(return_data.size) + 196 len 28] <= 4294967296
            require uint32(arg1), mem[floor32(_80) + ceil32(return_data.size) + 196 len 28] + 32 <= return_data.size
            require mem[uint32(arg1), mem[floor32(_80) + ceil32(return_data.size) + 196 len 28] + floor32(_80) + ceil32(return_data.size) + 160] <= 4294967296 and uint32(arg1), mem[floor32(_80) + ceil32(return_data.size) + 196 len 28] + mem[uint32(arg1), mem[floor32(_80) + ceil32(return_data.size) + 196 len 28] + floor32(_80) + ceil32(return_data.size) + 160] + 32 <= return_data.size
            mem[floor32(_80) + (2 * ceil32(return_data.size)) + 160] = mem[uint32(arg1), mem[floor32(_80) + ceil32(return_data.size) + 196 len 28] + floor32(_80) + ceil32(return_data.size) + 160]
            require ext_code.size(address(_2833))
            staticcall address(_2833).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0]:
            return (2 * 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18)
    else:
        mem[132] = Mask(112, 0, ext_call.return_data[32])
        mem[164] = Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(stor1)
        staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor4)
        staticcall stor4.0x1526fe27 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 288
        _27 = mem[96 len 4], Mask(224, 32, arg1) >> 32
        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
        require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 96] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 96] + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 96]
        _37 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 96]
        mem[ceil32(return_data.size) + 128 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 96])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 128 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 96])]
        if not _37 % 32:
            require ext_code.size(address(_27))
            staticcall address(_27).0xd21220a7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            staticcall stor0.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[_37 + ceil32(return_data.size) + 164] = Mask(112, 0, ext_call.return_data[32])
            mem[_37 + ceil32(return_data.size) + 196] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(stor1)
            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_37 + ceil32(return_data.size) + 128] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[_37 + ceil32(return_data.size) + 132] = arg1
            require ext_code.size(stor4)
            staticcall stor4.0x1526fe27 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_37 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _37 + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 288
            _2916 = mem[_37 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _37 + ceil32(return_data.size) + 128] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _37 + ceil32(return_data.size) + 128] + 32 <= return_data.size
            mem[_37 + (2 * ceil32(return_data.size)) + 128] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _37 + ceil32(return_data.size) + 128]
            _2926 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _37 + ceil32(return_data.size) + 128]
            mem[_37 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _37 + ceil32(return_data.size) + 128])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _37 + ceil32(return_data.size) + 160 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _37 + ceil32(return_data.size) + 128])]
            if not _2926 % 32:
                require ext_code.size(address(_2916))
                staticcall address(_2916).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_2926 + _37 + (2 * ceil32(return_data.size)) + 160] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[_2926 + _37 + (2 * ceil32(return_data.size)) + 164] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2926 + _37 + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2926 + _37 + (4 * ceil32(return_data.size)) + 160
                require return_data.size >= 288
                _5593 = mem[_2926 + _37 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg1) >> 32
                _5594 = uint32(arg1), mem[_2926 + _37 + (2 * ceil32(return_data.size)) + 196 len 28]
                require uint32(arg1), mem[_2926 + _37 + (2 * ceil32(return_data.size)) + 196 len 28] <= 4294967296
                require uint32(arg1), mem[_2926 + _37 + (2 * ceil32(return_data.size)) + 196 len 28] + 32 <= return_data.size
                require mem[uint32(arg1), mem[_2926 + _37 + (2 * ceil32(return_data.size)) + 196 len 28] + _2926 + _37 + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and uint32(arg1), mem[_2926 + _37 + (2 * ceil32(return_data.size)) + 196 len 28] + mem[uint32(arg1), mem[_2926 + _37 + (2 * ceil32(return_data.size)) + 196 len 28] + _2926 + _37 + (2 * ceil32(return_data.size)) + 160] + 32 <= return_data.size
                mem[_2926 + _37 + (4 * ceil32(return_data.size)) + 160] = mem[uint32(arg1), mem[_2926 + _37 + (2 * ceil32(return_data.size)) + 196 len 28] + _2926 + _37 + (2 * ceil32(return_data.size)) + 160]
                _5617 = mem[_5594 + _2926 + _37 + (2 * ceil32(return_data.size)) + 160]
                mem[_2926 + _37 + (4 * ceil32(return_data.size)) + 192 len ceil32(mem[_5594 + _2926 + _37 + (2 * ceil32(return_data.size)) + 160])] = mem[_5594 + _2926 + _37 + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_5594 + _2926 + _37 + (2 * ceil32(return_data.size)) + 160])]
                if not _5617 % 32:
                    require ext_code.size(address(_5593))
                    staticcall address(_5593).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if ext_call.return_data[0]:
                        require ext_code.size(stor2)
                        staticcall stor2.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[_5617 + _2926 + _37 + (4 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[32])
                        mem[_5617 + _2926 + _37 + (4 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(stor1)
                        staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_5617 + _2926 + _37 + (4 * ceil32(return_data.size)) + 192] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                        mem[_5617 + _2926 + _37 + (4 * ceil32(return_data.size)) + 196] = arg1
                        require ext_code.size(stor4)
                        staticcall stor4.0x1526fe27 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5617 + _2926 + _37 + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 192
                        require return_data.size >= 288
                        _8299 = mem[_5617 + _2926 + _37 + (4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                        require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5617 + _2926 + _37 + (4 * ceil32(return_data.size)) + 192] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5617 + _2926 + _37 + (4 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                        mem[_5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 192] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5617 + _2926 + _37 + (4 * ceil32(return_data.size)) + 192]
                        _8331 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5617 + _2926 + _37 + (4 * ceil32(return_data.size)) + 192]
                        mem[_5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 224 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5617 + _2926 + _37 + (4 * ceil32(return_data.size)) + 192])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5617 + _2926 + _37 + (4 * ceil32(return_data.size)) + 224 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5617 + _2926 + _37 + (4 * ceil32(return_data.size)) + 192])]
                        if not _8331 % 32:
                            require ext_code.size(address(_8299))
                            staticcall address(_8299).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[_8331 + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
                            mem[_8331 + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_8331 + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 224] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[_8331 + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 228] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8331 + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 224
                            require return_data.size >= 288
                            _11007 = mem[_8331 + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8331 + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 224] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8331 + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                            mem[_8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 224] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8331 + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 224]
                            _11071 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8331 + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 224]
                            mem[_8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 256 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8331 + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 224])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8331 + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 256 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8331 + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 224])]
                            if not _11071 % 32:
                                require ext_code.size(address(_11007))
                                staticcall address(_11007).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_11071 + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 256] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[_11071 + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 260] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_11071 + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _11071 + _8331 + _5617 + _2926 + _37 + (8 * ceil32(return_data.size)) + 256
                                require return_data.size >= 288
                                _13223 = mem[_11071 + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32
                                _13224 = uint32(arg1), mem[_11071 + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 292 len 28]
                                require uint32(arg1), mem[_11071 + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 292 len 28] <= 4294967296
                                require uint32(arg1), mem[_11071 + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 292 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[_11071 + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 292 len 28] + _11071 + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 256] <= 4294967296 and uint32(arg1), mem[_11071 + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 292 len 28] + mem[uint32(arg1), mem[_11071 + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 292 len 28] + _11071 + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                                mem[_11071 + _8331 + _5617 + _2926 + _37 + (8 * ceil32(return_data.size)) + 256] = mem[uint32(arg1), mem[_11071 + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 292 len 28] + _11071 + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 256]
                                require ext_code.size(address(_13223))
                                staticcall address(_13223).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[floor32(_11071) + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 256] = mem[floor32(_11071) + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + -(_11071 % 32) + 288 len _11071 % 32]
                                require ext_code.size(address(_11007))
                                staticcall address(_11007).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[floor32(_11071) + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 288] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[floor32(_11071) + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 292] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[floor32(_11071) + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = floor32(_11071) + _8331 + _5617 + _2926 + _37 + (8 * ceil32(return_data.size)) + 288
                                require return_data.size >= 288
                                _13287 = mem[floor32(_11071) + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                                _13288 = uint32(arg1), mem[floor32(_11071) + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28]
                                require uint32(arg1), mem[floor32(_11071) + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28] <= 4294967296
                                require uint32(arg1), mem[floor32(_11071) + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[floor32(_11071) + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + floor32(_11071) + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 288] <= 4294967296 and uint32(arg1), mem[floor32(_11071) + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + mem[uint32(arg1), mem[floor32(_11071) + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + floor32(_11071) + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                                mem[floor32(_11071) + _8331 + _5617 + _2926 + _37 + (8 * ceil32(return_data.size)) + 288] = mem[uint32(arg1), mem[floor32(_11071) + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + floor32(_11071) + _8331 + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 288]
                                require ext_code.size(address(_13287))
                                staticcall address(_13287).getReserves() with:
                                        gas gas_remaining wei
                        else:
                            mem[floor32(_8331) + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 224] = mem[floor32(_8331) + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + -(_8331 % 32) + 256 len _8331 % 32]
                            require ext_code.size(address(_8299))
                            staticcall address(_8299).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[floor32(_8331) + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[32])
                            mem[floor32(_8331) + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[floor32(_8331) + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 256] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[floor32(_8331) + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 260] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8331) + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 256
                            require return_data.size >= 288
                            _11039 = mem[floor32(_8331) + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8331) + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 256] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8331) + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            mem[floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 256] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8331) + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 256]
                            _11087 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8331) + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 256]
                            mem[floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 288 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8331) + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 256])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8331) + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8331) + _5617 + _2926 + _37 + (6 * ceil32(return_data.size)) + 256])]
                            if not _11087 % 32:
                                require ext_code.size(address(_11039))
                                staticcall address(_11039).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_11087 + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 288] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[_11087 + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 292] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_11087 + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _11087 + floor32(_8331) + _5617 + _2926 + _37 + (8 * ceil32(return_data.size)) + 288
                                require return_data.size >= 288
                                _13227 = mem[_11087 + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                                _13228 = uint32(arg1), mem[_11087 + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28]
                                require uint32(arg1), mem[_11087 + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28] <= 4294967296
                                require uint32(arg1), mem[_11087 + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[_11087 + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + _11087 + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 288] <= 4294967296 and uint32(arg1), mem[_11087 + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + mem[uint32(arg1), mem[_11087 + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + _11087 + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                                mem[_11087 + floor32(_8331) + _5617 + _2926 + _37 + (8 * ceil32(return_data.size)) + 288] = mem[uint32(arg1), mem[_11087 + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + _11087 + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 288]
                                require ext_code.size(address(_13227))
                                staticcall address(_13227).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[floor32(_11087) + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 288] = mem[floor32(_11087) + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + -(_11087 % 32) + 320 len _11087 % 32]
                                require ext_code.size(address(_11039))
                                staticcall address(_11039).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[floor32(_11087) + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 320] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[floor32(_11087) + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 324] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[floor32(_11087) + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = floor32(_11087) + floor32(_8331) + _5617 + _2926 + _37 + (8 * ceil32(return_data.size)) + 320
                                require return_data.size >= 288
                                _13290 = mem[floor32(_11087) + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg1) >> 32
                                _13291 = uint32(arg1), mem[floor32(_11087) + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28]
                                require uint32(arg1), mem[floor32(_11087) + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28] <= 4294967296
                                require uint32(arg1), mem[floor32(_11087) + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[floor32(_11087) + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + floor32(_11087) + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 320] <= 4294967296 and uint32(arg1), mem[floor32(_11087) + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + mem[uint32(arg1), mem[floor32(_11087) + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + floor32(_11087) + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 320] + 32 <= return_data.size
                                mem[floor32(_11087) + floor32(_8331) + _5617 + _2926 + _37 + (8 * ceil32(return_data.size)) + 320] = mem[uint32(arg1), mem[floor32(_11087) + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + floor32(_11087) + floor32(_8331) + _5617 + _2926 + _37 + (7 * ceil32(return_data.size)) + 320]
                                require ext_code.size(address(_13290))
                                staticcall address(_13290).getReserves() with:
                                        gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if ext_call.return_data[0]:
                            return ((10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * 10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 / 10^18))
                else:
                    mem[floor32(_5617) + _2926 + _37 + (4 * ceil32(return_data.size)) + 192] = mem[floor32(_5617) + _2926 + _37 + (4 * ceil32(return_data.size)) + -(_5617 % 32) + 224 len _5617 % 32]
                    require ext_code.size(address(_5593))
                    staticcall address(_5593).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if ext_call.return_data[0]:
                        require ext_code.size(stor2)
                        staticcall stor2.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[floor32(_5617) + _2926 + _37 + (4 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
                        mem[floor32(_5617) + _2926 + _37 + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(stor1)
                        staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[floor32(_5617) + _2926 + _37 + (4 * ceil32(return_data.size)) + 224] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                        mem[floor32(_5617) + _2926 + _37 + (4 * ceil32(return_data.size)) + 228] = arg1
                        require ext_code.size(stor4)
                        staticcall stor4.0x1526fe27 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_5617) + _2926 + _37 + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 224
                        require return_data.size >= 288
                        _8315 = mem[floor32(_5617) + _2926 + _37 + (4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
                        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                        require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5617) + _2926 + _37 + (4 * ceil32(return_data.size)) + 224] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5617) + _2926 + _37 + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                        mem[floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 224] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5617) + _2926 + _37 + (4 * ceil32(return_data.size)) + 224]
                        _8339 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5617) + _2926 + _37 + (4 * ceil32(return_data.size)) + 224]
                        mem[floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 256 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5617) + _2926 + _37 + (4 * ceil32(return_data.size)) + 224])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5617) + _2926 + _37 + (4 * ceil32(return_data.size)) + 256 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5617) + _2926 + _37 + (4 * ceil32(return_data.size)) + 224])]
                        if not _8339 % 32:
                            require ext_code.size(address(_8315))
                            staticcall address(_8315).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[_8339 + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[32])
                            mem[_8339 + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_8339 + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 256] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[_8339 + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 260] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8339 + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 256
                            require return_data.size >= 288
                            _11011 = mem[_8339 + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8339 + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 256] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8339 + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            mem[_8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 256] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8339 + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 256]
                            _11073 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8339 + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 256]
                            mem[_8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 288 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8339 + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 256])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8339 + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8339 + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 256])]
                            if not _11073 % 32:
                                require ext_code.size(address(_11011))
                                staticcall address(_11011).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_11073 + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 288] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[_11073 + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 292] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_11073 + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _11073 + _8339 + floor32(_5617) + _2926 + _37 + (8 * ceil32(return_data.size)) + 288
                                require return_data.size >= 288
                                _13231 = mem[_11073 + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                                _13232 = uint32(arg1), mem[_11073 + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28]
                                require uint32(arg1), mem[_11073 + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28] <= 4294967296
                                require uint32(arg1), mem[_11073 + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[_11073 + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + _11073 + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 288] <= 4294967296 and uint32(arg1), mem[_11073 + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + mem[uint32(arg1), mem[_11073 + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + _11073 + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                                mem[_11073 + _8339 + floor32(_5617) + _2926 + _37 + (8 * ceil32(return_data.size)) + 288] = mem[uint32(arg1), mem[_11073 + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + _11073 + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 288]
                                require ext_code.size(address(_13231))
                                staticcall address(_13231).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[floor32(_11073) + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 288] = mem[floor32(_11073) + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + -(_11073 % 32) + 320 len _11073 % 32]
                                require ext_code.size(address(_11011))
                                staticcall address(_11011).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[floor32(_11073) + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 320] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[floor32(_11073) + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 324] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[floor32(_11073) + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = floor32(_11073) + _8339 + floor32(_5617) + _2926 + _37 + (8 * ceil32(return_data.size)) + 320
                                require return_data.size >= 288
                                _13293 = mem[floor32(_11073) + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg1) >> 32
                                _13294 = uint32(arg1), mem[floor32(_11073) + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28]
                                require uint32(arg1), mem[floor32(_11073) + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28] <= 4294967296
                                require uint32(arg1), mem[floor32(_11073) + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[floor32(_11073) + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + floor32(_11073) + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 320] <= 4294967296 and uint32(arg1), mem[floor32(_11073) + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + mem[uint32(arg1), mem[floor32(_11073) + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + floor32(_11073) + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 320] + 32 <= return_data.size
                                mem[floor32(_11073) + _8339 + floor32(_5617) + _2926 + _37 + (8 * ceil32(return_data.size)) + 320] = mem[uint32(arg1), mem[floor32(_11073) + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + floor32(_11073) + _8339 + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 320]
                                require ext_code.size(address(_13293))
                                staticcall address(_13293).getReserves() with:
                                        gas gas_remaining wei
                        else:
                            mem[floor32(_8339) + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_8339) + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + -(_8339 % 32) + 288 len _8339 % 32]
                            require ext_code.size(address(_8315))
                            staticcall address(_8315).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[floor32(_8339) + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[32])
                            mem[floor32(_8339) + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[floor32(_8339) + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 288] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[floor32(_8339) + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 292] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8339) + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 288
                            require return_data.size >= 288
                            _11042 = mem[floor32(_8339) + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 288] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                            mem[floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 288] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 288]
                            _11088 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 288]
                            mem[floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 320 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 288])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 320 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (6 * ceil32(return_data.size)) + 288])]
                            if not _11088 % 32:
                                require ext_code.size(address(_11042))
                                staticcall address(_11042).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_11088 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 320] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[_11088 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 324] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_11088 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _11088 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (8 * ceil32(return_data.size)) + 320
                                require return_data.size >= 288
                                _13235 = mem[_11088 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg1) >> 32
                                _13236 = uint32(arg1), mem[_11088 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28]
                                require uint32(arg1), mem[_11088 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28] <= 4294967296
                                require uint32(arg1), mem[_11088 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[_11088 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + _11088 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 320] <= 4294967296 and uint32(arg1), mem[_11088 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + mem[uint32(arg1), mem[_11088 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + _11088 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 320] + 32 <= return_data.size
                                mem[_11088 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (8 * ceil32(return_data.size)) + 320] = mem[uint32(arg1), mem[_11088 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + _11088 + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 320]
                                require ext_code.size(address(_13235))
                                staticcall address(_13235).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[floor32(_11088) + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 320] = mem[floor32(_11088) + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + -(_11088 % 32) + 352 len _11088 % 32]
                                require ext_code.size(address(_11042))
                                staticcall address(_11042).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[floor32(_11088) + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 352] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[floor32(_11088) + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 356] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[floor32(_11088) + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = floor32(_11088) + floor32(_8339) + floor32(_5617) + _2926 + _37 + (8 * ceil32(return_data.size)) + 352
                                require return_data.size >= 288
                                _13296 = mem[floor32(_11088) + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32
                                _13297 = uint32(arg1), mem[floor32(_11088) + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 388 len 28]
                                require uint32(arg1), mem[floor32(_11088) + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 388 len 28] <= 4294967296
                                require uint32(arg1), mem[floor32(_11088) + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[floor32(_11088) + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + floor32(_11088) + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 352] <= 4294967296 and uint32(arg1), mem[floor32(_11088) + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + mem[uint32(arg1), mem[floor32(_11088) + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + floor32(_11088) + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 352] + 32 <= return_data.size
                                mem[floor32(_11088) + floor32(_8339) + floor32(_5617) + _2926 + _37 + (8 * ceil32(return_data.size)) + 352] = mem[uint32(arg1), mem[floor32(_11088) + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + floor32(_11088) + floor32(_8339) + floor32(_5617) + _2926 + _37 + (7 * ceil32(return_data.size)) + 352]
                                require ext_code.size(address(_13296))
                                staticcall address(_13296).getReserves() with:
                                        gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if ext_call.return_data[0]:
                            return ((10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * 10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 / 10^18))
            else:
                mem[floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + -(_2926 % 32) + 192 len _2926 % 32]
                require ext_code.size(address(_2916))
                staticcall address(_2916).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 192] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 196] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 192
                require return_data.size >= 288
                _5605 = mem[floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                _5606 = uint32(arg1), mem[floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 228 len 28]
                require uint32(arg1), mem[floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 228 len 28] <= 4294967296
                require uint32(arg1), mem[floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 228 len 28] + 32 <= return_data.size
                require mem[uint32(arg1), mem[floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 228 len 28] + floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 192] <= 4294967296 and uint32(arg1), mem[floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 228 len 28] + mem[uint32(arg1), mem[floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 228 len 28] + floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                mem[floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 192] = mem[uint32(arg1), mem[floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 228 len 28] + floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 192]
                _5621 = mem[_5606 + floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 192]
                mem[floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 224 len ceil32(mem[_5606 + floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 192])] = mem[_5606 + floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 224 len ceil32(mem[_5606 + floor32(_2926) + _37 + (2 * ceil32(return_data.size)) + 192])]
                if not _5621 % 32:
                    require ext_code.size(address(_5605))
                    staticcall address(_5605).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if ext_call.return_data[0]:
                        require ext_code.size(stor2)
                        staticcall stor2.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[_5621 + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
                        mem[_5621 + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(stor1)
                        staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_5621 + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 224] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                        mem[_5621 + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 228] = arg1
                        require ext_code.size(stor4)
                        staticcall stor4.0x1526fe27 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5621 + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 224
                        require return_data.size >= 288
                        _8303 = mem[_5621 + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
                        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                        require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5621 + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 224] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5621 + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                        mem[_5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 224] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5621 + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 224]
                        _8333 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5621 + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 224]
                        mem[_5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 256 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5621 + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 224])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5621 + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 256 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5621 + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 224])]
                        if not _8333 % 32:
                            require ext_code.size(address(_8303))
                            staticcall address(_8303).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[_8333 + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[32])
                            mem[_8333 + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_8333 + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 256] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[_8333 + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 260] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8333 + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 256
                            require return_data.size >= 288
                            _11015 = mem[_8333 + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8333 + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 256] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8333 + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            mem[_8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 256] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8333 + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 256]
                            _11075 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8333 + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 256]
                            mem[_8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 288 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8333 + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 256])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8333 + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8333 + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 256])]
                            if not _11075 % 32:
                                require ext_code.size(address(_11015))
                                staticcall address(_11015).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_11075 + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 288] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[_11075 + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 292] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_11075 + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _11075 + _8333 + _5621 + floor32(_2926) + _37 + (8 * ceil32(return_data.size)) + 288
                                require return_data.size >= 288
                                _13239 = mem[_11075 + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                                _13240 = uint32(arg1), mem[_11075 + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 324 len 28]
                                require uint32(arg1), mem[_11075 + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 324 len 28] <= 4294967296
                                require uint32(arg1), mem[_11075 + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[_11075 + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + _11075 + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 288] <= 4294967296 and uint32(arg1), mem[_11075 + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + mem[uint32(arg1), mem[_11075 + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + _11075 + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                                mem[_11075 + _8333 + _5621 + floor32(_2926) + _37 + (8 * ceil32(return_data.size)) + 288] = mem[uint32(arg1), mem[_11075 + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 324 len 28] + _11075 + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 288]
                                require ext_code.size(address(_13239))
                                staticcall address(_13239).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[floor32(_11075) + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 288] = mem[floor32(_11075) + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + -(_11075 % 32) + 320 len _11075 % 32]
                                require ext_code.size(address(_11015))
                                staticcall address(_11015).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[floor32(_11075) + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[floor32(_11075) + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 324] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[floor32(_11075) + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = floor32(_11075) + _8333 + _5621 + floor32(_2926) + _37 + (8 * ceil32(return_data.size)) + 320
                                require return_data.size >= 288
                                _13299 = mem[floor32(_11075) + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg1) >> 32
                                _13300 = uint32(arg1), mem[floor32(_11075) + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28]
                                require uint32(arg1), mem[floor32(_11075) + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28] <= 4294967296
                                require uint32(arg1), mem[floor32(_11075) + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[floor32(_11075) + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + floor32(_11075) + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320] <= 4294967296 and uint32(arg1), mem[floor32(_11075) + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + mem[uint32(arg1), mem[floor32(_11075) + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + floor32(_11075) + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320] + 32 <= return_data.size
                                mem[floor32(_11075) + _8333 + _5621 + floor32(_2926) + _37 + (8 * ceil32(return_data.size)) + 320] = mem[uint32(arg1), mem[floor32(_11075) + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + floor32(_11075) + _8333 + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320]
                                require ext_code.size(address(_13299))
                                staticcall address(_13299).getReserves() with:
                                        gas gas_remaining wei
                        else:
                            mem[floor32(_8333) + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_8333) + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + -(_8333 % 32) + 288 len _8333 % 32]
                            require ext_code.size(address(_8303))
                            staticcall address(_8303).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[floor32(_8333) + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[32])
                            mem[floor32(_8333) + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[floor32(_8333) + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[floor32(_8333) + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 292] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8333) + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 288
                            require return_data.size >= 288
                            _11045 = mem[floor32(_8333) + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                            mem[floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 288] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288]
                            _11089 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288]
                            mem[floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 320 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288])]
                            if not _11089 % 32:
                                require ext_code.size(address(_11045))
                                staticcall address(_11045).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_11089 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[_11089 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 324] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_11089 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _11089 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (8 * ceil32(return_data.size)) + 320
                                require return_data.size >= 288
                                _13243 = mem[_11089 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg1) >> 32
                                _13244 = uint32(arg1), mem[_11089 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28]
                                require uint32(arg1), mem[_11089 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28] <= 4294967296
                                require uint32(arg1), mem[_11089 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[_11089 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + _11089 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320] <= 4294967296 and uint32(arg1), mem[_11089 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + mem[uint32(arg1), mem[_11089 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + _11089 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320] + 32 <= return_data.size
                                mem[_11089 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (8 * ceil32(return_data.size)) + 320] = mem[uint32(arg1), mem[_11089 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + _11089 + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320]
                                require ext_code.size(address(_13243))
                                staticcall address(_13243).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[floor32(_11089) + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320] = mem[floor32(_11089) + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + -(_11089 % 32) + 352 len _11089 % 32]
                                require ext_code.size(address(_11045))
                                staticcall address(_11045).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[floor32(_11089) + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[floor32(_11089) + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[floor32(_11089) + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = floor32(_11089) + floor32(_8333) + _5621 + floor32(_2926) + _37 + (8 * ceil32(return_data.size)) + 352
                                require return_data.size >= 288
                                _13302 = mem[floor32(_11089) + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32
                                _13303 = uint32(arg1), mem[floor32(_11089) + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28]
                                require uint32(arg1), mem[floor32(_11089) + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28] <= 4294967296
                                require uint32(arg1), mem[floor32(_11089) + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[floor32(_11089) + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + floor32(_11089) + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352] <= 4294967296 and uint32(arg1), mem[floor32(_11089) + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + mem[uint32(arg1), mem[floor32(_11089) + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + floor32(_11089) + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352] + 32 <= return_data.size
                                mem[floor32(_11089) + floor32(_8333) + _5621 + floor32(_2926) + _37 + (8 * ceil32(return_data.size)) + 352] = mem[uint32(arg1), mem[floor32(_11089) + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + floor32(_11089) + floor32(_8333) + _5621 + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352]
                                require ext_code.size(address(_13302))
                                staticcall address(_13302).getReserves() with:
                                        gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if ext_call.return_data[0]:
                            return ((10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * 10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 / 10^18))
                else:
                    mem[floor32(_5621) + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_5621) + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + -(_5621 % 32) + 256 len _5621 % 32]
                    require ext_code.size(address(_5605))
                    staticcall address(_5605).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if ext_call.return_data[0]:
                        require ext_code.size(stor2)
                        staticcall stor2.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[floor32(_5621) + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[32])
                        mem[floor32(_5621) + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(stor1)
                        staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[floor32(_5621) + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 256] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                        mem[floor32(_5621) + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 260] = arg1
                        require ext_code.size(stor4)
                        staticcall stor4.0x1526fe27 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_5621) + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 256
                        require return_data.size >= 288
                        _8318 = mem[floor32(_5621) + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32
                        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                        require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5621) + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 256] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5621) + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                        mem[floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 256] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5621) + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 256]
                        _8340 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5621) + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 256]
                        mem[floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5621) + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 256])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5621) + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 288 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5621) + floor32(_2926) + _37 + (4 * ceil32(return_data.size)) + 256])]
                        if not _8340 % 32:
                            require ext_code.size(address(_8318))
                            staticcall address(_8318).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[_8340 + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[32])
                            mem[_8340 + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_8340 + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[_8340 + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 292] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8340 + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 288
                            require return_data.size >= 288
                            _11019 = mem[_8340 + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                            mem[_8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 288] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288]
                            _11077 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288]
                            mem[_8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 320 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288])]
                            if not _11077 % 32:
                                require ext_code.size(address(_11019))
                                staticcall address(_11019).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_11077 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[_11077 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 324] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_11077 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _11077 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (8 * ceil32(return_data.size)) + 320
                                require return_data.size >= 288
                                _13247 = mem[_11077 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg1) >> 32
                                _13248 = uint32(arg1), mem[_11077 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28]
                                require uint32(arg1), mem[_11077 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28] <= 4294967296
                                require uint32(arg1), mem[_11077 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[_11077 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + _11077 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320] <= 4294967296 and uint32(arg1), mem[_11077 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + mem[uint32(arg1), mem[_11077 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + _11077 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320] + 32 <= return_data.size
                                mem[_11077 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (8 * ceil32(return_data.size)) + 320] = mem[uint32(arg1), mem[_11077 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356 len 28] + _11077 + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320]
                                require ext_code.size(address(_13247))
                                staticcall address(_13247).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[floor32(_11077) + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320] = mem[floor32(_11077) + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + -(_11077 % 32) + 352 len _11077 % 32]
                                require ext_code.size(address(_11019))
                                staticcall address(_11019).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[floor32(_11077) + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[floor32(_11077) + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[floor32(_11077) + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = floor32(_11077) + _8340 + floor32(_5621) + floor32(_2926) + _37 + (8 * ceil32(return_data.size)) + 352
                                require return_data.size >= 288
                                _13305 = mem[floor32(_11077) + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32
                                _13306 = uint32(arg1), mem[floor32(_11077) + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28]
                                require uint32(arg1), mem[floor32(_11077) + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28] <= 4294967296
                                require uint32(arg1), mem[floor32(_11077) + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[floor32(_11077) + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + floor32(_11077) + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352] <= 4294967296 and uint32(arg1), mem[floor32(_11077) + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + mem[uint32(arg1), mem[floor32(_11077) + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + floor32(_11077) + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352] + 32 <= return_data.size
                                mem[floor32(_11077) + _8340 + floor32(_5621) + floor32(_2926) + _37 + (8 * ceil32(return_data.size)) + 352] = mem[uint32(arg1), mem[floor32(_11077) + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + floor32(_11077) + _8340 + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352]
                                require ext_code.size(address(_13305))
                                staticcall address(_13305).getReserves() with:
                                        gas gas_remaining wei
                        else:
                            mem[floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + -(_8340 % 32) + 320 len _8340 % 32]
                            require ext_code.size(address(_8318))
                            staticcall address(_8318).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[32])
                            mem[floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 388] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 320] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 324] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320
                            require return_data.size >= 288
                            _11048 = mem[floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 320] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 320] + 32 <= return_data.size
                            mem[floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 320] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 320]
                            _11090 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 320]
                            mem[floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 320])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 352 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (6 * ceil32(return_data.size)) + 320])]
                            if not _11090 % 32:
                                require ext_code.size(address(_11048))
                                staticcall address(_11048).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_11090 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[_11090 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 356] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_11090 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _11090 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (8 * ceil32(return_data.size)) + 352
                                require return_data.size >= 288
                                _13251 = mem[_11090 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32
                                _13252 = uint32(arg1), mem[_11090 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28]
                                require uint32(arg1), mem[_11090 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28] <= 4294967296
                                require uint32(arg1), mem[_11090 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[_11090 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + _11090 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352] <= 4294967296 and uint32(arg1), mem[_11090 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + mem[uint32(arg1), mem[_11090 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + _11090 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352] + 32 <= return_data.size
                                mem[_11090 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (8 * ceil32(return_data.size)) + 352] = mem[uint32(arg1), mem[_11090 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388 len 28] + _11090 + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352]
                                require ext_code.size(address(_13251))
                                staticcall address(_13251).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[floor32(_11090) + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 352] = mem[floor32(_11090) + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + -(_11090 % 32) + 384 len _11090 % 32]
                                require ext_code.size(address(_11048))
                                staticcall address(_11048).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[floor32(_11090) + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 384] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[floor32(_11090) + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 388] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[floor32(_11090) + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = floor32(_11090) + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (8 * ceil32(return_data.size)) + 384
                                require return_data.size >= 288
                                _13308 = mem[floor32(_11090) + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32
                                _13309 = uint32(arg1), mem[floor32(_11090) + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 420 len 28]
                                require uint32(arg1), mem[floor32(_11090) + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 420 len 28] <= 4294967296
                                require uint32(arg1), mem[floor32(_11090) + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 420 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[floor32(_11090) + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 420 len 28] + floor32(_11090) + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 384] <= 4294967296 and uint32(arg1), mem[floor32(_11090) + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 420 len 28] + mem[uint32(arg1), mem[floor32(_11090) + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 420 len 28] + floor32(_11090) + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 384] + 32 <= return_data.size
                                mem[floor32(_11090) + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (8 * ceil32(return_data.size)) + 384] = mem[uint32(arg1), mem[floor32(_11090) + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 420 len 28] + floor32(_11090) + floor32(_8340) + floor32(_5621) + floor32(_2926) + _37 + (7 * ceil32(return_data.size)) + 384]
                                require ext_code.size(address(_13308))
                                staticcall address(_13308).getReserves() with:
                                        gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if ext_call.return_data[0]:
                            return ((10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * 10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 / 10^18))
        else:
            mem[floor32(_37) + ceil32(return_data.size) + 128] = mem[floor32(_37) + ceil32(return_data.size) + -(_37 % 32) + 160 len _37 % 32]
            require ext_code.size(address(_27))
            staticcall address(_27).0xd21220a7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            staticcall stor0.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[floor32(_37) + ceil32(return_data.size) + 196] = Mask(112, 0, ext_call.return_data[32])
            mem[floor32(_37) + ceil32(return_data.size) + 228] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(stor1)
            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[floor32(_37) + ceil32(return_data.size) + 160] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[floor32(_37) + ceil32(return_data.size) + 164] = arg1
            require ext_code.size(stor4)
            staticcall stor4.0x1526fe27 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_37) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_37) + (2 * ceil32(return_data.size)) + 160
            require return_data.size >= 288
            _2920 = mem[floor32(_37) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_37) + ceil32(return_data.size) + 160] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_37) + ceil32(return_data.size) + 160] + 32 <= return_data.size
            mem[floor32(_37) + (2 * ceil32(return_data.size)) + 160] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_37) + ceil32(return_data.size) + 160]
            _2932 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_37) + ceil32(return_data.size) + 160]
            mem[floor32(_37) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_37) + ceil32(return_data.size) + 160])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_37) + ceil32(return_data.size) + 192 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_37) + ceil32(return_data.size) + 160])]
            if not _2932 % 32:
                require ext_code.size(address(_2920))
                staticcall address(_2920).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_2932 + floor32(_37) + (2 * ceil32(return_data.size)) + 192] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[_2932 + floor32(_37) + (2 * ceil32(return_data.size)) + 196] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2932 + floor32(_37) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 192
                require return_data.size >= 288
                _5597 = mem[_2932 + floor32(_37) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                _5598 = uint32(arg1), mem[_2932 + floor32(_37) + (2 * ceil32(return_data.size)) + 228 len 28]
                require uint32(arg1), mem[_2932 + floor32(_37) + (2 * ceil32(return_data.size)) + 228 len 28] <= 4294967296
                require uint32(arg1), mem[_2932 + floor32(_37) + (2 * ceil32(return_data.size)) + 228 len 28] + 32 <= return_data.size
                require mem[uint32(arg1), mem[_2932 + floor32(_37) + (2 * ceil32(return_data.size)) + 228 len 28] + _2932 + floor32(_37) + (2 * ceil32(return_data.size)) + 192] <= 4294967296 and uint32(arg1), mem[_2932 + floor32(_37) + (2 * ceil32(return_data.size)) + 228 len 28] + mem[uint32(arg1), mem[_2932 + floor32(_37) + (2 * ceil32(return_data.size)) + 228 len 28] + _2932 + floor32(_37) + (2 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                mem[_2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 192] = mem[uint32(arg1), mem[_2932 + floor32(_37) + (2 * ceil32(return_data.size)) + 228 len 28] + _2932 + floor32(_37) + (2 * ceil32(return_data.size)) + 192]
                _5619 = mem[_5598 + _2932 + floor32(_37) + (2 * ceil32(return_data.size)) + 192]
                mem[_2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 224 len ceil32(mem[_5598 + _2932 + floor32(_37) + (2 * ceil32(return_data.size)) + 192])] = mem[_5598 + _2932 + floor32(_37) + (2 * ceil32(return_data.size)) + 224 len ceil32(mem[_5598 + _2932 + floor32(_37) + (2 * ceil32(return_data.size)) + 192])]
                if not _5619 % 32:
                    require ext_code.size(address(_5597))
                    staticcall address(_5597).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if ext_call.return_data[0]:
                        require ext_code.size(stor2)
                        staticcall stor2.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[_5619 + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
                        mem[_5619 + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(stor1)
                        staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_5619 + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 224] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                        mem[_5619 + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 228] = arg1
                        require ext_code.size(stor4)
                        staticcall stor4.0x1526fe27 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5619 + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 224
                        require return_data.size >= 288
                        _8307 = mem[_5619 + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
                        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                        require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5619 + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 224] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5619 + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                        mem[_5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 224] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5619 + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 224]
                        _8335 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5619 + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 224]
                        mem[_5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 256 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5619 + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 224])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5619 + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 256 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5619 + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 224])]
                        if not _8335 % 32:
                            require ext_code.size(address(_8307))
                            staticcall address(_8307).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[_8335 + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[32])
                            mem[_8335 + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_8335 + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 256] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[_8335 + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 260] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8335 + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 256
                            require return_data.size >= 288
                            _11023 = mem[_8335 + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8335 + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 256] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8335 + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            mem[_8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 256] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8335 + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 256]
                            _11079 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8335 + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 256]
                            mem[_8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 288 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8335 + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 256])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8335 + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8335 + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 256])]
                            if not _11079 % 32:
                                require ext_code.size(address(_11023))
                                staticcall address(_11023).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_11079 + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 288] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[_11079 + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 292] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_11079 + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _11079 + _8335 + _5619 + _2932 + floor32(_37) + (8 * ceil32(return_data.size)) + 288
                                require return_data.size >= 288
                                _13255 = mem[_11079 + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                                _13256 = uint32(arg1), mem[_11079 + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 324 len 28]
                                require uint32(arg1), mem[_11079 + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 324 len 28] <= 4294967296
                                require uint32(arg1), mem[_11079 + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 324 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[_11079 + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 324 len 28] + _11079 + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 288] <= 4294967296 and uint32(arg1), mem[_11079 + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 324 len 28] + mem[uint32(arg1), mem[_11079 + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 324 len 28] + _11079 + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                                mem[_11079 + _8335 + _5619 + _2932 + floor32(_37) + (8 * ceil32(return_data.size)) + 288] = mem[uint32(arg1), mem[_11079 + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 324 len 28] + _11079 + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 288]
                                require ext_code.size(address(_13255))
                                staticcall address(_13255).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[floor32(_11079) + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 288] = mem[floor32(_11079) + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + -(_11079 % 32) + 320 len _11079 % 32]
                                require ext_code.size(address(_11023))
                                staticcall address(_11023).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[floor32(_11079) + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[floor32(_11079) + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 324] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[floor32(_11079) + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = floor32(_11079) + _8335 + _5619 + _2932 + floor32(_37) + (8 * ceil32(return_data.size)) + 320
                                require return_data.size >= 288
                                _13311 = mem[floor32(_11079) + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg1) >> 32
                                _13312 = uint32(arg1), mem[floor32(_11079) + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28]
                                require uint32(arg1), mem[floor32(_11079) + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] <= 4294967296
                                require uint32(arg1), mem[floor32(_11079) + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[floor32(_11079) + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + floor32(_11079) + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320] <= 4294967296 and uint32(arg1), mem[floor32(_11079) + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + mem[uint32(arg1), mem[floor32(_11079) + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + floor32(_11079) + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320] + 32 <= return_data.size
                                mem[floor32(_11079) + _8335 + _5619 + _2932 + floor32(_37) + (8 * ceil32(return_data.size)) + 320] = mem[uint32(arg1), mem[floor32(_11079) + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + floor32(_11079) + _8335 + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320]
                                require ext_code.size(address(_13311))
                                staticcall address(_13311).getReserves() with:
                                        gas gas_remaining wei
                        else:
                            mem[floor32(_8335) + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_8335) + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + -(_8335 % 32) + 288 len _8335 % 32]
                            require ext_code.size(address(_8307))
                            staticcall address(_8307).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[floor32(_8335) + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[32])
                            mem[floor32(_8335) + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[floor32(_8335) + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[floor32(_8335) + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 292] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8335) + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 288
                            require return_data.size >= 288
                            _11051 = mem[floor32(_8335) + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                            mem[floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 288] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288]
                            _11091 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288]
                            mem[floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 320 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288])]
                            if not _11091 % 32:
                                require ext_code.size(address(_11051))
                                staticcall address(_11051).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_11091 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[_11091 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 324] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_11091 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _11091 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (8 * ceil32(return_data.size)) + 320
                                require return_data.size >= 288
                                _13259 = mem[_11091 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg1) >> 32
                                _13260 = uint32(arg1), mem[_11091 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28]
                                require uint32(arg1), mem[_11091 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] <= 4294967296
                                require uint32(arg1), mem[_11091 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[_11091 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + _11091 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320] <= 4294967296 and uint32(arg1), mem[_11091 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + mem[uint32(arg1), mem[_11091 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + _11091 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320] + 32 <= return_data.size
                                mem[_11091 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (8 * ceil32(return_data.size)) + 320] = mem[uint32(arg1), mem[_11091 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + _11091 + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320]
                                require ext_code.size(address(_13259))
                                staticcall address(_13259).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[floor32(_11091) + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320] = mem[floor32(_11091) + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + -(_11091 % 32) + 352 len _11091 % 32]
                                require ext_code.size(address(_11051))
                                staticcall address(_11051).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[floor32(_11091) + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[floor32(_11091) + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[floor32(_11091) + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = floor32(_11091) + floor32(_8335) + _5619 + _2932 + floor32(_37) + (8 * ceil32(return_data.size)) + 352
                                require return_data.size >= 288
                                _13314 = mem[floor32(_11091) + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32
                                _13315 = uint32(arg1), mem[floor32(_11091) + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28]
                                require uint32(arg1), mem[floor32(_11091) + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] <= 4294967296
                                require uint32(arg1), mem[floor32(_11091) + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[floor32(_11091) + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + floor32(_11091) + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352] <= 4294967296 and uint32(arg1), mem[floor32(_11091) + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + mem[uint32(arg1), mem[floor32(_11091) + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + floor32(_11091) + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352] + 32 <= return_data.size
                                mem[floor32(_11091) + floor32(_8335) + _5619 + _2932 + floor32(_37) + (8 * ceil32(return_data.size)) + 352] = mem[uint32(arg1), mem[floor32(_11091) + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + floor32(_11091) + floor32(_8335) + _5619 + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352]
                                require ext_code.size(address(_13314))
                                staticcall address(_13314).getReserves() with:
                                        gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if ext_call.return_data[0]:
                            return ((10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * 10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 / 10^18))
                else:
                    mem[floor32(_5619) + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_5619) + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + -(_5619 % 32) + 256 len _5619 % 32]
                    require ext_code.size(address(_5597))
                    staticcall address(_5597).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if ext_call.return_data[0]:
                        require ext_code.size(stor2)
                        staticcall stor2.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[floor32(_5619) + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[32])
                        mem[floor32(_5619) + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(stor1)
                        staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[floor32(_5619) + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 256] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                        mem[floor32(_5619) + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 260] = arg1
                        require ext_code.size(stor4)
                        staticcall stor4.0x1526fe27 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_5619) + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 256
                        require return_data.size >= 288
                        _8321 = mem[floor32(_5619) + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32
                        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                        require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5619) + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 256] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5619) + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                        mem[floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 256] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5619) + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 256]
                        _8341 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5619) + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 256]
                        mem[floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5619) + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 256])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5619) + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 288 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5619) + _2932 + floor32(_37) + (4 * ceil32(return_data.size)) + 256])]
                        if not _8341 % 32:
                            require ext_code.size(address(_8321))
                            staticcall address(_8321).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[_8341 + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[32])
                            mem[_8341 + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_8341 + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[_8341 + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 292] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8341 + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 288
                            require return_data.size >= 288
                            _11027 = mem[_8341 + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                            mem[_8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 288] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288]
                            _11081 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288]
                            mem[_8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 320 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288])]
                            if not _11081 % 32:
                                require ext_code.size(address(_11027))
                                staticcall address(_11027).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_11081 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[_11081 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 324] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_11081 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _11081 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (8 * ceil32(return_data.size)) + 320
                                require return_data.size >= 288
                                _13263 = mem[_11081 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg1) >> 32
                                _13264 = uint32(arg1), mem[_11081 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28]
                                require uint32(arg1), mem[_11081 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] <= 4294967296
                                require uint32(arg1), mem[_11081 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[_11081 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + _11081 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320] <= 4294967296 and uint32(arg1), mem[_11081 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + mem[uint32(arg1), mem[_11081 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + _11081 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320] + 32 <= return_data.size
                                mem[_11081 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (8 * ceil32(return_data.size)) + 320] = mem[uint32(arg1), mem[_11081 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + _11081 + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320]
                                require ext_code.size(address(_13263))
                                staticcall address(_13263).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[floor32(_11081) + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320] = mem[floor32(_11081) + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + -(_11081 % 32) + 352 len _11081 % 32]
                                require ext_code.size(address(_11027))
                                staticcall address(_11027).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[floor32(_11081) + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[floor32(_11081) + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[floor32(_11081) + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = floor32(_11081) + _8341 + floor32(_5619) + _2932 + floor32(_37) + (8 * ceil32(return_data.size)) + 352
                                require return_data.size >= 288
                                _13317 = mem[floor32(_11081) + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32
                                _13318 = uint32(arg1), mem[floor32(_11081) + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28]
                                require uint32(arg1), mem[floor32(_11081) + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] <= 4294967296
                                require uint32(arg1), mem[floor32(_11081) + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[floor32(_11081) + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + floor32(_11081) + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352] <= 4294967296 and uint32(arg1), mem[floor32(_11081) + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + mem[uint32(arg1), mem[floor32(_11081) + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + floor32(_11081) + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352] + 32 <= return_data.size
                                mem[floor32(_11081) + _8341 + floor32(_5619) + _2932 + floor32(_37) + (8 * ceil32(return_data.size)) + 352] = mem[uint32(arg1), mem[floor32(_11081) + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + floor32(_11081) + _8341 + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352]
                                require ext_code.size(address(_13317))
                                staticcall address(_13317).getReserves() with:
                                        gas gas_remaining wei
                        else:
                            mem[floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + -(_8341 % 32) + 320 len _8341 % 32]
                            require ext_code.size(address(_8321))
                            staticcall address(_8321).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[32])
                            mem[floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 388] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 320] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 324] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320
                            require return_data.size >= 288
                            _11054 = mem[floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 320] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 320] + 32 <= return_data.size
                            mem[floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 320] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 320]
                            _11092 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 320]
                            mem[floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 320])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 352 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (6 * ceil32(return_data.size)) + 320])]
                            if not _11092 % 32:
                                require ext_code.size(address(_11054))
                                staticcall address(_11054).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_11092 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[_11092 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 356] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_11092 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _11092 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (8 * ceil32(return_data.size)) + 352
                                require return_data.size >= 288
                                _13267 = mem[_11092 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32
                                _13268 = uint32(arg1), mem[_11092 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28]
                                require uint32(arg1), mem[_11092 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] <= 4294967296
                                require uint32(arg1), mem[_11092 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[_11092 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + _11092 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352] <= 4294967296 and uint32(arg1), mem[_11092 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + mem[uint32(arg1), mem[_11092 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + _11092 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352] + 32 <= return_data.size
                                mem[_11092 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (8 * ceil32(return_data.size)) + 352] = mem[uint32(arg1), mem[_11092 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + _11092 + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352]
                                require ext_code.size(address(_13267))
                                staticcall address(_13267).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[floor32(_11092) + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 352] = mem[floor32(_11092) + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + -(_11092 % 32) + 384 len _11092 % 32]
                                require ext_code.size(address(_11054))
                                staticcall address(_11054).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[floor32(_11092) + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 384] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[floor32(_11092) + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 388] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[floor32(_11092) + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = floor32(_11092) + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (8 * ceil32(return_data.size)) + 384
                                require return_data.size >= 288
                                _13320 = mem[floor32(_11092) + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32
                                _13321 = uint32(arg1), mem[floor32(_11092) + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28]
                                require uint32(arg1), mem[floor32(_11092) + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] <= 4294967296
                                require uint32(arg1), mem[floor32(_11092) + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[floor32(_11092) + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + floor32(_11092) + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 384] <= 4294967296 and uint32(arg1), mem[floor32(_11092) + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + mem[uint32(arg1), mem[floor32(_11092) + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + floor32(_11092) + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 384] + 32 <= return_data.size
                                mem[floor32(_11092) + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (8 * ceil32(return_data.size)) + 384] = mem[uint32(arg1), mem[floor32(_11092) + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + floor32(_11092) + floor32(_8341) + floor32(_5619) + _2932 + floor32(_37) + (7 * ceil32(return_data.size)) + 384]
                                require ext_code.size(address(_13320))
                                staticcall address(_13320).getReserves() with:
                                        gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if ext_call.return_data[0]:
                            return ((10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * 10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 / 10^18))
            else:
                mem[floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + -(_2932 % 32) + 224 len _2932 % 32]
                require ext_code.size(address(_2920))
                staticcall address(_2920).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 224] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 228] = arg1
                require ext_code.size(stor4)
                staticcall stor4.0x1526fe27 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 288
                _5608 = mem[floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
                _5609 = uint32(arg1), mem[floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 260 len 28]
                require uint32(arg1), mem[floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 260 len 28] <= 4294967296
                require uint32(arg1), mem[floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 260 len 28] + 32 <= return_data.size
                require mem[uint32(arg1), mem[floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 260 len 28] + floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 224] <= 4294967296 and uint32(arg1), mem[floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 260 len 28] + mem[uint32(arg1), mem[floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 260 len 28] + floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                mem[floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 224] = mem[uint32(arg1), mem[floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 260 len 28] + floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 224]
                _5622 = mem[_5609 + floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 224]
                mem[floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 256 len ceil32(mem[_5609 + floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 224])] = mem[_5609 + floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 256 len ceil32(mem[_5609 + floor32(_2932) + floor32(_37) + (2 * ceil32(return_data.size)) + 224])]
                if not _5622 % 32:
                    require ext_code.size(address(_5608))
                    staticcall address(_5608).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if ext_call.return_data[0]:
                        require ext_code.size(stor2)
                        staticcall stor2.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[_5622 + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 292] = Mask(112, 0, ext_call.return_data[32])
                        mem[_5622 + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(stor1)
                        staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_5622 + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 256] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                        mem[_5622 + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 260] = arg1
                        require ext_code.size(stor4)
                        staticcall stor4.0x1526fe27 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5622 + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 256
                        require return_data.size >= 288
                        _8311 = mem[_5622 + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32
                        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                        require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5622 + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 256] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5622 + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                        mem[_5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 256] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5622 + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 256]
                        _8337 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5622 + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 256]
                        mem[_5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5622 + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 256])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5622 + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 288 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _5622 + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 256])]
                        if not _8337 % 32:
                            require ext_code.size(address(_8311))
                            staticcall address(_8311).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[_8337 + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[32])
                            mem[_8337 + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_8337 + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 288] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[_8337 + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 292] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8337 + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 288
                            require return_data.size >= 288
                            _11031 = mem[_8337 + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 288] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                            mem[_8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 288] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 288]
                            _11083 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 288]
                            mem[_8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 320 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 288])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 288])]
                            if not _11083 % 32:
                                require ext_code.size(address(_11031))
                                staticcall address(_11031).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_11083 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 320] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[_11083 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 324] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_11083 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _11083 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (8 * ceil32(return_data.size)) + 320
                                require return_data.size >= 288
                                _13271 = mem[_11083 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg1) >> 32
                                _13272 = uint32(arg1), mem[_11083 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28]
                                require uint32(arg1), mem[_11083 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] <= 4294967296
                                require uint32(arg1), mem[_11083 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[_11083 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + _11083 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 320] <= 4294967296 and uint32(arg1), mem[_11083 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + mem[uint32(arg1), mem[_11083 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + _11083 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 320] + 32 <= return_data.size
                                mem[_11083 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (8 * ceil32(return_data.size)) + 320] = mem[uint32(arg1), mem[_11083 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 356 len 28] + _11083 + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 320]
                                require ext_code.size(address(_13271))
                                staticcall address(_13271).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[floor32(_11083) + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 320] = mem[floor32(_11083) + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + -(_11083 % 32) + 352 len _11083 % 32]
                                require ext_code.size(address(_11031))
                                staticcall address(_11031).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[floor32(_11083) + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[floor32(_11083) + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 356] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[floor32(_11083) + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = floor32(_11083) + _8337 + _5622 + floor32(_2932) + floor32(_37) + (8 * ceil32(return_data.size)) + 352
                                require return_data.size >= 288
                                _13323 = mem[floor32(_11083) + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32
                                _13324 = uint32(arg1), mem[floor32(_11083) + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28]
                                require uint32(arg1), mem[floor32(_11083) + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] <= 4294967296
                                require uint32(arg1), mem[floor32(_11083) + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[floor32(_11083) + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + floor32(_11083) + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352] <= 4294967296 and uint32(arg1), mem[floor32(_11083) + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + mem[uint32(arg1), mem[floor32(_11083) + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + floor32(_11083) + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352] + 32 <= return_data.size
                                mem[floor32(_11083) + _8337 + _5622 + floor32(_2932) + floor32(_37) + (8 * ceil32(return_data.size)) + 352] = mem[uint32(arg1), mem[floor32(_11083) + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + floor32(_11083) + _8337 + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352]
                                require ext_code.size(address(_13323))
                                staticcall address(_13323).getReserves() with:
                                        gas gas_remaining wei
                        else:
                            mem[floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + -(_8337 % 32) + 320 len _8337 % 32]
                            require ext_code.size(address(_8311))
                            staticcall address(_8311).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[32])
                            mem[floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 388] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 324] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 320
                            require return_data.size >= 288
                            _11057 = mem[floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320] + 32 <= return_data.size
                            mem[floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 320] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320]
                            _11093 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320]
                            mem[floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 352 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320])]
                            if not _11093 % 32:
                                require ext_code.size(address(_11057))
                                staticcall address(_11057).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_11093 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[_11093 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 356] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_11093 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _11093 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (8 * ceil32(return_data.size)) + 352
                                require return_data.size >= 288
                                _13275 = mem[_11093 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32
                                _13276 = uint32(arg1), mem[_11093 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28]
                                require uint32(arg1), mem[_11093 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] <= 4294967296
                                require uint32(arg1), mem[_11093 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[_11093 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + _11093 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352] <= 4294967296 and uint32(arg1), mem[_11093 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + mem[uint32(arg1), mem[_11093 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + _11093 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352] + 32 <= return_data.size
                                mem[_11093 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (8 * ceil32(return_data.size)) + 352] = mem[uint32(arg1), mem[_11093 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + _11093 + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352]
                                require ext_code.size(address(_13275))
                                staticcall address(_13275).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[floor32(_11093) + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352] = mem[floor32(_11093) + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + -(_11093 % 32) + 384 len _11093 % 32]
                                require ext_code.size(address(_11057))
                                staticcall address(_11057).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[floor32(_11093) + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[floor32(_11093) + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[floor32(_11093) + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = floor32(_11093) + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (8 * ceil32(return_data.size)) + 384
                                require return_data.size >= 288
                                _13326 = mem[floor32(_11093) + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32
                                _13327 = uint32(arg1), mem[floor32(_11093) + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28]
                                require uint32(arg1), mem[floor32(_11093) + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] <= 4294967296
                                require uint32(arg1), mem[floor32(_11093) + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[floor32(_11093) + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + floor32(_11093) + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384] <= 4294967296 and uint32(arg1), mem[floor32(_11093) + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + mem[uint32(arg1), mem[floor32(_11093) + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + floor32(_11093) + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384] + 32 <= return_data.size
                                mem[floor32(_11093) + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (8 * ceil32(return_data.size)) + 384] = mem[uint32(arg1), mem[floor32(_11093) + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + floor32(_11093) + floor32(_8337) + _5622 + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384]
                                require ext_code.size(address(_13326))
                                staticcall address(_13326).getReserves() with:
                                        gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if ext_call.return_data[0]:
                            return ((10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * 10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 / 10^18))
                else:
                    mem[floor32(_5622) + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 256] = mem[floor32(_5622) + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + -(_5622 % 32) + 288 len _5622 % 32]
                    require ext_code.size(address(_5608))
                    staticcall address(_5608).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if ext_call.return_data[0]:
                        require ext_code.size(stor2)
                        staticcall stor2.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[floor32(_5622) + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 324] = Mask(112, 0, ext_call.return_data[32])
                        mem[floor32(_5622) + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(stor1)
                        staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[floor32(_5622) + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 288] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                        mem[floor32(_5622) + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 292] = arg1
                        require ext_code.size(stor4)
                        staticcall stor4.0x1526fe27 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_5622) + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 288
                        require return_data.size >= 288
                        _8324 = mem[floor32(_5622) + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                        require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                        require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5622) + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 288] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5622) + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                        mem[floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 288] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5622) + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 288]
                        _8342 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5622) + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 288]
                        mem[floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5622) + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 288])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5622) + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 320 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_5622) + floor32(_2932) + floor32(_37) + (4 * ceil32(return_data.size)) + 288])]
                        if not _8342 % 32:
                            require ext_code.size(address(_8324))
                            staticcall address(_8324).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[_8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[32])
                            mem[_8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 388] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[_8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 324] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 320
                            require return_data.size >= 288
                            _11035 = mem[_8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320] + 32 <= return_data.size
                            mem[_8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 320] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320]
                            _11085 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320]
                            mem[_8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 352 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320])]
                            if not _11085 % 32:
                                require ext_code.size(address(_11035))
                                staticcall address(_11035).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_11085 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[_11085 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 356] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_11085 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _11085 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (8 * ceil32(return_data.size)) + 352
                                require return_data.size >= 288
                                _13279 = mem[_11085 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32
                                _13280 = uint32(arg1), mem[_11085 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28]
                                require uint32(arg1), mem[_11085 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] <= 4294967296
                                require uint32(arg1), mem[_11085 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[_11085 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + _11085 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352] <= 4294967296 and uint32(arg1), mem[_11085 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + mem[uint32(arg1), mem[_11085 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + _11085 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352] + 32 <= return_data.size
                                mem[_11085 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (8 * ceil32(return_data.size)) + 352] = mem[uint32(arg1), mem[_11085 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388 len 28] + _11085 + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352]
                                require ext_code.size(address(_13279))
                                staticcall address(_13279).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[floor32(_11085) + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352] = mem[floor32(_11085) + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + -(_11085 % 32) + 384 len _11085 % 32]
                                require ext_code.size(address(_11035))
                                staticcall address(_11035).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[floor32(_11085) + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[floor32(_11085) + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[floor32(_11085) + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = floor32(_11085) + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (8 * ceil32(return_data.size)) + 384
                                require return_data.size >= 288
                                _13329 = mem[floor32(_11085) + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32
                                _13330 = uint32(arg1), mem[floor32(_11085) + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28]
                                require uint32(arg1), mem[floor32(_11085) + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] <= 4294967296
                                require uint32(arg1), mem[floor32(_11085) + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[floor32(_11085) + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + floor32(_11085) + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384] <= 4294967296 and uint32(arg1), mem[floor32(_11085) + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + mem[uint32(arg1), mem[floor32(_11085) + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + floor32(_11085) + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384] + 32 <= return_data.size
                                mem[floor32(_11085) + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (8 * ceil32(return_data.size)) + 384] = mem[uint32(arg1), mem[floor32(_11085) + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + floor32(_11085) + _8342 + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384]
                                require ext_code.size(address(_13329))
                                staticcall address(_13329).getReserves() with:
                                        gas gas_remaining wei
                        else:
                            mem[floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 320] = mem[floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + -(_8342 % 32) + 352 len _8342 % 32]
                            require ext_code.size(address(_8324))
                            staticcall address(_8324).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            staticcall stor0.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 388] = Mask(112, 0, ext_call.return_data[32])
                            mem[floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 420] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor1)
                            staticcall stor1.quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 352] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                            mem[floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 356] = arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x1526fe27 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352
                            require return_data.size >= 288
                            _11060 = mem[floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 <= 4294967296
                            require uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + 32 <= return_data.size
                            require mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 352] <= 4294967296 and uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 352] + 32 <= return_data.size
                            mem[floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 352] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 352]
                            _11094 = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 352]
                            mem[floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 352])] = mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 384 len ceil32(mem[uint32(arg1), Mask(112, 0, ext_call.return_data[32]) << 112 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (6 * ceil32(return_data.size)) + 352])]
                            if not _11094 % 32:
                                require ext_code.size(address(_11060))
                                staticcall address(_11060).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_11094 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[_11094 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 388] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_11094 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _11094 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (8 * ceil32(return_data.size)) + 384
                                require return_data.size >= 288
                                _13283 = mem[_11094 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32
                                _13284 = uint32(arg1), mem[_11094 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28]
                                require uint32(arg1), mem[_11094 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] <= 4294967296
                                require uint32(arg1), mem[_11094 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[_11094 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + _11094 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384] <= 4294967296 and uint32(arg1), mem[_11094 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + mem[uint32(arg1), mem[_11094 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + _11094 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384] + 32 <= return_data.size
                                mem[_11094 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (8 * ceil32(return_data.size)) + 384] = mem[uint32(arg1), mem[_11094 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420 len 28] + _11094 + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384]
                                require ext_code.size(address(_13283))
                                staticcall address(_13283).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[floor32(_11094) + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 384] = mem[floor32(_11094) + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + -(_11094 % 32) + 416 len _11094 % 32]
                                require ext_code.size(address(_11060))
                                staticcall address(_11060).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[floor32(_11094) + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 416] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                                mem[floor32(_11094) + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 420] = arg1
                                require ext_code.size(stor4)
                                staticcall stor4.0x1526fe27 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[floor32(_11094) + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = floor32(_11094) + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (8 * ceil32(return_data.size)) + 416
                                require return_data.size >= 288
                                _13332 = mem[floor32(_11094) + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg1) >> 32
                                _13333 = uint32(arg1), mem[floor32(_11094) + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 452 len 28]
                                require uint32(arg1), mem[floor32(_11094) + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 452 len 28] <= 4294967296
                                require uint32(arg1), mem[floor32(_11094) + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 452 len 28] + 32 <= return_data.size
                                require mem[uint32(arg1), mem[floor32(_11094) + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 452 len 28] + floor32(_11094) + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 416] <= 4294967296 and uint32(arg1), mem[floor32(_11094) + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 452 len 28] + mem[uint32(arg1), mem[floor32(_11094) + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 452 len 28] + floor32(_11094) + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 416] + 32 <= return_data.size
                                mem[floor32(_11094) + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (8 * ceil32(return_data.size)) + 416] = mem[uint32(arg1), mem[floor32(_11094) + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 452 len 28] + floor32(_11094) + floor32(_8342) + floor32(_5622) + floor32(_2932) + floor32(_37) + (7 * ceil32(return_data.size)) + 416]
                                require ext_code.size(address(_13332))
                                staticcall address(_13332).getReserves() with:
                                        gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if ext_call.return_data[0]:
                            return ((10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[0] * 10^12 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * 10^12 * ext_call.return_data[0] / 10^12 * ext_call.return_data[0] / 10^18 / 10^18))
    revert
}



}
