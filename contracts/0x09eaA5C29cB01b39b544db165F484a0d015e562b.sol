contract main {




// =====================  Runtime code  =====================


#
#  - sub_df9c975a(?)
#
address owner;
uint8 paused;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address sub_43c6ae06Address;
address sub_389b06b7Address;
mapping of uint256 sub_e67c1012;
mapping of uint256 sub_64c4342c;
mapping of uint256 sub_e30171f8;
mapping of uint256 rewardDebtOf;
uint256 totalSupplyCap;
uint256 sub_79d79a34;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function sub_389b06b7(?) payable {
    return sub_389b06b7Address
}

function sub_43c6ae06(?) payable {
    return sub_43c6ae06Address
}

function rewardDebtOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewardDebtOf[address(arg1)]
}

function rewardDebt(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewardDebtOf[arg1]
}

function paused() payable {
    return bool(paused)
}

function sub_64c4342c(?) payable {
    require calldata.size - 4 >= 32
    return sub_64c4342c[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_79d79a34(?) payable {
    return sub_79d79a34
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function totalSupplyCap() payable {
    return totalSupplyCap
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e30171f8(?) payable {
    require calldata.size - 4 >= 32
    return sub_e30171f8[arg1]
}

function sub_e67c1012(?) payable {
    require calldata.size - 4 >= 32
    return sub_e67c1012[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setupDecimals(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    decimals = arg1
}

function pauseAll() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unPauseAll() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setupMintCap(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    totalSupplyCap = arg1
    sub_79d79a34 = arg2
}

function setup(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'S:1'
    sub_43c6ae06Address = arg1
    if not arg2:
        revert with 0, 'S:2'
    sub_389b06b7Address = arg2
}

function canMintPerTotalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalSupply + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if totalSupply + arg1 > totalSupplyCap:
        return 0
    if totalSupply > totalSupplyCap:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupplyCap - totalSupply)
}

function burnableAmtOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number < sub_e67c1012[address(arg1)]:
        return sub_e30171f8[address(arg1)]
    if sub_64c4342c[address(arg1)] + sub_e30171f8[address(arg1)] < sub_e30171f8[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_64c4342c[address(arg1)] + sub_e30171f8[address(arg1)])
}

function canMintPerAccountCap(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balanceOf[address(arg1)] + arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if balanceOf[address(arg1)] + arg2 > sub_79d79a34:
        return 0
    if balanceOf[address(arg1)] > sub_79d79a34:
        revert with 0, 'SafeMath: subtraction overflow'
    return (sub_79d79a34 - balanceOf[address(arg1)])
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
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
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if sub_43c6ae06Address != msg.sender:
        if sub_389b06b7Address != msg.sender:
            if not arg1:
                revert with 0, 'LPToken: cannot burn'
            revert with 0, 'LPToken: no transfer'
        if arg1:
            revert with 0, 'LPToken: no transfer'
        emit TokenBurn(arg2, msg.sender, arg1);
    else:
        if not msg.sender:
            emit TokenMint(arg2, msg.sender, arg1);
        else:
            if sub_389b06b7Address != msg.sender:
                if not arg1:
                    revert with 0, 'LPToken: cannot burn'
                revert with 0, 'LPToken: no transfer'
            if arg1:
                revert with 0, 'LPToken: no transfer'
            emit TokenBurn(arg2, msg.sender, arg1);
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if sub_389b06b7Address != msg.sender:
        revert with 0, 'onlyBurner'
    if block.number >= sub_e67c1012[address(arg1)]:
        sub_e67c1012[address(arg1)] = 0
        if sub_64c4342c[address(arg1)] + sub_e30171f8[address(arg1)] < sub_e30171f8[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_e30171f8[address(arg1)] += sub_64c4342c[address(arg1)]
        sub_64c4342c[address(arg1)] = 0
    if arg2 <= 0:
        revert with 0, 'B:1'
    if arg2 > sub_e30171f8[address(arg1)]:
        revert with 0, 'B:1'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if sub_43c6ae06Address != msg.sender:
        if sub_389b06b7Address != msg.sender:
            revert with 0, 'LPToken: cannot burn'
        emit TokenBurn(arg2, arg1, 0);
    else:
        if not arg1:
            emit TokenMint(arg2, arg1, 0);
        else:
            if sub_389b06b7Address != msg.sender:
                revert with 0, 'LPToken: cannot burn'
            emit TokenBurn(arg2, arg1, 0);
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    if arg2 > sub_e30171f8[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_e30171f8[address(arg1)] -= arg2
    if not arg3:
        rewardDebtOf[address(arg1)] = 0
    else:
        if balanceOf[address(arg1)] * arg3 / arg3 != balanceOf[address(arg1)]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        rewardDebtOf[address(arg1)] = balanceOf[address(arg1)] * arg3 / 10^18
}

function mint(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if sub_43c6ae06Address != msg.sender:
        revert with 0, 'onlyMinter'
    if paused:
        revert with 0, 'Pausable: paused'
    if arg2:
        if totalSupply + arg2 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if totalSupply + arg2 > totalSupplyCap:
            revert with 0, 'mint:1'
        if totalSupply > totalSupplyCap:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalSupplyCap - totalSupply:
            revert with 0, 'mint:1'
        if balanceOf[address(arg1)] + arg2 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if balanceOf[address(arg1)] + arg2 > sub_79d79a34:
            revert with 0, 'mint:2'
        if balanceOf[address(arg1)] > sub_79d79a34:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_79d79a34 - balanceOf[address(arg1)]:
            revert with 0, 'mint:2'
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if msg.sender == sub_43c6ae06Address:
            emit TokenMint(arg2, 0, arg1);
        else:
            if sub_389b06b7Address != msg.sender:
                if not arg1:
                    revert with 0, 'LPToken: cannot burn'
                revert with 0, 'LPToken: no transfer'
            if arg1:
                revert with 0, 'LPToken: no transfer'
            emit TokenBurn(arg2, 0, arg1);
        if arg2 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg2
        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, 0, arg1);
    if not arg3:
        rewardDebtOf[address(arg1)] = 0
    else:
        if balanceOf[address(arg1)] * arg3 / arg3 != balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        rewardDebtOf[address(arg1)] = balanceOf[address(arg1)] * arg3 / 10^18
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if sub_43c6ae06Address != msg.sender:
        if sub_389b06b7Address != msg.sender:
            if not arg2:
                revert with 0, 'LPToken: cannot burn'
            revert with 0, 'LPToken: no transfer'
        if arg2:
            revert with 0, 'LPToken: no transfer'
        emit TokenBurn(arg3, arg1, arg2);
    else:
        if not arg1:
            emit TokenMint(arg3, arg1, arg2);
        else:
            if sub_389b06b7Address != msg.sender:
                if not arg2:
                    revert with 0, 'LPToken: cannot burn'
                revert with 0, 'LPToken: no transfer'
            if arg2:
                revert with 0, 'LPToken: no transfer'
            emit TokenBurn(arg3, arg1, arg2);
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function proposeToBurn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if paused:
        revert with 0, 'Pausable: paused'
    if sub_389b06b7Address != msg.sender:
        revert with 0, 'onlyBurner'
    if arg2 <= 0:
        revert with 0, 'PTB:1'
    if balanceOf[address(arg1)] <= 0:
        revert with 0, 'PTB:2'
    if sub_64c4342c[address(arg1)] > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_e30171f8[address(arg1)] > balanceOf[address(arg1)] - sub_64c4342c[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[address(arg1)] - sub_64c4342c[address(arg1)] - sub_e30171f8[address(arg1)] < arg2:
        revert with 0, 'PTB:3'
    if block.number >= sub_e67c1012[address(arg1)]:
        if block.number + arg3 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        sub_e67c1012[address(arg1)] = block.number + arg3
        if sub_64c4342c[address(arg1)] + sub_e30171f8[address(arg1)] < sub_e30171f8[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_e30171f8[address(arg1)] += sub_64c4342c[address(arg1)]
        sub_64c4342c[address(arg1)] = arg2
    else:
        if block.number > sub_e67c1012[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_64c4342c[address(arg1)] + arg2 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if not arg2:
            if not sub_e67c1012[address(arg1)] - block.number:
                if sub_64c4342c[address(arg1)] + arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_64c4342c[address(arg1)] + arg2
                if sub_64c4342c[address(arg1)] + arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                sub_64c4342c[address(arg1)] += arg2
                if block.number + (0 / sub_64c4342c[address(arg1)] + arg2) < 0 / sub_64c4342c[address(arg1)] + arg2:
                    revert with 0, 'SafeMath: addition overflow'
                sub_e67c1012[address(arg1)] = block.number + (0 / sub_64c4342c[address(arg1)] + arg2)
            else:
                if (sub_e67c1012[address(arg1)] * sub_64c4342c[address(arg1)]) - (block.number * sub_64c4342c[address(arg1)]) / sub_e67c1012[address(arg1)] - block.number != sub_64c4342c[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_64c4342c[address(arg1)] + arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_64c4342c[address(arg1)] + arg2
                if sub_64c4342c[address(arg1)] + arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                sub_64c4342c[address(arg1)] += arg2
                if block.number + ((sub_e67c1012[address(arg1)] * sub_64c4342c[address(arg1)]) - (block.number * sub_64c4342c[address(arg1)]) / sub_64c4342c[address(arg1)] + arg2) < (sub_e67c1012[address(arg1)] * sub_64c4342c[address(arg1)]) - (block.number * sub_64c4342c[address(arg1)]) / sub_64c4342c[address(arg1)] + arg2:
                    revert with 0, 'SafeMath: addition overflow'
                sub_e67c1012[address(arg1)] = block.number + ((sub_e67c1012[address(arg1)] * sub_64c4342c[address(arg1)]) - (block.number * sub_64c4342c[address(arg1)]) / sub_64c4342c[address(arg1)] + arg2)
        else:
            if arg3 * arg2 / arg2 != arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not sub_e67c1012[address(arg1)] - block.number:
                if arg3 * arg2 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_64c4342c[address(arg1)] + arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_64c4342c[address(arg1)] + arg2
                if sub_64c4342c[address(arg1)] + arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                sub_64c4342c[address(arg1)] += arg2
                if block.number + (arg3 * arg2 / sub_64c4342c[address(arg1)] + arg2) < arg3 * arg2 / sub_64c4342c[address(arg1)] + arg2:
                    revert with 0, 'SafeMath: addition overflow'
                sub_e67c1012[address(arg1)] = block.number + (arg3 * arg2 / sub_64c4342c[address(arg1)] + arg2)
            else:
                if (sub_e67c1012[address(arg1)] * sub_64c4342c[address(arg1)]) - (block.number * sub_64c4342c[address(arg1)]) / sub_e67c1012[address(arg1)] - block.number != sub_64c4342c[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg3 * arg2 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_64c4342c[address(arg1)] + arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_64c4342c[address(arg1)] + arg2
                if sub_64c4342c[address(arg1)] + arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                sub_64c4342c[address(arg1)] += arg2
                if block.number + ((arg3 * arg2) + (sub_e67c1012[address(arg1)] * sub_64c4342c[address(arg1)]) - (block.number * sub_64c4342c[address(arg1)]) / sub_64c4342c[address(arg1)] + arg2) < (arg3 * arg2) + (sub_e67c1012[address(arg1)] * sub_64c4342c[address(arg1)]) - (block.number * sub_64c4342c[address(arg1)]) / sub_64c4342c[address(arg1)] + arg2:
                    revert with 0, 'SafeMath: addition overflow'
                sub_e67c1012[address(arg1)] = block.number + ((arg3 * arg2) + (sub_e67c1012[address(arg1)] * sub_64c4342c[address(arg1)]) - (block.number * sub_64c4342c[address(arg1)]) / sub_64c4342c[address(arg1)] + arg2)
}



}
