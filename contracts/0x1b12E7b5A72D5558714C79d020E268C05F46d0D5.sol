contract main {




// =====================  Runtime code  =====================


const decimals = 9


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
address owner;
address ethereumAddress;
uint256 stor7;
mapping of struct stor8;
mapping of struct withdrawnDividendOf;
uint256 totalDividendsDistributed;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function totalDividendsDistributed() payable {
    return totalDividendsDistributed
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function Ethereum() payable {
    return ethereumAddress
}

function withdrawnDividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return withdrawnDividendOf[address(arg1)].field_0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) payable {
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function accumulativeDividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7:
        require stor8[address(arg1)].field_0 >= 0
        return stor8[address(arg1)].field_128
    require stor7
    if stor7 * balanceOf[address(arg1)] / stor7 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require stor7 * balanceOf[address(arg1)] >= 0
    if stor8[address(arg1)].field_0 < 0:
        require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]
    else:
        if (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]:
            require stor8[address(arg1)].field_0 < 0
            require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]
    require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 >= 0
    return (Mask(128, 128, (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0) >> 128)
}

function distributeEthereumDividends(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require totalSupply > 0
    if arg1 > 0:
        if not arg1:
            require totalSupply
            if stor7 + (0 / totalSupply) < stor7:
                revert with 0, 'SafeMath: addition overflow'
            stor7 += 0 / totalSupply
        else:
            require arg1
            if arg1 << 128 / arg1 != 0x100000000000000000000000000000000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require totalSupply
            if stor7 + (arg1 << 128 / totalSupply) < stor7:
                revert with 0, 'SafeMath: addition overflow'
            stor7 += arg1 << 128 / totalSupply
        emit DividendsDistributed(arg1, msg.sender);
        if totalDividendsDistributed + arg1 < totalDividendsDistributed:
            revert with 0, 'SafeMath: addition overflow'
        totalDividendsDistributed += arg1
}

function dividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7:
        require stor8[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > stor8[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        return (stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
    require stor7
    if stor7 * balanceOf[address(arg1)] / stor7 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require stor7 * balanceOf[address(arg1)] >= 0
    if stor8[address(arg1)].field_0 < 0:
        require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]
    else:
        if (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]:
            require stor8[address(arg1)].field_0 < 0
            require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]
    require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 >= 0
    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0) >> 128:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((Mask(128, 128, (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
}

function withdrawableDividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7:
        require stor8[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > stor8[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        return (stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
    require stor7
    if stor7 * balanceOf[address(arg1)] / stor7 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require stor7 * balanceOf[address(arg1)] >= 0
    if stor8[address(arg1)].field_0 < 0:
        require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]
    else:
        if (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]:
            require stor8[address(arg1)].field_0 < 0
            require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]
    require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 >= 0
    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0) >> 128:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((Mask(128, 128, (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
}

function withdrawDividend() payable {
    if not stor7:
        require stor8[address(msg.sender)].field_0 >= 0
        if withdrawnDividendOf[address(msg.sender)].field_0 > stor8[address(msg.sender)].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor8[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0 > 0:
            if stor8[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            withdrawnDividendOf[address(msg.sender)].field_0 = stor8[address(msg.sender)].field_128
            emit DividendWithdrawn((stor8[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
            require ext_code.size(ethereumAddress)
            call ethereumAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stor8[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if stor8[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - stor8[address(msg.sender)].field_128
    else:
        require stor7
        if stor7 * balanceOf[address(msg.sender)] / stor7 != balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require stor7 * balanceOf[address(msg.sender)] >= 0
        if stor8[address(msg.sender)].field_0 < 0:
            require (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0 < stor7 * balanceOf[address(msg.sender)]
        else:
            if (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0 < stor7 * balanceOf[address(msg.sender)]:
                require stor8[address(msg.sender)].field_0 < 0
                require (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0 < stor7 * balanceOf[address(msg.sender)]
        require (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0 >= 0
        if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow'
        if (Mask(128, 128, (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 > 0:
            if Mask(128, 128, (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0) >> 128
            withdrawnDividendOf[address(msg.sender)].field_128 = 0
            emit DividendWithdrawn(((Mask(128, 128, (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
            require ext_code.size(ethereumAddress)
            call ethereumAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (Mask(128, 128, (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if (Mask(128, 128, (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0) >> 128)
}



}
