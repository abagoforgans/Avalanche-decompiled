contract main {




// =====================  Runtime code  =====================


#
#  - removeLiquidity(uint256 arg1)
#
const getInterestParameters = 80, 0, 4, 75


uint256 cumulativeIndex;
uint256 stor1;
uint256 stor2;
address owner;
address stor4;
uint256 totalLiquidity;
uint256 availableLiquidity;
mapping of uint256 balanceLiquidity;
uint256 balanceLiquidity;
uint256 profit;
uint256 rate;
address underlyingTokenAddress;
address dieselTokenAddress;
address stor14;

function getDieselToken() payable {
    return dieselTokenAddress
}

function getTotalLiquidity() payable {
    return totalLiquidity
}

function getRate() payable {
    return rate
}

function getProfit() payable {
    return profit
}

function getBalanceLiquidity() payable {
    return balanceLiquidity
}

function owner() payable {
    return owner
}

function getAvailableLiquidity() payable {
    return availableLiquidity
}

function getCumulativeIndex() payable {
    return cumulativeIndex
}

function getUnderlyingToken() payable {
    return underlyingTokenAddress
}

function getBalanceLiquidity(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceLiquidity[address(arg1)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approveOnUniswap(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor14, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getCurrentBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(dieselTokenAddress)
    staticcall dieselTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if rate * ext_call.return_data[0] / ext_call.return_data[0] != rate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (rate * ext_call.return_data[0] / 10^18)
}

function calcLinearIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1:
        if not cumulativeIndex:
            return 0
        if 10^18 * cumulativeIndex / cumulativeIndex != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (10^18 * cumulativeIndex / 10^18)
    if arg1 * stor1 / stor1 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (arg1 * stor1 / 8760 * 24 * 3600) + 10^18 < arg1 * stor1 / 8760 * 24 * 3600:
        revert with 0, 'SafeMath: addition overflow'
    if not cumulativeIndex:
        return 0
    if (10^18 * cumulativeIndex) + (arg1 * stor1 / 8760 * 24 * 3600 * cumulativeIndex) / cumulativeIndex != (arg1 * stor1 / 8760 * 24 * 3600) + 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((10^18 * cumulativeIndex) + (arg1 * stor1 / 8760 * 24 * 3600 * cumulativeIndex) / 10^18)
}

function sub_1f263f59(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[196] = this.address
    mem[228] = arg4
    mem[164] = 160
    mem[260] = arg3.length
    mem[292 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 292] = 0
    require ext_code.size(stor14)
    call stor14.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, 160, this.address, arg4, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
}

function sub_4fbdff9d(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    mem[96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[196] = this.address
    mem[228] = arg4
    mem[164] = 160
    mem[260] = arg3.length
    mem[292 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 292] = 0
    require ext_code.size(stor14)
    call stor14.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, 160, this.address, arg4, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
}

function calcLinearCumulative_S1() payable {
    if stor2 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor1:
        if not cumulativeIndex:
            return 0
        if 10^18 * cumulativeIndex / cumulativeIndex != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (10^18 * cumulativeIndex / 10^18)
    if (block.timestamp * stor1) - (stor2 * stor1) / stor1 != block.timestamp - stor2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ((block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600) + 10^18 < (block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600:
        revert with 0, 'SafeMath: addition overflow'
    if not cumulativeIndex:
        return 0
    if (10^18 * cumulativeIndex) + ((block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600 * cumulativeIndex) / cumulativeIndex != ((block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600) + 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((10^18 * cumulativeIndex) + ((block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600 * cumulativeIndex) / 10^18)
}

function getAPY(address arg1) payable {
    require calldata.size - 4 >= 32
    if not balanceLiquidity[address(arg1)]:
        return 0
    require ext_code.size(dieselTokenAddress)
    staticcall dieselTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if balanceLiquidity[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -balanceLiquidity[address(arg1)]:
            if balanceLiquidity[address(arg1)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if balanceLiquidity[address(arg1)]:
                return (0 / balanceLiquidity[address(arg1)])
        else:
            if -1 * 10^18 * balanceLiquidity[address(arg1)] / -balanceLiquidity[address(arg1)] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not -1 * 10^18 * balanceLiquidity[address(arg1)]:
                if balanceLiquidity[address(arg1)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if balanceLiquidity[address(arg1)]:
                    return (0 / balanceLiquidity[address(arg1)])
            else:
                if -100 * 10^18 * balanceLiquidity[address(arg1)] / -1 * 10^18 * balanceLiquidity[address(arg1)] != 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if balanceLiquidity[address(arg1)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if balanceLiquidity[address(arg1)]:
                    return (-100 * 10^18 * balanceLiquidity[address(arg1)] / balanceLiquidity[address(arg1)])
    else:
        if rate * ext_call.return_data[0] / ext_call.return_data[0] != rate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if balanceLiquidity[address(arg1)] > rate * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (rate * ext_call.return_data[0] / 10^18) - balanceLiquidity[address(arg1)]:
            if balanceLiquidity[address(arg1)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if balanceLiquidity[address(arg1)]:
                return (0 / balanceLiquidity[address(arg1)])
        else:
            if (10^18 * rate * ext_call.return_data[0] / 10^18) - (10^18 * balanceLiquidity[address(arg1)]) / (rate * ext_call.return_data[0] / 10^18) - balanceLiquidity[address(arg1)] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (10^18 * rate * ext_call.return_data[0] / 10^18) - (10^18 * balanceLiquidity[address(arg1)]):
                if balanceLiquidity[address(arg1)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if balanceLiquidity[address(arg1)]:
                    return (0 / balanceLiquidity[address(arg1)])
            else:
                if (100 * 10^18 * rate * ext_call.return_data[0] / 10^18) - (100 * 10^18 * balanceLiquidity[address(arg1)]) / (10^18 * rate * ext_call.return_data[0] / 10^18) - (10^18 * balanceLiquidity[address(arg1)]) != 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if balanceLiquidity[address(arg1)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if balanceLiquidity[address(arg1)]:
                    return ((100 * 10^18 * rate * ext_call.return_data[0] / 10^18) - (100 * 10^18 * balanceLiquidity[address(arg1)]) / balanceLiquidity[address(arg1)])
    ('iszero', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceLiquidity', 7))))
    revert
}

function calcBorrowRate_S1() payable {
    if not totalLiquidity:
        return 0
    if availableLiquidity > totalLiquidity:
        revert with 0, 'SafeMath: subtraction overflow'
    if not totalLiquidity - availableLiquidity:
        if totalLiquidity <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalLiquidity
        if 0 / totalLiquidity < 80 * 10^18:
            if not 0 / totalLiquidity:
                return 0
            if 4 * 0 / totalLiquidity / 0 / totalLiquidity != 4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 4 * 0 / totalLiquidity / 80 < 4 * 0 / totalLiquidity / 80:
                revert with 0, 'SafeMath: addition overflow'
            return (4 * 0 / totalLiquidity / 80)
        if 80 * 10^18 > 0 / totalLiquidity:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / totalLiquidity) - 80 * 10^18:
            return 4 * 10^18
        if (75 * 0 / totalLiquidity) - 6000 * 10^18 / (0 / totalLiquidity) - 80 * 10^18 != 75:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (75 * 0 / totalLiquidity) - 6000 * 10^18 / 20 < (75 * 0 / totalLiquidity) - 6000 * 10^18 / 20:
            revert with 0, 'SafeMath: addition overflow'
        if ((75 * 0 / totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18 < (75 * 0 / totalLiquidity) - 6000 * 10^18 / 20:
            revert with 0, 'SafeMath: addition overflow'
        return (((75 * 0 / totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18)
    if (10^18 * totalLiquidity) - (10^18 * availableLiquidity) / totalLiquidity - availableLiquidity != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (10^18 * totalLiquidity) - (10^18 * availableLiquidity):
        if totalLiquidity <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalLiquidity
        if 0 / totalLiquidity < 80 * 10^18:
            if not 0 / totalLiquidity:
                return 0
            if 4 * 0 / totalLiquidity / 0 / totalLiquidity != 4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 4 * 0 / totalLiquidity / 80 < 4 * 0 / totalLiquidity / 80:
                revert with 0, 'SafeMath: addition overflow'
            return (4 * 0 / totalLiquidity / 80)
        if 80 * 10^18 > 0 / totalLiquidity:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / totalLiquidity) - 80 * 10^18:
            return 4 * 10^18
        if (75 * 0 / totalLiquidity) - 6000 * 10^18 / (0 / totalLiquidity) - 80 * 10^18 != 75:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (75 * 0 / totalLiquidity) - 6000 * 10^18 / 20 < (75 * 0 / totalLiquidity) - 6000 * 10^18 / 20:
            revert with 0, 'SafeMath: addition overflow'
        if ((75 * 0 / totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18 < (75 * 0 / totalLiquidity) - 6000 * 10^18 / 20:
            revert with 0, 'SafeMath: addition overflow'
        return (((75 * 0 / totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18)
    if (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / (10^18 * totalLiquidity) - (10^18 * availableLiquidity) != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalLiquidity <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalLiquidity
    if (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity < 80 * 10^18:
        if not (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity:
            return 0
        if 4 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity / (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity != 4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 4 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity / 80 < 4 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity / 80:
            revert with 0, 'SafeMath: addition overflow'
        return (4 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity / 80)
    if 80 * 10^18 > (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ((100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 80 * 10^18:
        return 4 * 10^18
    if (75 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 6000 * 10^18 / ((100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 80 * 10^18 != 75:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (75 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 6000 * 10^18 / 20 < (75 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 6000 * 10^18 / 20:
        revert with 0, 'SafeMath: addition overflow'
    if ((75 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18 < (75 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 6000 * 10^18 / 20:
        revert with 0, 'SafeMath: addition overflow'
    return (((75 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18)
}

function updateLeverageOpen(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3 >= availableLiquidity:
        revert with 0, 'Not enough liquidity'
    require ext_code.size(underlyingTokenAddress)
    call underlyingTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 + availableLiquidity < availableLiquidity:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 > arg2 + availableLiquidity:
        revert with 0, 'SafeMath: subtraction overflow'
    availableLiquidity = arg2 + availableLiquidity - arg3
    if arg2 + totalLiquidity < totalLiquidity:
        revert with 0, 'SafeMath: addition overflow'
    totalLiquidity += arg2
    if stor2 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor1:
        if not cumulativeIndex:
            cumulativeIndex = 0
        else:
            if 10^18 * cumulativeIndex / cumulativeIndex != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            cumulativeIndex = 10^18 * cumulativeIndex / 10^18
    else:
        if (block.timestamp * stor1) - (stor2 * stor1) / stor1 != block.timestamp - stor2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ((block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600) + 10^18 < (block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600:
            revert with 0, 'SafeMath: addition overflow'
        if not cumulativeIndex:
            cumulativeIndex = 0
        else:
            if (10^18 * cumulativeIndex) + ((block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600 * cumulativeIndex) / cumulativeIndex != ((block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600) + 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            cumulativeIndex = (10^18 * cumulativeIndex) + ((block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600 * cumulativeIndex) / 10^18
    stor2 = block.timestamp
    if not arg2 + totalLiquidity:
        stor1 = 0
    else:
        if availableLiquidity > arg2 + totalLiquidity:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2 + totalLiquidity - availableLiquidity:
            if arg2 + totalLiquidity <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg2 + totalLiquidity
            if 0 / arg2 + totalLiquidity < 80 * 10^18:
                if not 0 / arg2 + totalLiquidity:
                    stor1 = 0
                else:
                    if 4 * 0 / arg2 + totalLiquidity / 0 / arg2 + totalLiquidity != 4:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 4 * 0 / arg2 + totalLiquidity / 80 < 4 * 0 / arg2 + totalLiquidity / 80:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1 = 4 * 0 / arg2 + totalLiquidity / 80
            else:
                if 80 * 10^18 > 0 / arg2 + totalLiquidity:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / arg2 + totalLiquidity) - 80 * 10^18:
                    stor1 = 4 * 10^18
                else:
                    if (75 * 0 / arg2 + totalLiquidity) - 6000 * 10^18 / (0 / arg2 + totalLiquidity) - 80 * 10^18 != 75:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (75 * 0 / arg2 + totalLiquidity) - 6000 * 10^18 / 20 < (75 * 0 / arg2 + totalLiquidity) - 6000 * 10^18 / 20:
                        revert with 0, 'SafeMath: addition overflow'
                    if ((75 * 0 / arg2 + totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18 < (75 * 0 / arg2 + totalLiquidity) - 6000 * 10^18 / 20:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1 = ((75 * 0 / arg2 + totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18
        else:
            if (10^18 * arg2) + (10^18 * totalLiquidity) - (10^18 * availableLiquidity) / arg2 + totalLiquidity - availableLiquidity != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (10^18 * arg2) + (10^18 * totalLiquidity) - (10^18 * availableLiquidity):
                if arg2 + totalLiquidity <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2 + totalLiquidity
                if 0 / arg2 + totalLiquidity < 80 * 10^18:
                    if not 0 / arg2 + totalLiquidity:
                        stor1 = 0
                    else:
                        if 4 * 0 / arg2 + totalLiquidity / 0 / arg2 + totalLiquidity != 4:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 4 * 0 / arg2 + totalLiquidity / 80 < 4 * 0 / arg2 + totalLiquidity / 80:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1 = 4 * 0 / arg2 + totalLiquidity / 80
                else:
                    if 80 * 10^18 > 0 / arg2 + totalLiquidity:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (0 / arg2 + totalLiquidity) - 80 * 10^18:
                        stor1 = 4 * 10^18
                    else:
                        if (75 * 0 / arg2 + totalLiquidity) - 6000 * 10^18 / (0 / arg2 + totalLiquidity) - 80 * 10^18 != 75:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (75 * 0 / arg2 + totalLiquidity) - 6000 * 10^18 / 20 < (75 * 0 / arg2 + totalLiquidity) - 6000 * 10^18 / 20:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((75 * 0 / arg2 + totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18 < (75 * 0 / arg2 + totalLiquidity) - 6000 * 10^18 / 20:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1 = ((75 * 0 / arg2 + totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18
            else:
                if (100 * 10^18 * arg2) + (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / (10^18 * arg2) + (10^18 * totalLiquidity) - (10^18 * availableLiquidity) != 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg2 + totalLiquidity <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2 + totalLiquidity
                if (100 * 10^18 * arg2) + (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / arg2 + totalLiquidity < 80 * 10^18:
                    if not (100 * 10^18 * arg2) + (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / arg2 + totalLiquidity:
                        stor1 = 0
                    else:
                        if 4 * (100 * 10^18 * arg2) + (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / arg2 + totalLiquidity / (100 * 10^18 * arg2) + (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / arg2 + totalLiquidity != 4:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 4 * (100 * 10^18 * arg2) + (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / arg2 + totalLiquidity / 80 < 4 * (100 * 10^18 * arg2) + (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / arg2 + totalLiquidity / 80:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1 = 4 * (100 * 10^18 * arg2) + (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / arg2 + totalLiquidity / 80
                else:
                    if 80 * 10^18 > (100 * 10^18 * arg2) + (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / arg2 + totalLiquidity:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ((100 * 10^18 * arg2) + (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / arg2 + totalLiquidity) - 80 * 10^18:
                        stor1 = 4 * 10^18
                    else:
                        if (75 * (100 * 10^18 * arg2) + (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / arg2 + totalLiquidity) - 6000 * 10^18 / ((100 * 10^18 * arg2) + (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / arg2 + totalLiquidity) - 80 * 10^18 != 75:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (75 * (100 * 10^18 * arg2) + (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / arg2 + totalLiquidity) - 6000 * 10^18 / 20 < (75 * (100 * 10^18 * arg2) + (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / arg2 + totalLiquidity) - 6000 * 10^18 / 20:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((75 * (100 * 10^18 * arg2) + (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / arg2 + totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18 < (75 * (100 * 10^18 * arg2) + (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / arg2 + totalLiquidity) - 6000 * 10^18 / 20:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1 = ((75 * (100 * 10^18 * arg2) + (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / arg2 + totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18
}

function sub_152ccef7(?) payable {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(underlyingTokenAddress)
    call underlyingTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg6 + totalLiquidity < totalLiquidity:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 > arg6 + totalLiquidity:
        revert with 0, 'SafeMath: subtraction overflow'
    totalLiquidity = arg6 + totalLiquidity - arg3
    if arg6 + profit < profit:
        revert with 0, 'SafeMath: addition overflow'
    profit += arg6
    if arg7:
        if arg2:
            require ext_code.size(underlyingTokenAddress)
            call underlyingTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), arg7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    if arg5 + availableLiquidity < availableLiquidity:
        revert with 0, 'SafeMath: addition overflow'
    availableLiquidity += arg5
    require ext_code.size(dieselTokenAddress)
    staticcall dieselTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if profit + balanceLiquidity < balanceLiquidity:
        revert with 0, 'SafeMath: addition overflow'
    if not profit + balanceLiquidity:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        rate = 0 / ext_call.return_data[0]
    else:
        if (10^18 * profit) + (10^18 * balanceLiquidity) / profit + balanceLiquidity != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        rate = (10^18 * profit) + (10^18 * balanceLiquidity) / ext_call.return_data[0]
    if stor2 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor1:
        if not cumulativeIndex:
            cumulativeIndex = 0
        else:
            if 10^18 * cumulativeIndex / cumulativeIndex != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            cumulativeIndex = 10^18 * cumulativeIndex / 10^18
    else:
        if (block.timestamp * stor1) - (stor2 * stor1) / stor1 != block.timestamp - stor2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ((block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600) + 10^18 < (block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600:
            revert with 0, 'SafeMath: addition overflow'
        if not cumulativeIndex:
            cumulativeIndex = 0
        else:
            if (10^18 * cumulativeIndex) + ((block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600 * cumulativeIndex) / cumulativeIndex != ((block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600) + 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            cumulativeIndex = (10^18 * cumulativeIndex) + ((block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600 * cumulativeIndex) / 10^18
    stor2 = block.timestamp
    if not totalLiquidity:
        stor1 = 0
    else:
        if availableLiquidity > totalLiquidity:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalLiquidity - availableLiquidity:
            if totalLiquidity <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalLiquidity
            if 0 / totalLiquidity < 80 * 10^18:
                if not 0 / totalLiquidity:
                    stor1 = 0
                else:
                    if 4 * 0 / totalLiquidity / 0 / totalLiquidity != 4:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 4 * 0 / totalLiquidity / 80 < 4 * 0 / totalLiquidity / 80:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1 = 4 * 0 / totalLiquidity / 80
            else:
                if 80 * 10^18 > 0 / totalLiquidity:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / totalLiquidity) - 80 * 10^18:
                    stor1 = 4 * 10^18
                else:
                    if (75 * 0 / totalLiquidity) - 6000 * 10^18 / (0 / totalLiquidity) - 80 * 10^18 != 75:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (75 * 0 / totalLiquidity) - 6000 * 10^18 / 20 < (75 * 0 / totalLiquidity) - 6000 * 10^18 / 20:
                        revert with 0, 'SafeMath: addition overflow'
                    if ((75 * 0 / totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18 < (75 * 0 / totalLiquidity) - 6000 * 10^18 / 20:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1 = ((75 * 0 / totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18
        else:
            if (10^18 * totalLiquidity) - (10^18 * availableLiquidity) / totalLiquidity - availableLiquidity != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (10^18 * totalLiquidity) - (10^18 * availableLiquidity):
                if totalLiquidity <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalLiquidity
                if 0 / totalLiquidity < 80 * 10^18:
                    if not 0 / totalLiquidity:
                        stor1 = 0
                    else:
                        if 4 * 0 / totalLiquidity / 0 / totalLiquidity != 4:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 4 * 0 / totalLiquidity / 80 < 4 * 0 / totalLiquidity / 80:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1 = 4 * 0 / totalLiquidity / 80
                else:
                    if 80 * 10^18 > 0 / totalLiquidity:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (0 / totalLiquidity) - 80 * 10^18:
                        stor1 = 4 * 10^18
                    else:
                        if (75 * 0 / totalLiquidity) - 6000 * 10^18 / (0 / totalLiquidity) - 80 * 10^18 != 75:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (75 * 0 / totalLiquidity) - 6000 * 10^18 / 20 < (75 * 0 / totalLiquidity) - 6000 * 10^18 / 20:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((75 * 0 / totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18 < (75 * 0 / totalLiquidity) - 6000 * 10^18 / 20:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1 = ((75 * 0 / totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18
            else:
                if (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / (10^18 * totalLiquidity) - (10^18 * availableLiquidity) != 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalLiquidity <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalLiquidity
                if (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity < 80 * 10^18:
                    if not (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity:
                        stor1 = 0
                    else:
                        if 4 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity / (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity != 4:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 4 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity / 80 < 4 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity / 80:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1 = 4 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity / 80
                else:
                    if 80 * 10^18 > (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ((100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 80 * 10^18:
                        stor1 = 4 * 10^18
                    else:
                        if (75 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 6000 * 10^18 / ((100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 80 * 10^18 != 75:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (75 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 6000 * 10^18 / 20 < (75 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 6000 * 10^18 / 20:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((75 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18 < (75 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 6000 * 10^18 / 20:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1 = ((75 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18
}

function addLiquidity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= 100 * 10^18:
        if stor4 != msg.sender:
            revert with 0, 'NOT MORE in TESTS'
    require ext_code.size(underlyingTokenAddress)
    call underlyingTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if rate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require rate
        require ext_code.size(dieselTokenAddress)
        call dieselTokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0 / rate
    else:
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if rate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require rate
        require ext_code.size(dieselTokenAddress)
        call dieselTokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 10^18 * arg1 / rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 + balanceLiquidity < balanceLiquidity:
        revert with 0, 'SafeMath: addition overflow'
    balanceLiquidity += arg1
    if arg1 + balanceLiquidity[msg.sender] < balanceLiquidity[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceLiquidity[msg.sender] += arg1
    if arg1 + totalLiquidity < totalLiquidity:
        revert with 0, 'SafeMath: addition overflow'
    totalLiquidity += arg1
    if arg1 + availableLiquidity < availableLiquidity:
        revert with 0, 'SafeMath: addition overflow'
    availableLiquidity += arg1
    if stor2 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor1:
        if not cumulativeIndex:
            cumulativeIndex = 0
        else:
            if 10^18 * cumulativeIndex / cumulativeIndex != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            cumulativeIndex = 10^18 * cumulativeIndex / 10^18
    else:
        if (block.timestamp * stor1) - (stor2 * stor1) / stor1 != block.timestamp - stor2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ((block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600) + 10^18 < (block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600:
            revert with 0, 'SafeMath: addition overflow'
        if not cumulativeIndex:
            cumulativeIndex = 0
        else:
            if (10^18 * cumulativeIndex) + ((block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600 * cumulativeIndex) / cumulativeIndex != ((block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600) + 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            cumulativeIndex = (10^18 * cumulativeIndex) + ((block.timestamp * stor1) - (stor2 * stor1) / 8760 * 24 * 3600 * cumulativeIndex) / 10^18
    stor2 = block.timestamp
    if not totalLiquidity:
        stor1 = 0
    else:
        if arg1 + availableLiquidity > totalLiquidity:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalLiquidity - arg1 - availableLiquidity:
            if totalLiquidity <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalLiquidity
            if 0 / totalLiquidity < 80 * 10^18:
                if not 0 / totalLiquidity:
                    stor1 = 0
                else:
                    if 4 * 0 / totalLiquidity / 0 / totalLiquidity != 4:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 4 * 0 / totalLiquidity / 80 < 4 * 0 / totalLiquidity / 80:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1 = 4 * 0 / totalLiquidity / 80
            else:
                if 80 * 10^18 > 0 / totalLiquidity:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / totalLiquidity) - 80 * 10^18:
                    stor1 = 4 * 10^18
                else:
                    if (75 * 0 / totalLiquidity) - 6000 * 10^18 / (0 / totalLiquidity) - 80 * 10^18 != 75:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (75 * 0 / totalLiquidity) - 6000 * 10^18 / 20 < (75 * 0 / totalLiquidity) - 6000 * 10^18 / 20:
                        revert with 0, 'SafeMath: addition overflow'
                    if ((75 * 0 / totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18 < (75 * 0 / totalLiquidity) - 6000 * 10^18 / 20:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1 = ((75 * 0 / totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18
        else:
            if (10^18 * totalLiquidity) - (10^18 * arg1) - (10^18 * availableLiquidity) / totalLiquidity - arg1 - availableLiquidity != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (10^18 * totalLiquidity) - (10^18 * arg1) - (10^18 * availableLiquidity):
                if totalLiquidity <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalLiquidity
                if 0 / totalLiquidity < 80 * 10^18:
                    if not 0 / totalLiquidity:
                        stor1 = 0
                    else:
                        if 4 * 0 / totalLiquidity / 0 / totalLiquidity != 4:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 4 * 0 / totalLiquidity / 80 < 4 * 0 / totalLiquidity / 80:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1 = 4 * 0 / totalLiquidity / 80
                else:
                    if 80 * 10^18 > 0 / totalLiquidity:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (0 / totalLiquidity) - 80 * 10^18:
                        stor1 = 4 * 10^18
                    else:
                        if (75 * 0 / totalLiquidity) - 6000 * 10^18 / (0 / totalLiquidity) - 80 * 10^18 != 75:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (75 * 0 / totalLiquidity) - 6000 * 10^18 / 20 < (75 * 0 / totalLiquidity) - 6000 * 10^18 / 20:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((75 * 0 / totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18 < (75 * 0 / totalLiquidity) - 6000 * 10^18 / 20:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1 = ((75 * 0 / totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18
            else:
                if (100 * 10^18 * totalLiquidity) - (100 * 10^18 * arg1) - (100 * 10^18 * availableLiquidity) / (10^18 * totalLiquidity) - (10^18 * arg1) - (10^18 * availableLiquidity) != 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalLiquidity <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalLiquidity
                if (100 * 10^18 * totalLiquidity) - (100 * 10^18 * arg1) - (100 * 10^18 * availableLiquidity) / totalLiquidity < 80 * 10^18:
                    if not (100 * 10^18 * totalLiquidity) - (100 * 10^18 * arg1) - (100 * 10^18 * availableLiquidity) / totalLiquidity:
                        stor1 = 0
                    else:
                        if 4 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * arg1) - (100 * 10^18 * availableLiquidity) / totalLiquidity / (100 * 10^18 * totalLiquidity) - (100 * 10^18 * arg1) - (100 * 10^18 * availableLiquidity) / totalLiquidity != 4:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 4 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * arg1) - (100 * 10^18 * availableLiquidity) / totalLiquidity / 80 < 4 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * arg1) - (100 * 10^18 * availableLiquidity) / totalLiquidity / 80:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1 = 4 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * arg1) - (100 * 10^18 * availableLiquidity) / totalLiquidity / 80
                else:
                    if 80 * 10^18 > (100 * 10^18 * totalLiquidity) - (100 * 10^18 * arg1) - (100 * 10^18 * availableLiquidity) / totalLiquidity:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ((100 * 10^18 * totalLiquidity) - (100 * 10^18 * arg1) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 80 * 10^18:
                        stor1 = 4 * 10^18
                    else:
                        if (75 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * arg1) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 6000 * 10^18 / ((100 * 10^18 * totalLiquidity) - (100 * 10^18 * arg1) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 80 * 10^18 != 75:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (75 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * arg1) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 6000 * 10^18 / 20 < (75 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * arg1) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 6000 * 10^18 / 20:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((75 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * arg1) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18 < (75 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * arg1) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 6000 * 10^18 / 20:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1 = ((75 * (100 * 10^18 * totalLiquidity) - (100 * 10^18 * arg1) - (100 * 10^18 * availableLiquidity) / totalLiquidity) - 6000 * 10^18 / 20) + 4 * 10^18
    emit AddLiquidity(arg1, msg.sender);
}



}
