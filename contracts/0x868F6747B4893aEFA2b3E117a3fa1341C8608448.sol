contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
address stor4;
uint256 stor4;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function impermaxBorrow(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
}

function transferOwnership(address arg1) {
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

function pull(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function impermaxRedeem(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'invalid1'
    if address(stor4) != msg.sender:
        revert with 0, 'invalid2'
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args stor3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.getUniswapV2Pair(address arg1) with:
            gas gas_remaining wei
           args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.isStakedLPToken(address arg1) with:
            gas gas_remaining wei
           args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor3)
        call stor3.redeem(address arg1) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).burn(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(stor4))
    staticcall address(stor4).borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor4))
    staticcall address(stor4).borrowable1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        require ext_code.size(stor1)
        staticcall stor1.getUniswapV2Pair(address arg1) with:
                gas gas_remaining wei
               args stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        revert with 0, 32, 44, 0x73556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[272 len 20]
    if ext_call.return_data[32] >= ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).liquidate(address arg1, address arg2) with:
             gas gas_remaining wei
            args stor2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).liquidate(address arg1, address arg2) with:
             gas gas_remaining wei
            args stor2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor4))
        call address(stor4).exchangeRate() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg2:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + 1 < 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(address(stor4))
            call address(stor4).0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor4), (0 / ext_call.return_data[0]) + 1
        else:
            require arg2
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * arg2 / ext_call.return_data[0]) + 1 < 10^18 * arg2 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(address(stor4))
            call address(stor4).0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor4), (10^18 * arg2 / ext_call.return_data[0]) + 1
    else:
        require ext_code.size(stor1)
        staticcall stor1.getUniswapV2Pair(address arg1) with:
                gas gas_remaining wei
               args stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[32] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
            revert with 0, 32, 44, 0x73556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[272 len 20]
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 32, 40, 0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[268 len 24]
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 32, 40, 0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[268 len 24]
        if not Mask(112, 0, ext_call.return_data[0]):
            if ext_call.return_data[0] - ext_call.return_data[32] > Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: subtraction overflow'
            require Mask(112, 0, ext_call.return_data[32]) - ext_call.return_data[0] + ext_call.return_data[32]
            require Mask(112, 0, ext_call.return_data[32]) - ext_call.return_data[0] + ext_call.return_data[32]
            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * ext_call.return_data[0]) + (997 * ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) - ext_call.return_data[0] + ext_call.return_data[32] != 997:
                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * ext_call.return_data[0]) + (997 * ext_call.return_data[32])
            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * ext_call.return_data[0]) + (997 * ext_call.return_data[32])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * ext_call.return_data[0]) + (997 * ext_call.return_data[32]):
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * ext_call.return_data[0]) + (997 * ext_call.return_data[32])) + 1
        else:
            require Mask(112, 0, ext_call.return_data[0])
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[0] - ext_call.return_data[32]:
                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])):
                if ext_call.return_data[0] - ext_call.return_data[32] > Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: subtraction overflow'
                require Mask(112, 0, ext_call.return_data[32]) - ext_call.return_data[0] + ext_call.return_data[32]
                require Mask(112, 0, ext_call.return_data[32]) - ext_call.return_data[0] + ext_call.return_data[32]
                if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * ext_call.return_data[0]) + (997 * ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) - ext_call.return_data[0] + ext_call.return_data[32] != 997:
                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * ext_call.return_data[0]) + (997 * ext_call.return_data[32])
                if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * ext_call.return_data[0]) + (997 * ext_call.return_data[32])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * ext_call.return_data[0]) + (997 * ext_call.return_data[32]):
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * ext_call.return_data[0]) + (997 * ext_call.return_data[32])) + 1
            else:
                require (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]))
                if (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) != 1000:
                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] - ext_call.return_data[32] > Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: subtraction overflow'
                require Mask(112, 0, ext_call.return_data[32]) - ext_call.return_data[0] + ext_call.return_data[32]
                require Mask(112, 0, ext_call.return_data[32]) - ext_call.return_data[0] + ext_call.return_data[32]
                if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * ext_call.return_data[0]) + (997 * ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) - ext_call.return_data[0] + ext_call.return_data[32] != 997:
                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * ext_call.return_data[0]) + (997 * ext_call.return_data[32])
                if ((1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * ext_call.return_data[0]) + (997 * ext_call.return_data[32])) + 1 < (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * ext_call.return_data[0]) + (997 * ext_call.return_data[32]):
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ((1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * ext_call.return_data[0]) + (997 * ext_call.return_data[32])) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0] - ext_call.return_data[32], address(this.address), 128, 0, mem[388]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).liquidate(address arg1, address arg2) with:
             gas gas_remaining wei
            args stor2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).liquidate(address arg1, address arg2) with:
             gas gas_remaining wei
            args stor2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor4))
        call address(stor4).exchangeRate() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg2:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + 1 < 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(address(stor4))
            call address(stor4).0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor4), (0 / ext_call.return_data[0]) + 1
        else:
            require arg2
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 'YSafeMath: multiplication overflo'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * arg2 / ext_call.return_data[0]) + 1 < 10^18 * arg2 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(address(stor4))
            call address(stor4).0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor4), (10^18 * arg2 / ext_call.return_data[0]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function executeFlashRedeem(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
    stor3 = arg2
    require ext_code.size(stor1)
    staticcall stor1.getCollateral(address arg1) with:
            gas gas_remaining wei
           args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
    require ext_code.size(address(stor4))
    staticcall address(stor4).borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor4))
    staticcall address(stor4).borrowable1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor4))
    call address(stor4).exchangeRate() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor4))
    call address(stor4).getPrices() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(stor4))
    staticcall address(stor4).liquidationIncentive() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not uint255(0 / ext_call.return_data[0]):
                require ext_code.size(address(stor4))
                call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args address(this.address), 0, 96, 1, uint8('x')
            else:
                require 2 * 0 / ext_call.return_data[0]
                if 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 2 * 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    require ext_code.size(address(stor4))
                    call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(this.address), 0, 96, 1, uint8('x')
                else:
                    require 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                    if 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg3 / 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != arg3:
                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    require ext_code.size(address(stor4))
                    call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(this.address), 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg3 / 1000, 'x'
        else:
            require ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if not uint255(0 / ext_call.return_data[0]):
                    require ext_code.size(address(stor4))
                    call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(this.address), 0, 96, 1, uint8('x')
                else:
                    require 2 * 0 / ext_call.return_data[0]
                    if 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 2 * 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        require ext_code.size(address(stor4))
                        call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args address(this.address), 0, 96, 1, uint8('x')
                    else:
                        require 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                        if 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg3 / 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != arg3:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(address(stor4))
                        call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args address(this.address), 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg3 / 1000, 'x'
            else:
                require ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != ext_call.return_data[32]:
                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if not (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]):
                    require ext_code.size(address(stor4))
                    call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(this.address), 0, 96, 1, uint8('x')
                else:
                    require (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0])
                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]) / (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]) != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                        require ext_code.size(address(stor4))
                        call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args address(this.address), 0, 96, 1, uint8('x')
                    else:
                        require (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * arg3 / (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 != arg3:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(address(stor4))
                        call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args address(this.address), (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * arg3 / 1000, 'x'
    else:
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if not uint255(0 / ext_call.return_data[0]):
                    require ext_code.size(address(stor4))
                    call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(this.address), 0, 96, 1, uint8('x')
                else:
                    require 2 * 0 / ext_call.return_data[0]
                    if 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 2 * 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        require ext_code.size(address(stor4))
                        call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args address(this.address), 0, 96, 1, uint8('x')
                    else:
                        require 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                        if 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg3 / 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != arg3:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(address(stor4))
                        call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args address(this.address), 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg3 / 1000, 'x'
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if not uint255(0 / ext_call.return_data[0]):
                        require ext_code.size(address(stor4))
                        call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args address(this.address), 0, 96, 1, uint8('x')
                    else:
                        require 2 * 0 / ext_call.return_data[0]
                        if 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 2 * 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            require ext_code.size(address(stor4))
                            call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), 0, 96, 1, uint8('x')
                        else:
                            require 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                            if 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg3 / 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != arg3:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            require ext_code.size(address(stor4))
                            call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), 2 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg3 / 1000, 'x'
                else:
                    require ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != ext_call.return_data[32]:
                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if not (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]):
                        require ext_code.size(address(stor4))
                        call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args address(this.address), 0, 96, 1, uint8('x')
                    else:
                        require (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0])
                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]) / (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]) != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                            require ext_code.size(address(stor4))
                            call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), 0, 96, 1, uint8('x')
                        else:
                            require (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * arg3 / (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 != arg3:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            require ext_code.size(address(stor4))
                            call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * arg3 / 1000, 'x'
        else:
            require ext_call.return_data[0] * ext_call.return_data[0] / 10^18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                    require ext_code.size(address(stor4))
                    call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(this.address), 0, 96, 1, uint8('x')
                else:
                    require (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                        require ext_code.size(address(stor4))
                        call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args address(this.address), 0, 96, 1, uint8('x')
                    else:
                        require (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * arg3 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 != arg3:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(address(stor4))
                        call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * arg3 / 1000, 'x'
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                        require ext_code.size(address(stor4))
                        call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args address(this.address), 0, 96, 1, uint8('x')
                    else:
                        require (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                            require ext_code.size(address(stor4))
                            call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), 0, 96, 1, uint8('x')
                        else:
                            require (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * arg3 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 != arg3:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            require ext_code.size(address(stor4))
                            call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * arg3 / 1000, 'x'
                else:
                    require ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != ext_call.return_data[32]:
                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]):
                        require ext_code.size(address(stor4))
                        call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args address(this.address), 0, 96, 1, uint8('x')
                    else:
                        require (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0])
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]) != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                            require ext_code.size(address(stor4))
                            call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), 0, 96, 1, uint8('x')
                        else:
                            require (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * arg3 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 != arg3:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            require ext_code.size(address(stor4))
                            call address(stor4).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * arg3 / 1000, 'x'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor4))
    staticcall address(stor4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor4))
    call address(stor4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor4))
    staticcall address(stor4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.deleverage(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes arg6) with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0], 0, 0, block.timestamp, 192, 0, mem[772]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}



}
