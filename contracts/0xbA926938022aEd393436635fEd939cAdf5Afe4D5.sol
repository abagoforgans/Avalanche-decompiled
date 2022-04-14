contract main {




// =====================  Runtime code  =====================


#
#  - getFactoryAmountsIn(address arg1, address arg2, address arg3, uint256 arg4, address[] arg5, uint8[] arg6)
#  - getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3, uint32 arg4, uint32 arg5, uint32 arg6)
#  - ensureConstantValue(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint32 arg5)
#  - mintLiquidityFee(uint256 arg1, uint112 arg2, uint112 arg3, uint32 arg4, uint32 arg5, uint112 arg6, uint112 arg7)
#  - getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3, uint32 arg4, uint32 arg5, uint32 arg6)
#  - getFactoryAmountsOut(address arg1, address arg2, address arg3, uint256 arg4, address[] arg5, uint8[] arg6)
#
address dexConfigorAddress;
mapping of uint32 dexSwapFee;
mapping of uint8 stor2;

function dexSupported(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function dexConfigor() payable {
    return dexConfigorAddress
}

function dexSwapFee(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    return dexSwapFee[arg1]
}

function _fallback() payable {
    revert
}

function setDexConfigor(address arg1) payable {
    require calldata.size - 4 >= 32
    if dexConfigorAddress != msg.sender:
        revert with 0, 'FBF: !dex configor'
    dexConfigorAddress = arg1
}

function disableDex(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if dexConfigorAddress != msg.sender:
        revert with 0, 'FBF: !dex configor'
    stor2[arg1 << 248] = 0
    emit LogDexSwapFee(arg1 << 248, dexSwapFee[arg1 << 248], 0);
}

function setDexSwapFee(uint8 arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    if dexConfigorAddress != msg.sender:
        revert with 0, 'FBF: !dex configor'
    if arg2 >= 10000:
        revert with 0, 'FBP: Invalid swap fee'
    dexSwapFee[arg1 << 248] = arg2
    stor2[arg1 << 248] = 1
    emit LogDexSwapFee(arg1 << 248, arg2 << 224, 1);
}

function sortTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x544669726542697264466f726d756c613a204944454e544943414c5f4144445245535345,
                    mem[200 len 28]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'FireBirdFormula: ZERO_ADDRESS'
        return address(arg1), arg2
    if not arg2:
        revert with 0, 'FireBirdFormula: ZERO_ADDRESS'
    return address(arg2), arg1
}

function getFactoryWeightsAndSwapFee(address arg1, address arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3:
        if not stor2[arg3 << 248]:
            revert with 0, 'FBF: Dex not supported'
        return 50, 50, dexSwapFee[arg3 << 248]
    require ext_code.size(arg1)
    staticcall arg1.getWeightsAndSwapFee(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[28 len 4], ext_call.return_data[32] << 224, uint32(ext_call.return_data[64])
}

function getOtherToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 != address(ext_call.return_data[0]):
        if ext_call.return_data[12 len 20] != arg2:
            revert with 0, 'FireBirdFormula: Invalid tokenA'
    if address(ext_call.return_data[0]) == arg2:
        return ext_call.return_data[12 len 20]
    return address(ext_call.return_data[0])
}

function quote(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x544669726542697264466f726d756c613a20494e53554646494349454e545f414d4f554e,
                    mem[200 len 28]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x544669726542697264466f726d756c613a20494e53554646494349454e545f4c49515549444954,
                    mem[203 len 25]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x544669726542697264466f726d756c613a20494e53554646494349454e545f4c49515549444954,
                    mem[203 len 25]
    if not arg3:
        if arg2:
            return (0 / arg2)
    else:
        if arg3:
            if arg1 * arg3 / arg3 != arg1:
                revert with 0, 'ds-math-mul-overflow'
            if arg2:
                return (arg1 * arg3 / arg2)
    revert
}

function getReserves(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg2 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x544669726542697264466f726d756c613a204944454e544943414c5f4144445245535345,
                    mem[200 len 28]
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'FireBirdFormula: ZERO_ADDRESS'
        require ext_code.size(arg1)
        staticcall arg1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(arg1)
        staticcall arg1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != arg2:
            revert with 0, 'FireBirdFormula: Invalid token'
        require ext_code.size(arg1)
        staticcall arg1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != arg3:
            revert with 0, 'FireBirdFormula: Invalid token'
        if arg2 == arg2:
            return ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    else:
        if not arg3:
            revert with 0, 'FireBirdFormula: ZERO_ADDRESS'
        require ext_code.size(arg1)
        staticcall arg1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(arg1)
        staticcall arg1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != arg3:
            revert with 0, 'FireBirdFormula: Invalid token'
        require ext_code.size(arg1)
        staticcall arg1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != arg2:
            revert with 0, 'FireBirdFormula: Invalid token'
        if arg2 == arg3:
            return ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    return ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
}

function getFactoryReserveAndWeights(address arg1, address arg2, address arg3, uint8 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg2)
    staticcall arg2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if arg4:
        if not stor2[arg4 << 248]:
            revert with 0, 'FBF: Dex not supported'
        require ext_code.size(arg2)
        staticcall arg2.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        staticcall arg2.token1() with:
                gas gas_remaining wei
        if ext_call.return_data[12 len 20] == arg3:
        else:
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != arg3:
                revert with 0, 'FireBirdFormula: Invalid tokenA'
            require ext_code.size(arg2)
            staticcall arg2.token0() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[12 len 20], ext_call.return_data[32 len 64], 50, 50, dexSwapFee[arg4 << 248]
    require ext_code.size(arg1)
    staticcall arg1.getWeightsAndSwapFee(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg2)
    staticcall arg2.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == arg3:
        return ext_call.return_data[12 len 20], 
               ext_call.return_data[32 len 64],
               ext_call.return_data[0] << 224,
               ext_call.return_data[32] << 224,
               uint32(ext_call.return_data[64])
    if ext_call.return_data[12 len 20] != arg3:
        revert with 0, 'FireBirdFormula: Invalid tokenA'
    require ext_code.size(arg2)
    staticcall arg2.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32 len 64],
           ext_call.return_data[32] << 224,
           ext_call.return_data[0] << 224,
           uint32(ext_call.return_data[64])
}



}
