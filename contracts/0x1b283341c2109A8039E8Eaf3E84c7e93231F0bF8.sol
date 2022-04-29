contract main {




// =====================  Runtime code  =====================


#
#  - getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3)
#  - sub_06d889d7(?)
#  - sub_205aaa60(?)
#  - sub_3acf8a1d(?)
#  - sub_5323fdd5(?)
#  - sub_568fba0f(?)
#  - sub_57f7b98c(?)
#  - remove(address arg1, address arg2, uint256 arg3)
#  - sub_662c43bb(?)
#  - sub_7a91782b(?)
#  - sub_7fb48b03(?)
#  - getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3)
#  - sub_926d8bcf(?)
#  - sub_929074d2(?)
#  - sub_9872de8d(?)
#  - sub_9e463673(?)
#  - sub_9eb5d573(?)
#  - sub_ad8d81d3(?)
#  - sub_ae34cd8c(?)
#  - sub_bb7500c9(?)
#  - sub_c9395daa(?)
#  - sub_d2f36d38(?)
#  - sub_d464f63c(?)
#
address owner;
address baseAddress;
address routerAddress;
array of struct stor3;

function base() payable {
    return baseAddress
}

function owner() payable {
    return owner
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    owner = arg1
}

function reclaimNative(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ACW'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reclaimERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function quote(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_AMOUNT'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if arg1 and arg3 > -1 / arg1:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    return (arg1 * arg3 / arg2)
}

function sub_b02d5bcd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
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
    if baseAddress == address(ext_call.return_data[0]):
        return ext_call.return_data[12 len 20]
    return address(ext_call.return_data[0])
}

function equal(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 160 < 128 or ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307():
        revert with 0, 65
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg2.length
    return (sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256) == sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]]))
}

