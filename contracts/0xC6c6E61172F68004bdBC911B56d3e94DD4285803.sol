contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 basePercent;
address sub_912d809fAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_912d809f(?) {
    return sub_912d809fAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function basePercent() {
    return basePercent
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function sub_e5fc7476(?) {
    require calldata.size - 4 >= 32
    require basePercent
    if not arg1 + basePercent - 1 / basePercent * basePercent:
        return 0
    require arg1 + basePercent - 1 / basePercent * basePercent
    if arg1 + basePercent - 1 / basePercent * basePercent * basePercent / arg1 + basePercent - 1 / basePercent * basePercent != basePercent:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (arg1 + basePercent - 1 / basePercent * basePercent * basePercent / 105)
}

function sub_971e320f(?) {
    require calldata.size - 4 >= 32
    require basePercent
    if not arg1 + basePercent - 1 / basePercent * basePercent:
        return 0
    require arg1 + basePercent - 1 / basePercent * basePercent
    if arg1 + basePercent - 1 / basePercent * basePercent * basePercent / arg1 + basePercent - 1 / basePercent * basePercent != basePercent:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (arg1 + basePercent - 1 / basePercent * basePercent * basePercent / 2500)
}

function findFivePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require basePercent
    if not arg1 + basePercent - 1 / basePercent * basePercent:
        return 0
    require arg1 + basePercent - 1 / basePercent * basePercent
    if arg1 + basePercent - 1 / basePercent * basePercent * basePercent / arg1 + basePercent - 1 / basePercent * basePercent != basePercent:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (arg1 + basePercent - 1 / basePercent * basePercent * basePercent / 2000)
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    require basePercent
    if not arg2 + basePercent - 1 / basePercent * basePercent:
        require basePercent
        if not basePercent - 1 / basePercent * basePercent:
            require basePercent
            if not basePercent - 1 / basePercent * basePercent:
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                if balanceOf[stor4] < balanceOf[stor4]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit Transfer(arg2, msg.sender, arg1);
                emit Transfer(0, msg.sender, sub_912d809fAddress);
            else:
                require basePercent - 1 / basePercent * basePercent
                if basePercent - 1 / basePercent * basePercent * basePercent / basePercent - 1 / basePercent * basePercent != basePercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if basePercent - 1 / basePercent * basePercent * basePercent / 2000 < basePercent - 1 / basePercent * basePercent * basePercent / 2000:
                    revert with 0, 'SafeMath: addition overflow'
                if basePercent - 1 / basePercent * basePercent * basePercent / 2000 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 - (basePercent - 1 / basePercent * basePercent * basePercent / 2000) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (basePercent - 1 / basePercent * basePercent * basePercent / 2000)
                if balanceOf[stor4] + (basePercent - 1 / basePercent * basePercent * basePercent / 2000) < balanceOf[stor4]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor4] += basePercent - 1 / basePercent * basePercent * basePercent / 2000
                if 0 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit Transfer((arg2 - (basePercent - 1 / basePercent * basePercent * basePercent / 2000)), msg.sender, arg1);
                emit Transfer((basePercent - 1 / basePercent * basePercent * basePercent / 2000), msg.sender, sub_912d809fAddress);
            emit Transfer(0, msg.sender, 0);
        else:
            require basePercent - 1 / basePercent * basePercent
            if basePercent - 1 / basePercent * basePercent * basePercent / basePercent - 1 / basePercent * basePercent != basePercent:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require basePercent
            if not basePercent - 1 / basePercent * basePercent:
                if basePercent - 1 / basePercent * basePercent * basePercent / 105 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if basePercent - 1 / basePercent * basePercent * basePercent / 105 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 - (basePercent - 1 / basePercent * basePercent * basePercent / 105) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (basePercent - 1 / basePercent * basePercent * basePercent / 105)
                if balanceOf[stor4] < balanceOf[stor4]:
                    revert with 0, 'SafeMath: addition overflow'
                if basePercent - 1 / basePercent * basePercent * basePercent / 105 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= basePercent - 1 / basePercent * basePercent * basePercent / 105
                emit Transfer((arg2 - (basePercent - 1 / basePercent * basePercent * basePercent / 105)), msg.sender, arg1);
                emit Transfer(0, msg.sender, sub_912d809fAddress);
            else:
                require basePercent - 1 / basePercent * basePercent
                if basePercent - 1 / basePercent * basePercent * basePercent / basePercent - 1 / basePercent * basePercent != basePercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (basePercent - 1 / basePercent * basePercent * basePercent / 2000) + (basePercent - 1 / basePercent * basePercent * basePercent / 105) < basePercent - 1 / basePercent * basePercent * basePercent / 2000:
                    revert with 0, 'SafeMath: addition overflow'
                if (basePercent - 1 / basePercent * basePercent * basePercent / 2000) + (basePercent - 1 / basePercent * basePercent * basePercent / 105) > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 - (basePercent - 1 / basePercent * basePercent * basePercent / 2000) - (basePercent - 1 / basePercent * basePercent * basePercent / 105) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (basePercent - 1 / basePercent * basePercent * basePercent / 2000) - (basePercent - 1 / basePercent * basePercent * basePercent / 105)
                if balanceOf[stor4] + (basePercent - 1 / basePercent * basePercent * basePercent / 2000) < balanceOf[stor4]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor4] += basePercent - 1 / basePercent * basePercent * basePercent / 2000
                if basePercent - 1 / basePercent * basePercent * basePercent / 105 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= basePercent - 1 / basePercent * basePercent * basePercent / 105
                emit Transfer((arg2 - (basePercent - 1 / basePercent * basePercent * basePercent / 2000) - (basePercent - 1 / basePercent * basePercent * basePercent / 105)), msg.sender, arg1);
                emit Transfer((basePercent - 1 / basePercent * basePercent * basePercent / 2000), msg.sender, sub_912d809fAddress);
            emit Transfer((basePercent - 1 / basePercent * basePercent * basePercent / 105), msg.sender, 0);
    else:
        require arg2 + basePercent - 1 / basePercent * basePercent
        if arg2 + basePercent - 1 / basePercent * basePercent * basePercent / arg2 + basePercent - 1 / basePercent * basePercent != basePercent:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require basePercent
        if not (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent:
            require basePercent
            if not (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent:
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                if balanceOf[stor4] < balanceOf[stor4]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit Transfer(arg2, msg.sender, arg1);
                emit Transfer(0, msg.sender, sub_912d809fAddress);
            else:
                require (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent
                if (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent != basePercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000 < (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 - ((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000)
                if balanceOf[stor4] + ((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000) < balanceOf[stor4]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor4] += (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000
                if 0 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit Transfer((arg2 - ((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000)), msg.sender, arg1);
                emit Transfer(((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000), msg.sender, sub_912d809fAddress);
            emit Transfer(0, msg.sender, 0);
        else:
            require (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent
            if (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent != basePercent:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require basePercent
            if not (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent:
                if (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 - ((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105)
                if balanceOf[stor4] < balanceOf[stor4]:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105
                emit Transfer((arg2 - ((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105)), msg.sender, arg1);
                emit Transfer(0, msg.sender, sub_912d809fAddress);
            else:
                require (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent
                if (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent != basePercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if ((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000) + ((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105) < (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000:
                    revert with 0, 'SafeMath: addition overflow'
                if ((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000) + ((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105) > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 - ((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000) - ((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000) - ((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105)
                if balanceOf[stor4] + ((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000) < balanceOf[stor4]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor4] += (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000
                if (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105
                emit Transfer((arg2 - ((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000) - ((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105)), msg.sender, arg1);
                emit Transfer(((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000), msg.sender, sub_912d809fAddress);
            emit Transfer(((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105), msg.sender, 0);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    require basePercent
    if not arg3 + basePercent - 1 / basePercent * basePercent:
        require basePercent
        if not basePercent - 1 / basePercent * basePercent:
            require basePercent
            if not basePercent - 1 / basePercent * basePercent:
                if 0 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                if balanceOf[stor4] < balanceOf[stor4]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit Transfer(arg3, msg.sender, arg2);
                emit Transfer(0, msg.sender, sub_912d809fAddress);
            else:
                require basePercent - 1 / basePercent * basePercent
                if basePercent - 1 / basePercent * basePercent * basePercent / basePercent - 1 / basePercent * basePercent != basePercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if basePercent - 1 / basePercent * basePercent * basePercent / 2000 < basePercent - 1 / basePercent * basePercent * basePercent / 2000:
                    revert with 0, 'SafeMath: addition overflow'
                if basePercent - 1 / basePercent * basePercent * basePercent / 2000 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 - (basePercent - 1 / basePercent * basePercent * basePercent / 2000) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (basePercent - 1 / basePercent * basePercent * basePercent / 2000)
                if balanceOf[stor4] + (basePercent - 1 / basePercent * basePercent * basePercent / 2000) < balanceOf[stor4]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor4] += basePercent - 1 / basePercent * basePercent * basePercent / 2000
                if 0 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit Transfer((arg3 - (basePercent - 1 / basePercent * basePercent * basePercent / 2000)), msg.sender, arg2);
                emit Transfer((basePercent - 1 / basePercent * basePercent * basePercent / 2000), msg.sender, sub_912d809fAddress);
            emit Transfer(0, msg.sender, 0);
        else:
            require basePercent - 1 / basePercent * basePercent
            if basePercent - 1 / basePercent * basePercent * basePercent / basePercent - 1 / basePercent * basePercent != basePercent:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require basePercent
            if not basePercent - 1 / basePercent * basePercent:
                if basePercent - 1 / basePercent * basePercent * basePercent / 105 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if basePercent - 1 / basePercent * basePercent * basePercent / 105 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 - (basePercent - 1 / basePercent * basePercent * basePercent / 105) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (basePercent - 1 / basePercent * basePercent * basePercent / 105)
                if balanceOf[stor4] < balanceOf[stor4]:
                    revert with 0, 'SafeMath: addition overflow'
                if basePercent - 1 / basePercent * basePercent * basePercent / 105 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= basePercent - 1 / basePercent * basePercent * basePercent / 105
                emit Transfer((arg3 - (basePercent - 1 / basePercent * basePercent * basePercent / 105)), msg.sender, arg2);
                emit Transfer(0, msg.sender, sub_912d809fAddress);
            else:
                require basePercent - 1 / basePercent * basePercent
                if basePercent - 1 / basePercent * basePercent * basePercent / basePercent - 1 / basePercent * basePercent != basePercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (basePercent - 1 / basePercent * basePercent * basePercent / 2000) + (basePercent - 1 / basePercent * basePercent * basePercent / 105) < basePercent - 1 / basePercent * basePercent * basePercent / 2000:
                    revert with 0, 'SafeMath: addition overflow'
                if (basePercent - 1 / basePercent * basePercent * basePercent / 2000) + (basePercent - 1 / basePercent * basePercent * basePercent / 105) > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 - (basePercent - 1 / basePercent * basePercent * basePercent / 2000) - (basePercent - 1 / basePercent * basePercent * basePercent / 105) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (basePercent - 1 / basePercent * basePercent * basePercent / 2000) - (basePercent - 1 / basePercent * basePercent * basePercent / 105)
                if balanceOf[stor4] + (basePercent - 1 / basePercent * basePercent * basePercent / 2000) < balanceOf[stor4]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor4] += basePercent - 1 / basePercent * basePercent * basePercent / 2000
                if basePercent - 1 / basePercent * basePercent * basePercent / 105 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= basePercent - 1 / basePercent * basePercent * basePercent / 105
                emit Transfer((arg3 - (basePercent - 1 / basePercent * basePercent * basePercent / 2000) - (basePercent - 1 / basePercent * basePercent * basePercent / 105)), msg.sender, arg2);
                emit Transfer((basePercent - 1 / basePercent * basePercent * basePercent / 2000), msg.sender, sub_912d809fAddress);
            emit Transfer((basePercent - 1 / basePercent * basePercent * basePercent / 105), msg.sender, 0);
    else:
        require arg3 + basePercent - 1 / basePercent * basePercent
        if arg3 + basePercent - 1 / basePercent * basePercent * basePercent / arg3 + basePercent - 1 / basePercent * basePercent != basePercent:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require basePercent
        if not (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent:
            require basePercent
            if not (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent:
                if 0 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                if balanceOf[stor4] < balanceOf[stor4]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit Transfer(arg3, msg.sender, arg2);
                emit Transfer(0, msg.sender, sub_912d809fAddress);
            else:
                require (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent
                if (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent != basePercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000 < (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 - ((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000)
                if balanceOf[stor4] + ((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000) < balanceOf[stor4]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor4] += (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000
                if 0 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit Transfer((arg3 - ((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000)), msg.sender, arg2);
                emit Transfer(((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000), msg.sender, sub_912d809fAddress);
            emit Transfer(0, msg.sender, 0);
        else:
            require (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent
            if (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent != basePercent:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require basePercent
            if not (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent:
                if (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 - ((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105)
                if balanceOf[stor4] < balanceOf[stor4]:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105
                emit Transfer((arg3 - ((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105)), msg.sender, arg2);
                emit Transfer(0, msg.sender, sub_912d809fAddress);
            else:
                require (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent
                if (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent != basePercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if ((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000) + ((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105) < (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000:
                    revert with 0, 'SafeMath: addition overflow'
                if ((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000) + ((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105) > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 - ((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000) - ((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000) - ((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105)
                if balanceOf[stor4] + ((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000) < balanceOf[stor4]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor4] += (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000
                if (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105
                emit Transfer((arg3 - ((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000) - ((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105)), msg.sender, arg2);
                emit Transfer(((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 2000), msg.sender, sub_912d809fAddress);
            emit Transfer(((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 2500) + basePercent - 1 / basePercent * basePercent * basePercent / 105), msg.sender, 0);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
