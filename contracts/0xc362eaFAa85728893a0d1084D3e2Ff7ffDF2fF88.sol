contract main {




// =====================  Runtime code  =====================


#
#  - revokeAllowance(address arg1, address arg2)
#  - recoverERC20(address arg1, uint256 arg2)
#
const feeDenominator = 10^10

const id = 0xbdbab5faa02fcf1e1b60b804ff7b8e2abdb5f22ebad14842fcd7c26d0b2ffb5c


address owner;
uint256 swapGasEstimate;
array of uint256 name;
address metaPoolAddress;
uint32 stor4;
address poolAddress;
uint256 stor4;
mapping of uint8 stor5;
mapping of uint8 tokenIndex;
uint256 poolFeeCompliment;

function name() {
    return name[0 len name.length]
}

function pool() {
    return address(poolAddress)
}

function poolFeeCompliment() {
    return poolFeeCompliment
}

function tokenIndex(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenIndex[arg1]
}

function metaPool() {
    return metaPoolAddress
}

function swapGasEstimate() {
    return swapGasEstimate
}

function owner() {
    return owner
}

function isPoolToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function _fallback() payable {
    revert
}

function setAllowances() {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setSwapGasEstimate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    swapGasEstimate = arg1
    emit 0xf43f23b7: arg1, this.address
}

function recoverAVAX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'YakAdapter: Nothing to recover'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Recovered(address arg1, uint256 arg2):
                   arg1,
    emit 0x0: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a204e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_47459f9d(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    require ext_code.size(address(poolAddress))
    call address(poolAddress).swapStorage() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require bool(ceil32(return_data.size) + 320 <= test266151307())
    require ext_call.return_data[192] == ext_call.return_data[204 len 20]
    poolFeeCompliment = -ext_call.return_data[128] + 10^10
}

function query(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        return 0
    if arg2 == arg3:
        return 0
    if not stor5[address(arg2)]:
        return 0
    if not stor5[address(arg3)]:
        return 0
    require ext_code.size(address(poolAddress))
    staticcall address(poolAddress).0x5c975abb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        return 0
    require ext_code.size(metaPoolAddress)
    staticcall metaPoolAddress.0x5c975abb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        return 0
    require ext_code.size(address(poolAddress))
    staticcall address(poolAddress).calculateSwapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args tokenIndex[address(arg2)], tokenIndex[arg3], arg1
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    if not poolFeeCompliment:
        return 0
    require poolFeeCompliment
    if ext_call.return_data[0] * poolFeeCompliment / poolFeeCompliment != ext_call.return_data[0]:
        revert with 0, 'SafeMath: ds-math-mul-overflow'
    return (ext_call.return_data[0] * poolFeeCompliment / 10^10)
}

function swap(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require ext_code.size(arg3)
    staticcall arg3.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(poolAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        mem[ceil32(return_data.size) + 196] = arg2
        mem[ceil32(return_data.size) + 228] = block.timestamp
        require ext_code.size(address(poolAddress))
        call address(poolAddress).swapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args tokenIndex[address(arg3)], tokenIndex[arg4], arg1, arg2, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg5 != this.address:
            mem[(2 * ceil32(return_data.size)) + 196 len 96] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, arg2, mem[(2 * ceil32(return_data.size)) + 196 len 28]
            call arg4.mem[(2 * ceil32(return_data.size)) + 196 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 200 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 0, stor4) == bool(0, Mask(224, 0, stor4))
                    if not 0, Mask(224, 0, stor4):
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 228] == bool(mem[(2 * ceil32(return_data.size)) + 228])
                    if not mem[(2 * ceil32(return_data.size)) + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        require ext_code.size(arg3)
        staticcall arg3.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(poolAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 196 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1, mem[(2 * ceil32(return_data.size)) + 196 len 28]
        call arg3.mem[(2 * ceil32(return_data.size)) + 196 len 4] with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 200 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 0, stor4) == bool(0, Mask(224, 0, stor4))
                if not 0, Mask(224, 0, stor4):
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + 296] = arg2
            mem[(2 * ceil32(return_data.size)) + 328] = block.timestamp
            require ext_code.size(address(poolAddress))
            call address(poolAddress).swapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args tokenIndex[address(arg3)], tokenIndex[arg4], arg1, arg2, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg5 != this.address:
                mem[(4 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg5), arg2, mem[(4 * ceil32(return_data.size)) + 296 len 28]
                call arg4.mem[(4 * ceil32(return_data.size)) + 296 len 4] with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 300 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 0, stor4) == bool(0, Mask(224, 0, stor4))
                        if not 0, Mask(224, 0, stor4):
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 328] == bool(mem[(4 * ceil32(return_data.size)) + 328])
                        if not mem[(4 * ceil32(return_data.size)) + 328]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 228] == bool(mem[(2 * ceil32(return_data.size)) + 228])
                if not mem[(2 * ceil32(return_data.size)) + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg2
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = block.timestamp
            require ext_code.size(address(poolAddress))
            call address(poolAddress).swapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args tokenIndex[address(arg3)], tokenIndex[arg4], arg1, arg2, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg5 != this.address:
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg5), arg2, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                call arg4.mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 0, stor4) == bool(0, Mask(224, 0, stor4))
                        if not 0, Mask(224, 0, stor4):
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                        if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0xe2bdbc6b: arg1, arg2, arg3, arg4
}



}