function getReserves(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg1)
        staticcall arg1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg2 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if not arg3:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg1)
        staticcall arg1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg2 == arg3:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function dex() payable {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function buy(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = this.address
    require ext_code.size(baseAddress)
    staticcall baseAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = routerAddress
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(baseAddress)
    call baseAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = routerAddress
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 96] = 2
    mem[(6 * ceil32(return_data.size)) + 128] = arg2
    mem[(6 * ceil32(return_data.size)) + 160] = baseAddress
    if 24 * 3600 > !block.timestamp:
        revert with 0, 17
    mem[(6 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 196] = arg3
    mem[(6 * ceil32(return_data.size)) + 228] = 64
    mem[(6 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 128
    t = (6 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _43 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
    require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
    _44 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 < 0 or (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 > test266151307():
        revert with 0, 65
    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
    mem[(7 * ceil32(return_data.size)) + 192] = _44
    require return_data.size >= _43 + (32 * _44) + 32
    mem[(7 * ceil32(return_data.size)) + 224 len 32 * _44] = mem[(6 * ceil32(return_data.size)) + _43 + 224 len 32 * _44]
    if not _44:
        revert with 0, 50
    _60 = mem[(7 * ceil32(return_data.size)) + 224]
    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = _60
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + (24 * 3600)
    require ext_code.size(routerAddress)
    call routerAddress.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, _60, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + (24 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _72 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_72] <= test266151307()
    require _72 + mem[_72] + 31 < _72 + return_data.size
    if mem[_72 + mem[_72]] > test266151307():
        revert with 0, 65
    if (32 * mem[_72 + mem[_72]]) + 32 < 0 or _72 + ceil32(return_data.size) + (32 * mem[_72 + mem[_72]]) + 32 > test266151307():
        revert with 0, 65
    require return_data.size >= mem[_72] + (32 * mem[_72 + mem[_72]]) + 32
}

function add(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 24 * 3600 > !block.timestamp:
        revert with 0, 17
    if baseAddress == arg2:
        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if baseAddress < arg2:
        if not baseAddress:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg1)
        staticcall arg1.getReserves() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[0] <= 0:
            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 37
            mem[(2 * ceil32(return_data.size)) + 260] = 'UniswapV2Library: INSUFFICIENT_A'
            mem[(2 * ceil32(return_data.size)) + 292] = 0x4d4f554e54000000000000000000000000000000000000000000000000000000
            revert with memory
              from (2 * ceil32(return_data.size)) + 192
               len ceil32(return_data.size) + 132
        if baseAddress == baseAddress:
            if ext_call.return_data[50 len 14] <= 0:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 40
                mem[(2 * ceil32(return_data.size)) + 260] = 'UniswapV2Library: INSUFFICIENT_L'
                mem[(2 * ceil32(return_data.size)) + 292] = 'IQUIDITY' << 192
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            if ext_call.return_data[18 len 14] <= 0:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 40
                mem[(2 * ceil32(return_data.size)) + 260] = 'UniswapV2Library: INSUFFICIENT_L'
                mem[(2 * ceil32(return_data.size)) + 292] = 'IQUIDITY' << 192
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            if ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            mem[(2 * ceil32(return_data.size)) + 196] = arg2
            mem[(2 * ceil32(return_data.size)) + 228] = baseAddress
            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
            mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
        else:
            if ext_call.return_data[18 len 14] <= 0:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 40
                mem[(2 * ceil32(return_data.size)) + 260] = 'UniswapV2Library: INSUFFICIENT_L'
                mem[(2 * ceil32(return_data.size)) + 292] = 'IQUIDITY' << 192
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            if ext_call.return_data[50 len 14] <= 0:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 40
                mem[(2 * ceil32(return_data.size)) + 260] = 'UniswapV2Library: INSUFFICIENT_L'
                mem[(2 * ceil32(return_data.size)) + 292] = 'IQUIDITY' << 192
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            if ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            mem[(2 * ceil32(return_data.size)) + 196] = arg2
            mem[(2 * ceil32(return_data.size)) + 228] = baseAddress
            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
    else:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg1)
        staticcall arg1.getReserves() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[0] <= 0:
            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 37
            mem[(2 * ceil32(return_data.size)) + 260] = 'UniswapV2Library: INSUFFICIENT_A'
            mem[(2 * ceil32(return_data.size)) + 292] = 0x4d4f554e54000000000000000000000000000000000000000000000000000000
            revert with memory
              from (2 * ceil32(return_data.size)) + 192
               len ceil32(return_data.size) + 132
        if baseAddress == arg2:
            if ext_call.return_data[50 len 14] <= 0:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 40
                mem[(2 * ceil32(return_data.size)) + 260] = 'UniswapV2Library: INSUFFICIENT_L'
                mem[(2 * ceil32(return_data.size)) + 292] = 'IQUIDITY' << 192
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            if ext_call.return_data[18 len 14] <= 0:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 40
                mem[(2 * ceil32(return_data.size)) + 260] = 'UniswapV2Library: INSUFFICIENT_L'
                mem[(2 * ceil32(return_data.size)) + 292] = 'IQUIDITY' << 192
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            if ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            mem[(2 * ceil32(return_data.size)) + 196] = arg2
            mem[(2 * ceil32(return_data.size)) + 228] = baseAddress
            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
            mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
        else:
            if ext_call.return_data[18 len 14] <= 0:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 40
                mem[(2 * ceil32(return_data.size)) + 260] = 'UniswapV2Library: INSUFFICIENT_L'
                mem[(2 * ceil32(return_data.size)) + 292] = 'IQUIDITY' << 192
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            if ext_call.return_data[50 len 14] <= 0:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 40
                mem[(2 * ceil32(return_data.size)) + 260] = 'UniswapV2Library: INSUFFICIENT_L'
                mem[(2 * ceil32(return_data.size)) + 292] = 'IQUIDITY' << 192
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            if ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            mem[(2 * ceil32(return_data.size)) + 196] = arg2
            mem[(2 * ceil32(return_data.size)) + 228] = baseAddress
            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 388] = this.address
    mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp + (24 * 3600)
    require ext_code.size(routerAddress)
    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}



}
