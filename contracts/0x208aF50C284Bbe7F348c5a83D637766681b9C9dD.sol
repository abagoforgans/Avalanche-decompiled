contract main {




// =====================  Runtime code  =====================


const MAXIMUM_TRANSFER_TAX_RATE = 1000

const BURN_ADDRESS = 57005


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint16 stor6;
uint16 transferTaxRate; offset 8
mapping of uint8 stor7;
mapping of uint8 stor8;
address operatorAddress;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function operator() payable {
    return operatorAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function taxFreeList(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function transferTaxRate() payable {
    return transferTaxRate
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function blacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
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

function setBlacklist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    stor8[address(arg1)] = uint8(arg2)
    emit BlacklistUpdated(arg2, arg1);
}

function setTaxFreeList(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    stor7[address(arg1)] = uint8(arg2)
    emit TaxFreeListUpdated(arg2, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'BEP20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    if arg1 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x2e484f4e45593a3a7472616e736665724f70657261746f723a206e6577206f70657261746f7220697320746865207a65726f20616464726573,
                    mem[221 len 7]
    emit OperatorTransferred(operatorAddress, arg1);
    operatorAddress = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7342455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function updateTransferTaxRate(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    81,
                    0x6f484f4e45593a3a7570646174655472616e73666572546178526174653a205472616e73666572207461782072617465206d757374206e6f742065786365656420746865206d6178696d756d2072617465,
                    mem[245 len 15]
    emit TransferTaxRateUpdated(stor6, arg1, msg.sender);
    transferTaxRate = arg1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(stor8[address(msg.sender)]) != 1:
        if 57005 == arg1:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if 1 == bool(stor7[address(msg.sender)]):
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if 1 == bool(stor7[address(arg1)]):
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if not transferTaxRate:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not arg2:
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 != arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            34,
                                            0x73484f4e45593a3a7472616e736665723a205461782076616c756520696e76616c69,
                                            mem[198 len 30]
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            if balanceOf[57005] < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, 57005);
                            if not msg.sender:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[262 len 26],
                                            mem[314 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if transferTaxRate * arg2 / arg2 != transferTaxRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if transferTaxRate * arg2 / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 != arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            34,
                                            0x73484f4e45593a3a7472616e736665723a205461782076616c756520696e76616c69,
                                            mem[198 len 30]
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if transferTaxRate * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= transferTaxRate * arg2 / 10000
                            if (transferTaxRate * arg2 / 10000) + balanceOf[57005] < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[57005] += transferTaxRate * arg2 / 10000
                            emit Transfer((transferTaxRate * arg2 / 10000), msg.sender, 57005);
                            if not msg.sender:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                            if arg2 - (transferTaxRate * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[262 len 26],
                                            mem[314 len 6]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (transferTaxRate * arg2 / 10000)
                            if arg2 - (transferTaxRate * arg2 / 10000) + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 - (transferTaxRate * arg2 / 10000) + balanceOf[arg1]
                            emit Transfer((arg2 - (transferTaxRate * arg2 / 10000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if 1 == bool(stor8[address(arg1)]):
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[168 len 24],
                        mem[216 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    else:
        if 57005 == arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if 1 == bool(stor7[address(arg1)]):
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[264 len 24],
                                mem[312 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
            else:
                if 1 == bool(stor7[address(arg2)]):
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[264 len 24],
                                    mem[312 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                else:
                    if not transferTaxRate:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[264 len 24],
                                        mem[312 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                    else:
                        if not arg3:
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg3 != arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            34,
                                            0x73484f4e45593a3a7472616e736665723a205461782076616c756520696e76616c69,
                                            mem[198 len 30]
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if 0 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            if balanceOf[57005] < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, arg1, 57005);
                            if not arg1:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[262 len 26],
                                            mem[314 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if transferTaxRate * arg3 / arg3 != transferTaxRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if transferTaxRate * arg3 / 10000 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg3 != arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            34,
                                            0x73484f4e45593a3a7472616e736665723a205461782076616c756520696e76616c69,
                                            mem[198 len 30]
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if transferTaxRate * arg3 / 10000 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(arg1)] -= transferTaxRate * arg3 / 10000
                            if (transferTaxRate * arg3 / 10000) + balanceOf[57005] < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[57005] += transferTaxRate * arg3 / 10000
                            emit Transfer((transferTaxRate * arg3 / 10000), arg1, 57005);
                            if not arg1:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                            if arg3 - (transferTaxRate * arg3 / 10000) > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[262 len 26],
                                            mem[314 len 6]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (transferTaxRate * arg3 / 10000)
                            if arg3 - (transferTaxRate * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = arg3 - (transferTaxRate * arg3 / 10000) + balanceOf[arg2]
                            emit Transfer((arg3 - (transferTaxRate * arg3 / 10000)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[360 len 24],
                                        mem[408 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
