contract main {




// =====================  Runtime code  =====================


const poolFeeCompliment = 9996

const id = 0xaec26649949add5da1380e69e40d8ad88eb5b8cab3e19679991eecee70ee9f21

const bips = 10000


address owner;
uint256 swapGasEstimate;
array of uint256 name;
mapping of uint8 stor4;
mapping of uint8 tokenIndex;
uint8 numberOfTokens;
uint32 stor6;
address poolAddress; offset 8
uint256 stor6;

function name() {
    return name[0 len name.length]
}

function pool() {
    return poolAddress
}

function tokenIndex(address arg1) {
    require calldata.size - 4 >= 32
    return uint8(tokenIndex[arg1])
}

function swapGasEstimate() {
    return swapGasEstimate
}

function owner() {
    return owner
}

function isPoolToken(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function numberOfTokens() {
    return numberOfTokens
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

function recoverETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Adapter: Nothing to recover'
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

function revokeAllowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    mem[196 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
    call arg1 with:
         gas gas_remaining wei
        args 0, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not approve(address arg1, uint256 arg2), address(arg2) << 64:
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
}

function recoverERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'Adapter: Nothing to recover'
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    emit Recovered(arg2, arg1);
}

function query(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        return 0
    if arg2 == arg3:
        return 0
    if not stor4[address(arg2)]:
        return 0
    if not stor4[address(arg3)]:
        return 0
    require ext_code.size(poolAddress)
    staticcall poolAddress.0x5c975abb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return 0
    if numberOfTokens == uint8(tokenIndex[address(arg2)]):
        if numberOfTokens != uint8(tokenIndex[address(arg3)]):
            if numberOfTokens != uint8(tokenIndex[address(arg2)]):
                return 0
            require ext_code.size(poolAddress)
            staticcall poolAddress.calculateRemoveLiquidityOneToken(uint256 arg1, uint8 arg2) with:
                    gas gas_remaining wei
                   args arg1, uint8(tokenIndex[address(arg3)])
        else:
            require uint8(tokenIndex[address(arg2)]) < 3
            mem[(32 * uint8(tokenIndex[address(arg2)])) + 128] = arg1
            mem[324 len 0] = None
            require ext_code.size(poolAddress)
            staticcall poolAddress.calculateTokenAmount(uint256[] arg1, bool arg2) with:
                    gas gas_remaining wei
                   args Array(len=3, data=mem[324 len 96]), 1
    else:
        if numberOfTokens != uint8(tokenIndex[address(arg3)]):
            require ext_code.size(poolAddress)
            staticcall poolAddress.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args uint8(tokenIndex[address(arg2)]), uint8(tokenIndex[arg3]), arg1
        else:
            if numberOfTokens != uint8(tokenIndex[address(arg3)]):
                if numberOfTokens != uint8(tokenIndex[address(arg2)]):
                    return 0
                require ext_code.size(poolAddress)
                staticcall poolAddress.calculateRemoveLiquidityOneToken(uint256 arg1, uint8 arg2) with:
                        gas gas_remaining wei
                       args arg1, uint8(tokenIndex[address(arg3)])
            else:
                require uint8(tokenIndex[address(arg2)]) < 3
                mem[(32 * uint8(tokenIndex[address(arg2)])) + 128] = arg1
                mem[324 len 0] = None
                require ext_code.size(poolAddress)
                staticcall poolAddress.calculateTokenAmount(uint256[] arg1, bool arg2) with:
                        gas gas_remaining wei
                       args Array(len=3, data=mem[324 len 96]), 1
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    if 9996 * ext_call.return_data[0] / 9996 != ext_call.return_data[0]:
        revert with 0, 'SafeMath: ds-math-mul-overflow'
    return (9996 * ext_call.return_data[0] / 10000)
}

function swap(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require ext_code.size(arg3)
    staticcall arg3.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, poolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if numberOfTokens == uint8(tokenIndex[address(arg3)]):
            if numberOfTokens != uint8(tokenIndex[address(arg4)]):
                if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                    require ext_code.size(poolAddress)
                    call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, uint32(arg1), uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg5 != this.address:
                        mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                        call arg4 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[260 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0xa9059cbb(?????), address(arg5) << 64:
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 307 len 22]
            else:
                require uint8(tokenIndex[address(arg3)]) < 3
                mem[(32 * uint8(tokenIndex[address(arg3)])) + 128] = arg1
                mem[356 len 0] = None
                require ext_code.size(poolAddress)
                call poolAddress.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Array(len=3, data=mem[356 len 96]), arg2, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg5 == this.address:
                    if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                        require ext_code.size(poolAddress)
                        call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg5 != this.address:
                            mem[324 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                            call arg4 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'SafeERC20: low-level call failed'
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                else:
                    mem[324 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                    call arg4 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                        require ext_code.size(poolAddress)
                        call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg5 != this.address:
                            mem[ceil32(return_data.size) + 425 len 64] = 0, address(arg5), Mask(224, 32, arg2) >> 32
                            call arg4 with:
                               funct Mask(32, 224, block.timestamp) >> 224
                                 gas gas_remaining wei
                                args arg2, Mask(224, 32, address(arg5), Mask(224, 32, arg2) >> 32) >> 32, mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'SafeERC20: low-level call failed'
                            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
        else:
            if numberOfTokens != uint8(tokenIndex[address(arg4)]):
                require ext_code.size(poolAddress)
                call poolAddress.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, uint32(tokenIndex[address(arg3)]), uint8(tokenIndex[arg4]), arg1, arg2, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg5 != this.address:
                    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                    call arg4 with:
                       funct uint32(arg2)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[260 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0xa9059cbb(?????), address(arg5) << 64:
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[228]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 307 len 22]
            else:
                if numberOfTokens != uint8(tokenIndex[address(arg4)]):
                    if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                        require ext_code.size(poolAddress)
                        call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args 0, uint32(arg1), uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg5 != this.address:
                            mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                            call arg4 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[260 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not unknown_0xa9059cbb(?????), address(arg5) << 64:
                                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                            else:
                                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[228]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 307 len 22]
                else:
                    require uint8(tokenIndex[address(arg3)]) < 3
                    mem[(32 * uint8(tokenIndex[address(arg3)])) + 128] = arg1
                    mem[356 len 0] = None
                    require ext_code.size(poolAddress)
                    call poolAddress.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args Array(len=3, data=mem[356 len 96]), arg2, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg5 == this.address:
                        if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                            require ext_code.size(poolAddress)
                            call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg5 != this.address:
                                mem[324 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                                call arg4 with:
                                   funct Mask(32, 224, block.timestamp) >> 224
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[388 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 435 len 22]
                    else:
                        mem[324 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                        call arg4 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                            require ext_code.size(poolAddress)
                            call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg5 != this.address:
                                mem[ceil32(return_data.size) + 425 len 64] = 0, address(arg5), Mask(224, 32, arg2) >> 32
                                call arg4 with:
                                   funct Mask(32, 224, block.timestamp) >> 224
                                     gas gas_remaining wei
                                    args arg2, Mask(224, 32, address(arg5), Mask(224, 32, arg2) >> 32) >> 32, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
        emit 0xad92f8a6: arg1, arg2, arg3, arg4
    else:
        require ext_code.size(arg3)
        staticcall arg3.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, poolAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
        mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg3 with:
           funct uint32(stor6.field_0)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
            if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                if numberOfTokens != uint8(tokenIndex[address(arg4)]):
                    if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                        require ext_code.size(poolAddress)
                        call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg5 != this.address:
                            mem[296 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                            call arg4 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[360 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[406 len 22]
                            else:
                                mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[328]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 407 len 22]
                    emit 0xad92f8a6: arg1, arg2, arg3, arg4
                else:
                    require uint8(tokenIndex[address(arg3)]) < 3
                    mem[(32 * uint8(tokenIndex[address(arg3)])) + 228] = arg1
                    mem[456 len 0] = None
                    require ext_code.size(poolAddress)
                    call poolAddress.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args Array(len=3, data=mem[456 len 96]), arg2, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg5 == this.address:
                        if numberOfTokens != uint8(tokenIndex[address(arg3)]):
                            emit 0xad92f8a6: arg1, arg2, arg3, arg4
                        else:
                            require ext_code.size(poolAddress)
                            call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg5 == this.address:
                                emit 0xad92f8a6: arg1, arg2, arg3, arg4
                            else:
                                mem[424 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                                call arg4 with:
                                   funct Mask(32, 224, block.timestamp) >> 224
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                        revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                                    emit 0xad92f8a6: arg1, 0, arg2, arg3, arg4
                                else:
                                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[456]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                                    emit 0xad92f8a6: arg1, arg2, arg3, arg4
                    else:
                        mem[424 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                        call arg4 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                            if numberOfTokens != uint8(tokenIndex[address(arg3)]):
                                emit 0xad92f8a6: arg1, 0, arg2, arg3, arg4
                            else:
                                require ext_code.size(poolAddress)
                                call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg5 != this.address:
                                    mem[524 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[588 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[634 len 22]
                                    else:
                                        mem[556 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[556]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 635 len 22]
                                emit 0xad92f8a6: arg1, arg2, arg3, arg4
                        else:
                            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[456]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                            if numberOfTokens != uint8(tokenIndex[address(arg3)]):
                                emit 0xad92f8a6: arg1, arg2, arg3, arg4
                            else:
                                require ext_code.size(poolAddress)
                                call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg5 == this.address:
                                    emit 0xad92f8a6: arg1, arg2, arg3, arg4
                                else:
                                    mem[ceil32(return_data.size) + 525 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                                    mem[ceil32(return_data.size) + 617 len 4] = uint32(arg2)
                                    call arg4 with:
                                       funct Mask(32, 224, block.timestamp) >> 224
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 589 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 635 len 22]
                                        emit 0xad92f8a6: arg1, arg2, arg3, arg4
                                    else:
                                        mem[ceil32(return_data.size) + 557 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 626 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 557]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 636 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        emit 0xad92f8a6: arg1, arg2, mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg3, arg4
            else:
                if numberOfTokens != uint8(tokenIndex[address(arg4)]):
                    require ext_code.size(poolAddress)
                    call poolAddress.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args uint8(tokenIndex[address(arg3)]), uint8(tokenIndex[arg4]), arg1, arg2, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg5 != this.address:
                        mem[296 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                        call arg4 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[360 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[406 len 22]
                        else:
                            mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[328]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 407 len 22]
                else:
                    if numberOfTokens != uint8(tokenIndex[address(arg4)]):
                        if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                            require ext_code.size(poolAddress)
                            call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg5 != this.address:
                                mem[296 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                                call arg4 with:
                                   funct Mask(32, 224, block.timestamp) >> 224
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[360 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                        revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[406 len 22]
                                else:
                                    mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[328]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 407 len 22]
                    else:
                        require uint8(tokenIndex[address(arg3)]) < 3
                        mem[(32 * uint8(tokenIndex[address(arg3)])) + 228] = arg1
                        mem[456 len 0] = None
                        require ext_code.size(poolAddress)
                        call poolAddress.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args Array(len=3, data=mem[456 len 96]), arg2, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg5 == this.address:
                            if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                                require ext_code.size(poolAddress)
                                call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg5 != this.address:
                                    mem[424 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[488 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                                    else:
                                        mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[456]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 535 len 22]
                        else:
                            mem[424 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                            call arg4 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[488 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                                if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                                    require ext_code.size(poolAddress)
                                    call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if arg5 != this.address:
                                        mem[524 len 64] = 0, address(arg5), Mask(224, 32, arg2) >> 32
                                        call arg4 with:
                                           funct Mask(32, 224, block.timestamp) >> 224
                                             gas gas_remaining wei
                                            args arg2, Mask(224, 32, address(arg5), Mask(224, 32, arg2) >> 32) >> 32, mem[588 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[634 len 22]
                                        else:
                                            mem[556 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[556]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 635 len 22]
                            else:
                                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[456]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                                    require ext_code.size(poolAddress)
                                    call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if arg5 != this.address:
                                        mem[ceil32(return_data.size) + 525 len 64] = 0, address(arg5), Mask(224, 32, arg2) >> 32
                                        call arg4 with:
                                           funct Mask(32, 224, block.timestamp) >> 224
                                             gas gas_remaining wei
                                            args arg2, Mask(224, 32, address(arg5), Mask(224, 32, arg2) >> 32) >> 32, mem[ceil32(return_data.size) + 589 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 635 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 557 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 557]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 636 len 22]
                emit 0xad92f8a6: arg1, arg2, arg3, arg4
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                    if numberOfTokens != uint8(tokenIndex[address(arg4)]):
                        if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                            require ext_code.size(poolAddress)
                            call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg5 != this.address:
                                mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                                call arg4 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 361 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 407 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 329]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 408 len 22]
                    else:
                        require uint8(tokenIndex[address(arg3)]) < 3
                        mem[(32 * uint8(tokenIndex[address(arg3)])) + ceil32(return_data.size) + 229] = arg1
                        mem[ceil32(return_data.size) + 457 len 0] = None
                        require ext_code.size(poolAddress)
                        call poolAddress.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args Array(len=3, data=mem[ceil32(return_data.size) + 457 len 96]), arg2, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg5 == this.address:
                            if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                                require ext_code.size(poolAddress)
                                call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg5 != this.address:
                                    mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 457]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                        else:
                            mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                            call arg4 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                                if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                                    require ext_code.size(poolAddress)
                                    call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if arg5 != this.address:
                                        mem[ceil32(return_data.size) + 525 len 64] = 0, address(arg5), Mask(224, 32, arg2) >> 32
                                        call arg4 with:
                                           funct Mask(32, 224, block.timestamp) >> 224
                                             gas gas_remaining wei
                                            args arg2, Mask(224, 32, address(arg5), Mask(224, 32, arg2) >> 32) >> 32, mem[ceil32(return_data.size) + 589 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 635 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 557 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 557]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 636 len 22]
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                                    require ext_code.size(poolAddress)
                                    call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if arg5 != this.address:
                                        mem[(2 * ceil32(return_data.size)) + 526 len 64] = 0, address(arg5), Mask(224, 32, arg2) >> 32
                                        call arg4 with:
                                           funct Mask(32, 224, block.timestamp) >> 224
                                             gas gas_remaining wei
                                            args arg2, Mask(224, 32, address(arg5), Mask(224, 32, arg2) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 590 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 636 len 22]
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + 558 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[(2 * ceil32(return_data.size)) + 558]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 637 len 22]
                    emit 0xad92f8a6: arg1, arg2, arg3, arg4
                else:
                    if numberOfTokens != uint8(tokenIndex[address(arg4)]):
                        require ext_code.size(poolAddress)
                        call poolAddress.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args uint8(tokenIndex[address(arg3)]), uint8(tokenIndex[arg4]), arg1, arg2, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg5 == this.address:
                            emit 0xad92f8a6: arg1, arg2, arg3, arg4
                        else:
                            mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                            mem[ceil32(return_data.size) + 389 len 4] = uint32(arg2)
                            call arg4 with:
                               funct uint32(arg2)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 361 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 407 len 22]
                                emit 0xad92f8a6: arg1, arg2, arg3, arg4
                            else:
                                mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 329]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 408 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                emit 0xad92f8a6: arg1, arg2, mem[(2 * ceil32(return_data.size)) + 362 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg3, arg4
                    else:
                        if numberOfTokens != uint8(tokenIndex[address(arg4)]):
                            if numberOfTokens != uint8(tokenIndex[address(arg3)]):
                                emit 0xad92f8a6: arg1, arg2, arg3, arg4
                            else:
                                require ext_code.size(poolAddress)
                                call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg5 == this.address:
                                    emit 0xad92f8a6: arg1, arg2, arg3, arg4
                                else:
                                    mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                                    mem[ceil32(return_data.size) + 389 len 4] = uint32(arg2)
                                    call arg4 with:
                                       funct Mask(32, 224, block.timestamp) >> 224
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 361 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 407 len 22]
                                        emit 0xad92f8a6: arg1, arg2, arg3, arg4
                                    else:
                                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 329]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 408 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        emit 0xad92f8a6: arg1, arg2, mem[(2 * ceil32(return_data.size)) + 362 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg3, arg4
                        else:
                            require uint8(tokenIndex[address(arg3)]) < 3
                            mem[(32 * uint8(tokenIndex[address(arg3)])) + ceil32(return_data.size) + 229] = arg1
                            mem[ceil32(return_data.size) + 457 len 0] = None
                            require ext_code.size(poolAddress)
                            call poolAddress.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args Array(len=3, data=mem[ceil32(return_data.size) + 457 len 96]), arg2, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg5 == this.address:
                                if numberOfTokens != uint8(tokenIndex[address(arg3)]):
                                    emit 0xad92f8a6: arg1, arg2, arg3, arg4
                                else:
                                    require ext_code.size(poolAddress)
                                    call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if arg5 == this.address:
                                        emit 0xad92f8a6: arg1, arg2, arg3, arg4
                                    else:
                                        mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                                        mem[ceil32(return_data.size) + 517 len 4] = uint32(arg2)
                                        call arg4 with:
                                           funct Mask(32, 224, block.timestamp) >> 224
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 489 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 535 len 22]
                                            emit 0xad92f8a6: arg1, 0, arg2, arg3, arg4
                                        else:
                                            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 457]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            emit 0xad92f8a6: arg1, arg2, mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg3, arg4
                            else:
                                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                                call arg4 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                    if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                                        require ext_code.size(poolAddress)
                                        call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if arg5 != this.address:
                                            mem[ceil32(return_data.size) + 525 len 64] = 0, address(arg5), Mask(224, 32, arg2) >> 32
                                            call arg4 with:
                                               funct Mask(32, 224, block.timestamp) >> 224
                                                 gas gas_remaining wei
                                                args arg2, Mask(224, 32, address(arg5), Mask(224, 32, arg2) >> 32) >> 32, mem[ceil32(return_data.size) + 589 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 635 len 22]
                                            else:
                                                mem[ceil32(return_data.size) + 557 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 557]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 636 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                    if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                                        require ext_code.size(poolAddress)
                                        call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if arg5 != this.address:
                                            mem[(2 * ceil32(return_data.size)) + 526 len 64] = 0, address(arg5), Mask(224, 32, arg2) >> 32
                                            call arg4 with:
                                               funct Mask(32, 224, block.timestamp) >> 224
                                                 gas gas_remaining wei
                                                args arg2, Mask(224, 32, address(arg5), Mask(224, 32, arg2) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 590 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 636 len 22]
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + 558 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[(2 * ceil32(return_data.size)) + 558]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 637 len 22]
                                emit 0xad92f8a6: arg1, arg2, arg3, arg4
            else:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
                if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                    if numberOfTokens != uint8(tokenIndex[address(arg4)]):
                        if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                            require ext_code.size(poolAddress)
                            call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg5 != this.address:
                                mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                                call arg4 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 361 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 407 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 329]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 408 len 22]
                    else:
                        require uint8(tokenIndex[address(arg3)]) < 3
                        mem[(32 * uint8(tokenIndex[address(arg3)])) + ceil32(return_data.size) + 229] = arg1
                        mem[ceil32(return_data.size) + 457 len 0] = None
                        require ext_code.size(poolAddress)
                        call poolAddress.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args Array(len=3, data=mem[ceil32(return_data.size) + 457 len 96]), arg2, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg5 == this.address:
                            if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                                require ext_code.size(poolAddress)
                                call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg5 != this.address:
                                    mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 457]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                        else:
                            mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                            call arg4 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                                if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                                    require ext_code.size(poolAddress)
                                    call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if arg5 != this.address:
                                        mem[ceil32(return_data.size) + 525 len 64] = 0, address(arg5), Mask(224, 32, arg2) >> 32
                                        call arg4 with:
                                           funct Mask(32, 224, block.timestamp) >> 224
                                             gas gas_remaining wei
                                            args arg2, Mask(224, 32, address(arg5), Mask(224, 32, arg2) >> 32) >> 32, mem[ceil32(return_data.size) + 589 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 635 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 557 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 557]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 636 len 22]
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                                    require ext_code.size(poolAddress)
                                    call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if arg5 != this.address:
                                        mem[(2 * ceil32(return_data.size)) + 526 len 64] = 0, address(arg5), Mask(224, 32, arg2) >> 32
                                        call arg4 with:
                                           funct Mask(32, 224, block.timestamp) >> 224
                                             gas gas_remaining wei
                                            args arg2, Mask(224, 32, address(arg5), Mask(224, 32, arg2) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 590 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 636 len 22]
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + 558 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[(2 * ceil32(return_data.size)) + 558]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 637 len 22]
                else:
                    if numberOfTokens != uint8(tokenIndex[address(arg4)]):
                        require ext_code.size(poolAddress)
                        call poolAddress.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args uint8(tokenIndex[address(arg3)]), uint8(tokenIndex[arg4]), arg1, arg2, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg5 != this.address:
                            mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                            call arg4 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 361 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 407 len 22]
                            else:
                                mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 329]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 408 len 22]
                    else:
                        if numberOfTokens != uint8(tokenIndex[address(arg4)]):
                            if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                                require ext_code.size(poolAddress)
                                call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg5 != this.address:
                                    mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 361 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 407 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 329]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 408 len 22]
                        else:
                            require uint8(tokenIndex[address(arg3)]) < 3
                            mem[(32 * uint8(tokenIndex[address(arg3)])) + ceil32(return_data.size) + 229] = arg1
                            mem[ceil32(return_data.size) + 457 len 0] = None
                            require ext_code.size(poolAddress)
                            call poolAddress.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args Array(len=3, data=mem[ceil32(return_data.size) + 457 len 96]), arg2, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg5 == this.address:
                                if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                                    require ext_code.size(poolAddress)
                                    call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if arg5 != this.address:
                                        mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                                        call arg4 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 489 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 535 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 457]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
                            else:
                                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg2) >> 32
                                call arg4 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                    if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                                        require ext_code.size(poolAddress)
                                        call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if arg5 != this.address:
                                            mem[ceil32(return_data.size) + 525 len 64] = 0, address(arg5), Mask(224, 32, arg2) >> 32
                                            call arg4 with:
                                               funct Mask(32, 224, block.timestamp) >> 224
                                                 gas gas_remaining wei
                                                args arg2, Mask(224, 32, address(arg5), Mask(224, 32, arg2) >> 32) >> 32, mem[ceil32(return_data.size) + 589 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 635 len 22]
                                            else:
                                                mem[ceil32(return_data.size) + 557 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 557]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 636 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                    if numberOfTokens == uint8(tokenIndex[address(arg3)]):
                                        require ext_code.size(poolAddress)
                                        call poolAddress.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args arg1, uint8(tokenIndex[address(arg4)]), arg2, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if arg5 != this.address:
                                            mem[(2 * ceil32(return_data.size)) + 526 len 64] = 0, address(arg5), Mask(224, 32, arg2) >> 32
                                            call arg4 with:
                                               funct Mask(32, 224, block.timestamp) >> 224
                                                 gas gas_remaining wei
                                                args arg2, Mask(224, 32, address(arg5), Mask(224, 32, arg2) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 590 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0):
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 636 len 22]
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + 558 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[(2 * ceil32(return_data.size)) + 558]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 637 len 22]
                emit 0xad92f8a6: arg1, arg2, arg3, arg4
}



}
