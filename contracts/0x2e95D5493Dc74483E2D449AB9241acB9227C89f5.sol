contract main {




// =====================  Runtime code  =====================


const sub_0ec4b650(?) = 200

const sub_5416c818(?) = 600

const FACTOR_DIVISOR = 100


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint256 stor6;
address distributorAddress;
address timelockAddress;
uint256 lastUpdate;
uint256 distributionPhase;
uint256 scalingFactor;
mapping of uint256 authorizedAmount;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function Distributor() payable {
    return distributorAddress
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function authorizedAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    return authorizedAmount[arg1]
}

function distributionPhase() payable {
    return distributionPhase
}

function Timelock() payable {
    return timelockAddress
}

function lastUpdate() payable {
    return lastUpdate
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function scalingFactor() payable {
    return scalingFactor
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

function authorize(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    authorizedAmount[msg.sender] = arg1
    stor6 = 1
}

function setTimelock(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    timelockAddress = arg1
    emit TimelockUpdated(arg1);
}

function setDistributor(address arg1) payable {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x644379636c653a2043616c6c6572206973206e6f74207468652054696d656c6f63,
                    mem[197 len 31]
    distributorAddress = arg1
    emit 0xc0ebb188: arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
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
                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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
                    0x6545524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0xfe45524332303a207472616e7366657220616d6f756e74496e20657863656564732062616c616e63,
                    mem[168 len 24],
                    mem[216 len 8]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0x64ddf252: arg2, msg.sender, arg1
    return 1
}

function setScalingFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x644379636c653a2043616c6c6572206973206e6f74207468652054696d656c6f63,
                    mem[197 len 31]
    if lastUpdate + 600 < lastUpdate:
        revert with 0, 'SafeMath: addition overflow'
    if lastUpdate + 600 >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x724379636c653a204d696e696d756d207570646174652064656c617920686173206e6f74207061737365,
                    mem[206 len 22]
    if arg1 > scalingFactor:
        if scalingFactor > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 - scalingFactor > 200:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x734379636c653a205363616c696e6720666163746f7220696e63726561736520746f6f20686967,
                        mem[203 len 25]
    scalingFactor = arg1
    lastUpdate = block.timestamp
    emit 0x28c7a0b0: arg1
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
                    0x6545524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    40,
                    0xfe45524332303a207472616e7366657220616d6f756e74496e20657863656564732062616c616e63,
                    mem[168 len 24],
                    mem[216 len 8]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit 0x64ddf252: arg3, arg1, arg2
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    42,
                    0x7345524332303a207472616e7366657220616d6f756e74496e206578636565647320616c6c6f77616e63,
                    mem[266 len 22],
                    mem[310 len 10]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function cycle(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if not arg1:
        revert with 0, 'Cycle: 0 amountIn sent'
    if arg1 > authorizedAmount[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x734379636c653a20496e70757420616d6f756e7420686173206e6f74206265656e20617574686f72697a65,
                    mem[207 len 21]
    if arg1 > authorizedAmount[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    authorizedAmount[msg.sender] -= arg1
    if distributionPhase != 1:
        if distributionPhase != 2:
            emit 0xff31fc55: arg1, 0, msg.sender
        else:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 36, 0x6845524332303a206275726e20616d6f756e74496e20657863656564732062616c616e63, mem[164 len 28], mem[220 len 4]
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit 0x64ddf252: arg1, msg.sender, 0
            if not arg1:
                if not distributorAddress:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[stor7] < balanceOf[stor7]:
                    revert with 0, 'SafeMath: addition overflow'
                emit 0x64ddf252: 0, 0, distributorAddress
                emit 0xff31fc55: arg1, 0, msg.sender
            else:
                if scalingFactor * arg1 / arg1 != scalingFactor:
                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                if not distributorAddress:
                    revert with 0, 'ERC20: mint to the zero address'
                if (scalingFactor * arg1 / 100) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += scalingFactor * arg1 / 100
                if (scalingFactor * arg1 / 100) + balanceOf[stor7] < balanceOf[stor7]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor7] += scalingFactor * arg1 / 100
                emit 0x64ddf252: (scalingFactor * arg1 / 100), 0, distributorAddress
                emit 0xff31fc55: arg1, scalingFactor * arg1 / 100, msg.sender
    else:
        if (balanceOf[address(this.address)] / 10^18 / 900) + 300 < balanceOf[address(this.address)] / 10^18 / 900:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x6545524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0xfe45524332303a207472616e7366657220616d6f756e74496e20657863656564732062616c616e63,
                            mem[168 len 24],
                            mem[216 len 8]
            balanceOf[address(msg.sender)] -= arg1
            if arg1 + balanceOf[this.address] < balanceOf[this.address]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(this.address)] = arg1 + balanceOf[this.address]
            emit 0x64ddf252: arg1, msg.sender, this.address
            if not this.address:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
            if not distributorAddress:
                revert with 0, 32, 35, 0x6545524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
            if 0 <= balanceOf[address(this.address)]:
                if 0 > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                40,
                                0xfe45524332303a207472616e7366657220616d6f756e74496e20657863656564732062616c616e63,
                                mem[264 len 24],
                                mem[312 len 8]
                if balanceOf[stor7] < balanceOf[stor7]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor7] = balanceOf[stor7]
                emit 0x64ddf252: 0, this.address, distributorAddress
            else:
                if balanceOf[address(this.address)] > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                40,
                                0xfe45524332303a207472616e7366657220616d6f756e74496e20657863656564732062616c616e63,
                                mem[264 len 24],
                                mem[312 len 8]
                balanceOf[address(this.address)] = 0
                if balanceOf[address(this.address)] + balanceOf[stor7] < balanceOf[stor7]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor7] += balanceOf[address(this.address)]
                emit 0x64ddf252: balanceOf[address(this.address)], this.address, distributorAddress
                distributionPhase = 2
            emit 0xff31fc55: arg1, 0, msg.sender
        else:
            if (300 * arg1) + (balanceOf[address(this.address)] / 10^18 / 900 * arg1) / arg1 != (balanceOf[address(this.address)] / 10^18 / 900) + 300:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x6545524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0xfe45524332303a207472616e7366657220616d6f756e74496e20657863656564732062616c616e63,
                            mem[168 len 24],
                            mem[216 len 8]
            balanceOf[address(msg.sender)] -= arg1
            if arg1 + balanceOf[this.address] < balanceOf[this.address]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(this.address)] = arg1 + balanceOf[this.address]
            emit 0x64ddf252: arg1, msg.sender, this.address
            if not this.address:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
            if not distributorAddress:
                revert with 0, 32, 35, 0x6545524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
            if (300 * arg1) + (balanceOf[address(this.address)] / 10^18 / 900 * arg1) / 100 <= balanceOf[address(this.address)]:
                if (300 * arg1) + (balanceOf[address(this.address)] / 10^18 / 900 * arg1) / 100 > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                40,
                                0xfe45524332303a207472616e7366657220616d6f756e74496e20657863656564732062616c616e63,
                                mem[264 len 24],
                                mem[312 len 8]
                balanceOf[address(this.address)] -= (300 * arg1) + (balanceOf[address(this.address)] / 10^18 / 900 * arg1) / 100
                if ((300 * arg1) + (balanceOf[address(this.address)] / 10^18 / 900 * arg1) / 100) + balanceOf[stor7] < balanceOf[stor7]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor7] += (300 * arg1) + (balanceOf[address(this.address)] / 10^18 / 900 * arg1) / 100
                emit 0x64ddf252: ((300 * arg1) + (balanceOf[address(this.address)] / 10^18 / 900 * arg1) / 100), this.address, distributorAddress
            else:
                if balanceOf[address(this.address)] > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                40,
                                0xfe45524332303a207472616e7366657220616d6f756e74496e20657863656564732062616c616e63,
                                mem[264 len 24],
                                mem[312 len 8]
                balanceOf[address(this.address)] = 0
                if balanceOf[address(this.address)] + balanceOf[stor7] < balanceOf[stor7]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor7] += balanceOf[address(this.address)]
                emit 0x64ddf252: balanceOf[address(this.address)], this.address, distributorAddress
                distributionPhase = 2
            emit 0xff31fc55: arg1, (300 * arg1) + (balanceOf[address(this.address)] / 10^18 / 900 * arg1) / 100, msg.sender
    stor6 = 1
}



}
