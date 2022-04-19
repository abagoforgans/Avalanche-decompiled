contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address joeFactoryAddress;
address joeRouterAddress;
address miniYakAddress;
address pairYAK_WAVAXAddress;
address pairMiniYak_WAVAXAddress;
address yAK_tokenAddress;
address WAVAXAddress;

function pairYAK_WAVAX() payable {
    return pairYAK_WAVAXAddress
}

function pairMiniYak_WAVAX() payable {
    return pairMiniYak_WAVAXAddress
}

function YAK_token() payable {
    return yAK_tokenAddress
}

function joeRouter() payable {
    return joeRouterAddress
}

function WAVAX() payable {
    return WAVAXAddress
}

function joeFactory() payable {
    return joeFactoryAddress
}

function owner() payable {
    return owner
}

function miniYak() payable {
    return miniYakAddress
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

function removeWhitelistAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function addWhitelistAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1[address(arg1)]:
        revert with 0, 'nonDuplicated: duplicated'
    stor1[address(arg1)] = 1
}

function sub_1cd25a1e(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(pairYAK_WAVAXAddress)
    call pairYAK_WAVAXAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args arg1, arg2, address(this.address), 'not empty'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'non Authorized sender'
    if pairYAK_WAVAXAddress != msg.sender:
        revert with 0, 'Unauthorized'
    require not arg3
    require ext_code.size(pairMiniYak_WAVAXAddress)
    staticcall pairMiniYak_WAVAXAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = ext_call.return_data[12 len 20]
    require ext_code.size(pairMiniYak_WAVAXAddress)
    staticcall pairMiniYak_WAVAXAddress.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(miniYakAddress)
    call miniYakAddress.moon(uint256 rg1, address rg2) with:
         gas gas_remaining wei
        args arg2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(pairYAK_WAVAXAddress)
    staticcall pairYAK_WAVAXAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        if ext_call.return_data[18 len 14] - arg2 > ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-sub-underflow'
        require ext_call.return_data[18 len 14] - arg2
        if (0 / ext_call.return_data[18 len 14] - arg2) - ext_call.return_data[50 len 14] > 0 / ext_call.return_data[18 len 14] - arg2:
            revert with 0, 'ds-math-sub-underflow'
        if (1000 * 0 / ext_call.return_data[18 len 14] - arg2) - (1000 * ext_call.return_data[50 len 14]) / 1000 != (0 / ext_call.return_data[18 len 14] - arg2) - ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if ((1000 * 0 / ext_call.return_data[18 len 14] - arg2) - (1000 * ext_call.return_data[50 len 14]) / 997) + 100 < (1000 * 0 / ext_call.return_data[18 len 14] - arg2) - (1000 * ext_call.return_data[50 len 14]) / 997:
            revert with 0, 'ds-math-add-overflow'
        require ext_code.size(miniYakAddress)
        staticcall miniYakAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(miniYakAddress)
        call miniYakAddress.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args joeRouterAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(miniYakAddress)
        staticcall miniYakAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = ext_call.return_data[0]
        mem[228] = ((1000 * 0 / Mask(112, 0, ext_call.return_data[0]) - arg2) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997) + 100
        mem[292] = this.address
        mem[324] = block.timestamp + (240 * 24 * 3600)
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(joeRouterAddress)
        call joeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], ((1000 * 0 / Mask(112, 0, ext_call.return_data[0]) - arg2) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997) + 100, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _115 = mem[192 len 4], ext_call.return_data[0 len 28]
        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_115 + 192])] = mem[_115 + 224 len floor32(mem[_115 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        require ext_code.size(WAVAXAddress)
        call WAVAXAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ((1000 * 0 / Mask(112, 0, ext_call.return_data[0]) - arg2) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997) + 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(WAVAXAddress)
        call WAVAXAddress.0xa9059cbb with:
             gas gas_remaining wei
            args tx.origin, mem[ceil32(return_data.size) + 256] + -((1000 * 0 / Mask(112, 0, ext_call.return_data[0]) - arg2) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997) - 100
    else:
        require ext_call.return_data[50 len 14]
        if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[18 len 14] - arg2 > ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-sub-underflow'
        require ext_call.return_data[18 len 14] - arg2
        if (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] - arg2) - ext_call.return_data[50 len 14] > ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] - arg2:
            revert with 0, 'ds-math-sub-underflow'
        if (1000 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] - arg2) - (1000 * ext_call.return_data[50 len 14]) / 1000 != (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] - arg2) - ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if ((1000 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] - arg2) - (1000 * ext_call.return_data[50 len 14]) / 997) + 100 < (1000 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] - arg2) - (1000 * ext_call.return_data[50 len 14]) / 997:
            revert with 0, 'ds-math-add-overflow'
        require ext_code.size(miniYakAddress)
        staticcall miniYakAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(miniYakAddress)
        call miniYakAddress.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args joeRouterAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(miniYakAddress)
        staticcall miniYakAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = ext_call.return_data[0]
        mem[228] = ((1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - arg2) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997) + 100
        mem[292] = this.address
        mem[324] = block.timestamp + (240 * 24 * 3600)
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(joeRouterAddress)
        call joeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], ((1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - arg2) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997) + 100, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + (240 * 24 * 3600)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _117 = mem[192 len 4], ext_call.return_data[0 len 28]
        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_117 + 192])] = mem[_117 + 224 len floor32(mem[_117 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        require ext_code.size(WAVAXAddress)
        call WAVAXAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - arg2) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997) + 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(WAVAXAddress)
        call WAVAXAddress.0xa9059cbb with:
             gas gas_remaining wei
            args tx.origin, mem[ceil32(return_data.size) + 256] + -((1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - arg2) - (1000 * Mask(112, 0, ext_call.return_data[32])) / 997) - 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
