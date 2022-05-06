contract main {




// =====================  Runtime code  =====================


const MAX_ALLOCATION = 2000


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
mapping of uint8 stor6;
mapping of uint8 stor7;
uint256 devAllocation;
address devWalletAddress;
address marketingWalletAddress;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function devAllocation() payable {
    return devAllocation
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function marketingWallet() payable {
    return marketingWalletAddress
}

function owner() payable {
    return owner
}

function devWallet() payable {
    return devWalletAddress
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function mintersWithoutFee(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function minters(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
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

function setDevWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    devWalletAddress = arg1
}

function setMarketWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    marketingWalletAddress = arg1
}

function setMinter(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor6[address(arg1)] = uint8(arg2)
}

function setMinterWithoutFee(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor7[address(arg1)] = uint8(arg2)
}

function setDevAllocation(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 >= 2000:
        revert with 0, 'invalid value'
    devAllocation = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
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
                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(stor6[msg.sender]) != 1:
        revert with 0, '!minter'
    if 1 == bool(stor7[msg.sender]):
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if arg2 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg2
        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, 0, arg1);
        return arg2
    if devAllocation > 2000:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2:
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, 0, arg1);
        if devAllocation:
            if not arg2:
                if not devWalletAddress:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[stor9] < balanceOf[stor9]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, 0, devWalletAddress);
            else:
                if devAllocation * arg2 / arg2 != devAllocation:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not devWalletAddress:
                    revert with 0, 'ERC20: mint to the zero address'
                if (devAllocation * arg2 / 2000 / 2) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += devAllocation * arg2 / 2000 / 2
                if (devAllocation * arg2 / 2000 / 2) + balanceOf[stor9] < balanceOf[stor9]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor9] += devAllocation * arg2 / 2000 / 2
                emit Transfer((devAllocation * arg2 / 2000 / 2), 0, devWalletAddress);
            if not arg2:
                if not marketingWalletAddress:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[stor10] < balanceOf[stor10]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, 0, marketingWalletAddress);
            else:
                if devAllocation * arg2 / arg2 != devAllocation:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not marketingWalletAddress:
                    revert with 0, 'ERC20: mint to the zero address'
                if (devAllocation * arg2 / 2000 / 2) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += devAllocation * arg2 / 2000 / 2
                if (devAllocation * arg2 / 2000 / 2) + balanceOf[stor10] < balanceOf[stor10]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor10] += devAllocation * arg2 / 2000 / 2
                emit Transfer((devAllocation * arg2 / 2000 / 2), 0, marketingWalletAddress);
            return 0
        else:
            return 0
    if (2000 * arg2) - (devAllocation * arg2) / arg2 != -devAllocation + 2000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if ((2000 * arg2) - (devAllocation * arg2) / 2000) + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += (2000 * arg2) - (devAllocation * arg2) / 2000
    if ((2000 * arg2) - (devAllocation * arg2) / 2000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += (2000 * arg2) - (devAllocation * arg2) / 2000
    emit Transfer(((2000 * arg2) - (devAllocation * arg2) / 2000), 0, arg1);
    if devAllocation:
        if not arg2:
            if not devWalletAddress:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor9] < balanceOf[stor9]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, devWalletAddress);
        else:
            if devAllocation * arg2 / arg2 != devAllocation:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not devWalletAddress:
                revert with 0, 'ERC20: mint to the zero address'
            if (devAllocation * arg2 / 2000 / 2) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += devAllocation * arg2 / 2000 / 2
            if (devAllocation * arg2 / 2000 / 2) + balanceOf[stor9] < balanceOf[stor9]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor9] += devAllocation * arg2 / 2000 / 2
            emit Transfer((devAllocation * arg2 / 2000 / 2), 0, devWalletAddress);
        if not arg2:
            if not marketingWalletAddress:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor10] < balanceOf[stor10]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, marketingWalletAddress);
        else:
            if devAllocation * arg2 / arg2 != devAllocation:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not marketingWalletAddress:
                revert with 0, 'ERC20: mint to the zero address'
            if (devAllocation * arg2 / 2000 / 2) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += devAllocation * arg2 / 2000 / 2
            if (devAllocation * arg2 / 2000 / 2) + balanceOf[stor10] < balanceOf[stor10]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor10] += devAllocation * arg2 / 2000 / 2
            emit Transfer((devAllocation * arg2 / 2000 / 2), 0, marketingWalletAddress);
    return ((2000 * arg2) - (devAllocation * arg2) / 2000)
}



}
