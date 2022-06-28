contract main {




// =====================  Runtime code  =====================


const markAddress = 0xf3c083d50c88929fc152afbe4339b04de92dbae8

const devAddress = 0xea1b20041219df33dc6d6a76a83335528d0d28f0

const feeAddress = 0xf3c083d50c88929fc152afbe4339b04de92dbae8

const sub_53d0f0ef(?) = 1

const burnAddress = 57005

const sub_aeecc68e(?) = 900

const FEE_RATE = 800

const BURN_RATE = 1


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint16 stor6;
uint16 maxTransferAmountRate; offset 8
mapping of uint8 stor7;
address operatorAddress;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function isExcludedFromAntiWhale(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function decimals() payable {
    return decimals
}

function maxTransferAmountRate() payable {
    return maxTransferAmountRate
}

function operator() payable {
    return operatorAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
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

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setExcludedFromAntiWhale(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x776f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    stor7[address(arg1)] = uint8(arg2)
}

function maxTransferAmount() payable {
    if not totalSupply:
        return 0
    require totalSupply
    if totalSupply * maxTransferAmountRate / totalSupply != maxTransferAmountRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (totalSupply * maxTransferAmountRate / 10000)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'BEP20: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
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
                    0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
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
                    0x776f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x6f7472616e736665724f70657261746f723a206e6577206f70657261746f7220697320746865207a65726f20616464726573,
                    mem[214 len 14]
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
        revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
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
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function updateMaxTransferAmountRate(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x776f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 900:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    87,
                    0x747570646174654d61785472616e73666572416d6f756e74526174653a204d6178207472616e7366657220616d6f756e742072617465206d757374206e6f742065786365656420746865206d6178696d756d2072617465,
                    mem[251 len 9]
    if arg1 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    84,
                    0x657570646174654d61785472616e73666572416d6f756e74526174653a204d6178207472616e7366657220616d6f756e7420726174652063616e206e6f7420626520626c656f77206d696e696d756d2072617465,
                    mem[248 len 12]
    emit MaxTransferAmountRateUpdated(stor6, arg1, msg.sender);
    maxTransferAmountRate = arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not totalSupply:
        if arg1 == 57005:
            if not msg.sender:
                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
            if not arg1:
                revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[230 len 26],
                            mem[282 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if msg.sender == 0xea1b20041219df33dc6d6a76a83335528d0d28f0:
                if not msg.sender:
                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                if not arg1:
                    revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[230 len 26],
                                mem[282 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if arg1 == 0xf3c083d50c88929fc152afbe4339b04de92dbae8:
                    if not msg.sender:
                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[230 len 26],
                                    mem[282 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if not arg2:
                        if not arg2:
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 != arg2:
                                revert with 0, 'tokens::transfer: Amount invalid'
                            if not msg.sender:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[486 len 26],
                                            mem[538 len 6]
                            if balanceOf[57005] < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, 57005);
                            if not msg.sender:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[582 len 26],
                                            mem[634 len 6]
                            if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                            if not msg.sender:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[678 len 26],
                                            mem[730 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            require arg2
                            if 800 * arg2 / arg2 != 800:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 800 * arg2 / 1000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 != arg2:
                                revert with 0, 'tokens::transfer: Amount invalid'
                            if not msg.sender:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[486 len 26],
                                            mem[538 len 6]
                            if balanceOf[57005] < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, 57005);
                            if not msg.sender:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                            if 800 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[582 len 26],
                                            mem[634 len 6]
                            balanceOf[address(msg.sender)] -= 800 * arg2 / 1000
                            if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg2 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg2 / 1000
                            emit Transfer((800 * arg2 / 1000), msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                            if not msg.sender:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                            if arg2 - (800 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[678 len 26],
                                            mem[730 len 6]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (800 * arg2 / 1000)
                            if balanceOf[address(arg1)] + arg2 - (800 * arg2 / 1000) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (800 * arg2 / 1000)
                            emit Transfer((arg2 - (800 * arg2 / 1000)), msg.sender, arg1);
                    else:
                        require arg2
                        if arg2 / arg2 != 1:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not arg2:
                            if arg2 / 1000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > arg2 - (arg2 / 1000):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 != arg2:
                                revert with 0, 'tokens::transfer: Amount invalid'
                            if not msg.sender:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                            if arg2 / 1000 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[486 len 26],
                                            mem[538 len 6]
                            balanceOf[address(msg.sender)] -= arg2 / 1000
                            if balanceOf[57005] + (arg2 / 1000) < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[57005] += arg2 / 1000
                            emit Transfer((arg2 / 1000), msg.sender, 57005);
                            if not msg.sender:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[582 len 26],
                                            mem[634 len 6]
                            if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                            if not msg.sender:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                            if arg2 - (arg2 / 1000) > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[678 len 26],
                                            mem[730 len 6]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 1000)
                            if balanceOf[address(arg1)] + arg2 - (arg2 / 1000) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 1000)
                            emit Transfer((arg2 - (arg2 / 1000)), msg.sender, arg1);
                        else:
                            require arg2
                            if 800 * arg2 / arg2 != 800:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if arg2 / 1000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 800 * arg2 / 1000 > arg2 - (arg2 / 1000):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 != arg2:
                                revert with 0, 'tokens::transfer: Amount invalid'
                            if not msg.sender:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                            if arg2 / 1000 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[486 len 26],
                                            mem[538 len 6]
                            balanceOf[address(msg.sender)] -= arg2 / 1000
                            if balanceOf[57005] + (arg2 / 1000) < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[57005] += arg2 / 1000
                            emit Transfer((arg2 / 1000), msg.sender, 57005);
                            if not msg.sender:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                            if 800 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[582 len 26],
                                            mem[634 len 6]
                            balanceOf[address(msg.sender)] -= 800 * arg2 / 1000
                            if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg2 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg2 / 1000
                            emit Transfer((800 * arg2 / 1000), msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                            if not msg.sender:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                            if arg2 - (arg2 / 1000) - (800 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[678 len 26],
                                            mem[730 len 6]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 1000) + (800 * arg2 / 1000)
                            if balanceOf[address(arg1)] + arg2 - (arg2 / 1000) - (800 * arg2 / 1000) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 1000) - (800 * arg2 / 1000)
                            emit Transfer((arg2 - (arg2 / 1000) - (800 * arg2 / 1000)), msg.sender, arg1);
    else:
        require totalSupply
        if totalSupply * maxTransferAmountRate / totalSupply != maxTransferAmountRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply * maxTransferAmountRate / 10000 <= 0:
            if arg1 == 57005:
                if not msg.sender:
                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                if not arg1:
                    revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[230 len 26],
                                mem[282 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if msg.sender == 0xea1b20041219df33dc6d6a76a83335528d0d28f0:
                    if not msg.sender:
                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[230 len 26],
                                    mem[282 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg1 == 0xf3c083d50c88929fc152afbe4339b04de92dbae8:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[230 len 26],
                                        mem[282 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not arg2:
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 != arg2:
                                    revert with 0, 'tokens::transfer: Amount invalid'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[486 len 26],
                                                mem[538 len 6]
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[582 len 26],
                                                mem[634 len 6]
                                if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[678 len 26],
                                                mem[730 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                require arg2
                                if 800 * arg2 / arg2 != 800:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 800 * arg2 / 1000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 != arg2:
                                    revert with 0, 'tokens::transfer: Amount invalid'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[486 len 26],
                                                mem[538 len 6]
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                if 800 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[582 len 26],
                                                mem[634 len 6]
                                balanceOf[address(msg.sender)] -= 800 * arg2 / 1000
                                if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg2 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg2 / 1000
                                emit Transfer((800 * arg2 / 1000), msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                if arg2 - (800 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[678 len 26],
                                                mem[730 len 6]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (800 * arg2 / 1000)
                                if balanceOf[address(arg1)] + arg2 - (800 * arg2 / 1000) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (800 * arg2 / 1000)
                                emit Transfer((arg2 - (800 * arg2 / 1000)), msg.sender, arg1);
                        else:
                            require arg2
                            if arg2 / arg2 != 1:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not arg2:
                                if arg2 / 1000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > arg2 - (arg2 / 1000):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 != arg2:
                                    revert with 0, 'tokens::transfer: Amount invalid'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                if arg2 / 1000 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[486 len 26],
                                                mem[538 len 6]
                                balanceOf[address(msg.sender)] -= arg2 / 1000
                                if balanceOf[57005] + (arg2 / 1000) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += arg2 / 1000
                                emit Transfer((arg2 / 1000), msg.sender, 57005);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[582 len 26],
                                                mem[634 len 6]
                                if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                if arg2 - (arg2 / 1000) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[678 len 26],
                                                mem[730 len 6]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 1000)
                                if balanceOf[address(arg1)] + arg2 - (arg2 / 1000) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 1000)
                                emit Transfer((arg2 - (arg2 / 1000)), msg.sender, arg1);
                            else:
                                require arg2
                                if 800 * arg2 / arg2 != 800:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if arg2 / 1000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 800 * arg2 / 1000 > arg2 - (arg2 / 1000):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 != arg2:
                                    revert with 0, 'tokens::transfer: Amount invalid'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                if arg2 / 1000 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[486 len 26],
                                                mem[538 len 6]
                                balanceOf[address(msg.sender)] -= arg2 / 1000
                                if balanceOf[57005] + (arg2 / 1000) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += arg2 / 1000
                                emit Transfer((arg2 / 1000), msg.sender, 57005);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                if 800 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[582 len 26],
                                                mem[634 len 6]
                                balanceOf[address(msg.sender)] -= 800 * arg2 / 1000
                                if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg2 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg2 / 1000
                                emit Transfer((800 * arg2 / 1000), msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                if arg2 - (arg2 / 1000) - (800 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[678 len 26],
                                                mem[730 len 6]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 1000) + (800 * arg2 / 1000)
                                if balanceOf[address(arg1)] + arg2 - (arg2 / 1000) - (800 * arg2 / 1000) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 1000) - (800 * arg2 / 1000)
                                emit Transfer((arg2 - (arg2 / 1000) - (800 * arg2 / 1000)), msg.sender, arg1);
        else:
            if stor7[address(msg.sender)]:
                if arg1 == 57005:
                    if not msg.sender:
                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[230 len 26],
                                    mem[282 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if msg.sender == 0xea1b20041219df33dc6d6a76a83335528d0d28f0:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[230 len 26],
                                        mem[282 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg1 == 0xf3c083d50c88929fc152afbe4339b04de92dbae8:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not arg2:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'tokens::transfer: Amount invalid'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[486 len 26],
                                                    mem[538 len 6]
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[582 len 26],
                                                    mem[634 len 6]
                                    if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[678 len 26],
                                                    mem[730 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    require arg2
                                    if 800 * arg2 / arg2 != 800:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 800 * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'tokens::transfer: Amount invalid'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[486 len 26],
                                                    mem[538 len 6]
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                    if 800 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[582 len 26],
                                                    mem[634 len 6]
                                    balanceOf[address(msg.sender)] -= 800 * arg2 / 1000
                                    if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg2 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg2 / 1000
                                    emit Transfer((800 * arg2 / 1000), msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                    if arg2 - (800 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[678 len 26],
                                                    mem[730 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (800 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (800 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (800 * arg2 / 1000)
                                    emit Transfer((arg2 - (800 * arg2 / 1000)), msg.sender, arg1);
                            else:
                                require arg2
                                if arg2 / arg2 != 1:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not arg2:
                                    if arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > arg2 - (arg2 / 1000):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'tokens::transfer: Amount invalid'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                    if arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[486 len 26],
                                                    mem[538 len 6]
                                    balanceOf[address(msg.sender)] -= arg2 / 1000
                                    if balanceOf[57005] + (arg2 / 1000) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg2 / 1000
                                    emit Transfer((arg2 / 1000), msg.sender, 57005);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[582 len 26],
                                                    mem[634 len 6]
                                    if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                    if arg2 - (arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[678 len 26],
                                                    mem[730 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 1000)
                                    emit Transfer((arg2 - (arg2 / 1000)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if 800 * arg2 / arg2 != 800:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 800 * arg2 / 1000 > arg2 - (arg2 / 1000):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'tokens::transfer: Amount invalid'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                    if arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[486 len 26],
                                                    mem[538 len 6]
                                    balanceOf[address(msg.sender)] -= arg2 / 1000
                                    if balanceOf[57005] + (arg2 / 1000) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg2 / 1000
                                    emit Transfer((arg2 / 1000), msg.sender, 57005);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                    if 800 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[582 len 26],
                                                    mem[634 len 6]
                                    balanceOf[address(msg.sender)] -= 800 * arg2 / 1000
                                    if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg2 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg2 / 1000
                                    emit Transfer((800 * arg2 / 1000), msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                    if arg2 - (arg2 / 1000) - (800 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[678 len 26],
                                                    mem[730 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 1000) + (800 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (arg2 / 1000) - (800 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 1000) - (800 * arg2 / 1000)
                                    emit Transfer((arg2 - (arg2 / 1000) - (800 * arg2 / 1000)), msg.sender, arg1);
            else:
                if stor7[address(arg1)]:
                    if arg1 == 57005:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[230 len 26],
                                        mem[282 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if msg.sender == 0xea1b20041219df33dc6d6a76a83335528d0d28f0:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 == 0xf3c083d50c88929fc152afbe4339b04de92dbae8:
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[230 len 26],
                                                mem[282 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 != arg2:
                                            revert with 0, 'tokens::transfer: Amount invalid'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[486 len 26],
                                                        mem[538 len 6]
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[582 len 26],
                                                        mem[634 len 6]
                                        if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[678 len 26],
                                                        mem[730 len 6]
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        require arg2
                                        if 800 * arg2 / arg2 != 800:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 800 * arg2 / 1000 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 != arg2:
                                            revert with 0, 'tokens::transfer: Amount invalid'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[486 len 26],
                                                        mem[538 len 6]
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                        if 800 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[582 len 26],
                                                        mem[634 len 6]
                                        balanceOf[address(msg.sender)] -= 800 * arg2 / 1000
                                        if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg2 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg2 / 1000
                                        emit Transfer((800 * arg2 / 1000), msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                        if arg2 - (800 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[678 len 26],
                                                        mem[730 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (800 * arg2 / 1000)
                                        if balanceOf[address(arg1)] + arg2 - (800 * arg2 / 1000) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (800 * arg2 / 1000)
                                        emit Transfer((arg2 - (800 * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if arg2 / arg2 != 1:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not arg2:
                                        if arg2 / 1000 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 > arg2 - (arg2 / 1000):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 != arg2:
                                            revert with 0, 'tokens::transfer: Amount invalid'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                        if arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[486 len 26],
                                                        mem[538 len 6]
                                        balanceOf[address(msg.sender)] -= arg2 / 1000
                                        if balanceOf[57005] + (arg2 / 1000) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 / 1000
                                        emit Transfer((arg2 / 1000), msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[582 len 26],
                                                        mem[634 len 6]
                                        if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                        if arg2 - (arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[678 len 26],
                                                        mem[730 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 1000)
                                        if balanceOf[address(arg1)] + arg2 - (arg2 / 1000) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 1000)
                                        emit Transfer((arg2 - (arg2 / 1000)), msg.sender, arg1);
                                    else:
                                        require arg2
                                        if 800 * arg2 / arg2 != 800:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if arg2 / 1000 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 800 * arg2 / 1000 > arg2 - (arg2 / 1000):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 != arg2:
                                            revert with 0, 'tokens::transfer: Amount invalid'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                        if arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[486 len 26],
                                                        mem[538 len 6]
                                        balanceOf[address(msg.sender)] -= arg2 / 1000
                                        if balanceOf[57005] + (arg2 / 1000) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 / 1000
                                        emit Transfer((arg2 / 1000), msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                        if 800 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[582 len 26],
                                                        mem[634 len 6]
                                        balanceOf[address(msg.sender)] -= 800 * arg2 / 1000
                                        if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg2 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg2 / 1000
                                        emit Transfer((800 * arg2 / 1000), msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                        if arg2 - (arg2 / 1000) - (800 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[678 len 26],
                                                        mem[730 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 1000) + (800 * arg2 / 1000)
                                        if balanceOf[address(arg1)] + arg2 - (arg2 / 1000) - (800 * arg2 / 1000) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 1000) - (800 * arg2 / 1000)
                                        emit Transfer((arg2 - (arg2 / 1000) - (800 * arg2 / 1000)), msg.sender, arg1);
                else:
                    if not totalSupply:
                        if arg2 > 0:
                            revert with 0, 
                                        32,
                                        56,
                                        0xfe616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e,
                                        mem[348 len 8]
                    else:
                        require totalSupply
                        if totalSupply * maxTransferAmountRate / totalSupply != maxTransferAmountRate:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if arg2 > totalSupply * maxTransferAmountRate / 10000:
                            revert with 0, 
                                        32,
                                        56,
                                        0xfe616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e,
                                        mem[348 len 8]
                    if arg1 == 57005:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[294 len 26],
                                        mem[346 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if msg.sender == 0xea1b20041219df33dc6d6a76a83335528d0d28f0:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[294 len 26],
                                            mem[346 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 == 0xf3c083d50c88929fc152afbe4339b04de92dbae8:
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[294 len 26],
                                                mem[346 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 != arg2:
                                            revert with 0, 'tokens::transfer: Amount invalid'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[550 len 26],
                                                        mem[602 len 6]
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[681 len 27]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[646 len 26],
                                                        mem[698 len 6]
                                        if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[742 len 26],
                                                        mem[794 len 6]
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        require arg2
                                        if 800 * arg2 / arg2 != 800:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 800 * arg2 / 1000 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 != arg2:
                                            revert with 0, 'tokens::transfer: Amount invalid'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[550 len 26],
                                                        mem[602 len 6]
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[681 len 27]
                                        if 800 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[646 len 26],
                                                        mem[698 len 6]
                                        balanceOf[address(msg.sender)] -= 800 * arg2 / 1000
                                        if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg2 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg2 / 1000
                                        emit Transfer((800 * arg2 / 1000), msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                                        if arg2 - (800 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[742 len 26],
                                                        mem[794 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (800 * arg2 / 1000)
                                        if balanceOf[address(arg1)] + arg2 - (800 * arg2 / 1000) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (800 * arg2 / 1000)
                                        emit Transfer((arg2 - (800 * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if arg2 / arg2 != 1:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not arg2:
                                        if arg2 / 1000 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 > arg2 - (arg2 / 1000):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 != arg2:
                                            revert with 0, 'tokens::transfer: Amount invalid'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                                        if arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[550 len 26],
                                                        mem[602 len 6]
                                        balanceOf[address(msg.sender)] -= arg2 / 1000
                                        if balanceOf[57005] + (arg2 / 1000) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 / 1000
                                        emit Transfer((arg2 / 1000), msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[681 len 27]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[646 len 26],
                                                        mem[698 len 6]
                                        if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                                        if arg2 - (arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[742 len 26],
                                                        mem[794 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 1000)
                                        if balanceOf[address(arg1)] + arg2 - (arg2 / 1000) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 1000)
                                        emit Transfer((arg2 - (arg2 / 1000)), msg.sender, arg1);
                                    else:
                                        require arg2
                                        if 800 * arg2 / arg2 != 800:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if arg2 / 1000 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 800 * arg2 / 1000 > arg2 - (arg2 / 1000):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 != arg2:
                                            revert with 0, 'tokens::transfer: Amount invalid'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                                        if arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[550 len 26],
                                                        mem[602 len 6]
                                        balanceOf[address(msg.sender)] -= arg2 / 1000
                                        if balanceOf[57005] + (arg2 / 1000) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 / 1000
                                        emit Transfer((arg2 / 1000), msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[681 len 27]
                                        if 800 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[646 len 26],
                                                        mem[698 len 6]
                                        balanceOf[address(msg.sender)] -= 800 * arg2 / 1000
                                        if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg2 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg2 / 1000
                                        emit Transfer((800 * arg2 / 1000), msg.sender, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                                        if arg2 - (arg2 / 1000) - (800 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[742 len 26],
                                                        mem[794 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 1000) + (800 * arg2 / 1000)
                                        if balanceOf[address(arg1)] + arg2 - (arg2 / 1000) - (800 * arg2 / 1000) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 1000) - (800 * arg2 / 1000)
                                        emit Transfer((arg2 - (arg2 / 1000) - (800 * arg2 / 1000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not totalSupply:
        if arg2 == 57005:
            if not arg1:
                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
            if not arg2:
                revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[230 len 26],
                            mem[282 len 6]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[328 len 24],
                            mem[376 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
        else:
            if arg1 == 0xea1b20041219df33dc6d6a76a83335528d0d28f0:
                if not arg1:
                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                if not arg2:
                    revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[230 len 26],
                                mem[282 len 6]
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[328 len 24],
                                mem[376 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
            else:
                if arg2 == 0xf3c083d50c88929fc152afbe4339b04de92dbae8:
                    if not arg1:
                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[230 len 26],
                                    mem[282 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[328 len 24],
                                    mem[376 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                else:
                    if not arg3:
                        if not arg3:
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg3 != arg3:
                                revert with 0, 'tokens::transfer: Amount invalid'
                            if not arg1:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                            if 0 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[486 len 26],
                                            mem[538 len 6]
                            if balanceOf[57005] < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, arg1, 57005);
                            if not arg1:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                            if 0 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[582 len 26],
                                            mem[634 len 6]
                            if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                            if not arg1:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[678 len 26],
                                            mem[730 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            require arg3
                            if 800 * arg3 / arg3 != 800:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 800 * arg3 / 1000 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg3 != arg3:
                                revert with 0, 'tokens::transfer: Amount invalid'
                            if not arg1:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                            if 0 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[486 len 26],
                                            mem[538 len 6]
                            if balanceOf[57005] < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, arg1, 57005);
                            if not arg1:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                            if 800 * arg3 / 1000 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[582 len 26],
                                            mem[634 len 6]
                            balanceOf[address(arg1)] -= 800 * arg3 / 1000
                            if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg3 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg3 / 1000
                            emit Transfer((800 * arg3 / 1000), arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                            if not arg1:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                            if arg3 - (800 * arg3 / 1000) > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[678 len 26],
                                            mem[730 len 6]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (800 * arg3 / 1000)
                            if balanceOf[address(arg2)] + arg3 - (800 * arg3 / 1000) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (800 * arg3 / 1000)
                            emit Transfer((arg3 - (800 * arg3 / 1000)), arg1, arg2);
                    else:
                        require arg3
                        if arg3 / arg3 != 1:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not arg3:
                            if arg3 / 1000 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > arg3 - (arg3 / 1000):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg3 != arg3:
                                revert with 0, 'tokens::transfer: Amount invalid'
                            if not arg1:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                            if arg3 / 1000 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[486 len 26],
                                            mem[538 len 6]
                            balanceOf[address(arg1)] -= arg3 / 1000
                            if balanceOf[57005] + (arg3 / 1000) < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[57005] += arg3 / 1000
                            emit Transfer((arg3 / 1000), arg1, 57005);
                            if not arg1:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                            if 0 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[582 len 26],
                                            mem[634 len 6]
                            if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                            if not arg1:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                            if arg3 - (arg3 / 1000) > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[678 len 26],
                                            mem[730 len 6]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 1000)
                            if balanceOf[address(arg2)] + arg3 - (arg3 / 1000) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 1000)
                            emit Transfer((arg3 - (arg3 / 1000)), arg1, arg2);
                        else:
                            require arg3
                            if 800 * arg3 / arg3 != 800:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if arg3 / 1000 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 800 * arg3 / 1000 > arg3 - (arg3 / 1000):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg3 != arg3:
                                revert with 0, 'tokens::transfer: Amount invalid'
                            if not arg1:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                            if arg3 / 1000 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[486 len 26],
                                            mem[538 len 6]
                            balanceOf[address(arg1)] -= arg3 / 1000
                            if balanceOf[57005] + (arg3 / 1000) < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[57005] += arg3 / 1000
                            emit Transfer((arg3 / 1000), arg1, 57005);
                            if not arg1:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                            if 800 * arg3 / 1000 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[582 len 26],
                                            mem[634 len 6]
                            balanceOf[address(arg1)] -= 800 * arg3 / 1000
                            if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg3 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg3 / 1000
                            emit Transfer((800 * arg3 / 1000), arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                            if not arg1:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                            if arg3 - (arg3 / 1000) - (800 * arg3 / 1000) > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[678 len 26],
                                            mem[730 len 6]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 1000) + (800 * arg3 / 1000)
                            if balanceOf[address(arg2)] + arg3 - (arg3 / 1000) - (800 * arg3 / 1000) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 1000) - (800 * arg3 / 1000)
                            emit Transfer((arg3 - (arg3 / 1000) - (800 * arg3 / 1000)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[776 len 24],
                                    mem[824 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[904 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[902 len 30]
    else:
        require totalSupply
        if totalSupply * maxTransferAmountRate / totalSupply != maxTransferAmountRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply * maxTransferAmountRate / 10000 <= 0:
            if arg2 == 57005:
                if not arg1:
                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                if not arg2:
                    revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[230 len 26],
                                mem[282 len 6]
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[328 len 24],
                                mem[376 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
            else:
                if arg1 == 0xea1b20041219df33dc6d6a76a83335528d0d28f0:
                    if not arg1:
                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[230 len 26],
                                    mem[282 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[328 len 24],
                                    mem[376 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                else:
                    if arg2 == 0xf3c083d50c88929fc152afbe4339b04de92dbae8:
                        if not arg1:
                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[230 len 26],
                                        mem[282 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[328 len 24],
                                        mem[376 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                    else:
                        if not arg3:
                            if not arg3:
                                if 0 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg3 != arg3:
                                    revert with 0, 'tokens::transfer: Amount invalid'
                                if not arg1:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                if 0 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[486 len 26],
                                                mem[538 len 6]
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, arg1, 57005);
                                if not arg1:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                if 0 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[582 len 26],
                                                mem[634 len 6]
                                if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                if not arg1:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                if not arg2:
                                    revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[678 len 26],
                                                mem[730 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                require arg3
                                if 800 * arg3 / arg3 != 800:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if 0 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 800 * arg3 / 1000 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg3 != arg3:
                                    revert with 0, 'tokens::transfer: Amount invalid'
                                if not arg1:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                if 0 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[486 len 26],
                                                mem[538 len 6]
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, arg1, 57005);
                                if not arg1:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                if 800 * arg3 / 1000 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[582 len 26],
                                                mem[634 len 6]
                                balanceOf[address(arg1)] -= 800 * arg3 / 1000
                                if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg3 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg3 / 1000
                                emit Transfer((800 * arg3 / 1000), arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                if not arg1:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                if not arg2:
                                    revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                if arg3 - (800 * arg3 / 1000) > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[678 len 26],
                                                mem[730 len 6]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (800 * arg3 / 1000)
                                if balanceOf[address(arg2)] + arg3 - (800 * arg3 / 1000) < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (800 * arg3 / 1000)
                                emit Transfer((arg3 - (800 * arg3 / 1000)), arg1, arg2);
                        else:
                            require arg3
                            if arg3 / arg3 != 1:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not arg3:
                                if arg3 / 1000 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > arg3 - (arg3 / 1000):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg3 != arg3:
                                    revert with 0, 'tokens::transfer: Amount invalid'
                                if not arg1:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                if arg3 / 1000 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[486 len 26],
                                                mem[538 len 6]
                                balanceOf[address(arg1)] -= arg3 / 1000
                                if balanceOf[57005] + (arg3 / 1000) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += arg3 / 1000
                                emit Transfer((arg3 / 1000), arg1, 57005);
                                if not arg1:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                if 0 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[582 len 26],
                                                mem[634 len 6]
                                if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                if not arg1:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                if not arg2:
                                    revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                if arg3 - (arg3 / 1000) > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[678 len 26],
                                                mem[730 len 6]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 1000)
                                if balanceOf[address(arg2)] + arg3 - (arg3 / 1000) < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 1000)
                                emit Transfer((arg3 - (arg3 / 1000)), arg1, arg2);
                            else:
                                require arg3
                                if 800 * arg3 / arg3 != 800:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if arg3 / 1000 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 800 * arg3 / 1000 > arg3 - (arg3 / 1000):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg3 != arg3:
                                    revert with 0, 'tokens::transfer: Amount invalid'
                                if not arg1:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                if arg3 / 1000 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[486 len 26],
                                                mem[538 len 6]
                                balanceOf[address(arg1)] -= arg3 / 1000
                                if balanceOf[57005] + (arg3 / 1000) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += arg3 / 1000
                                emit Transfer((arg3 / 1000), arg1, 57005);
                                if not arg1:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                if 800 * arg3 / 1000 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[582 len 26],
                                                mem[634 len 6]
                                balanceOf[address(arg1)] -= 800 * arg3 / 1000
                                if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg3 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg3 / 1000
                                emit Transfer((800 * arg3 / 1000), arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                if not arg1:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                if not arg2:
                                    revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                if arg3 - (arg3 / 1000) - (800 * arg3 / 1000) > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[678 len 26],
                                                mem[730 len 6]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 1000) + (800 * arg3 / 1000)
                                if balanceOf[address(arg2)] + arg3 - (arg3 / 1000) - (800 * arg3 / 1000) < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 1000) - (800 * arg3 / 1000)
                                emit Transfer((arg3 - (arg3 / 1000) - (800 * arg3 / 1000)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[776 len 24],
                                        mem[824 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[904 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[902 len 30]
        else:
            if stor7[address(arg1)]:
                if arg2 == 57005:
                    if not arg1:
                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[230 len 26],
                                    mem[282 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[328 len 24],
                                    mem[376 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                else:
                    if arg1 == 0xea1b20041219df33dc6d6a76a83335528d0d28f0:
                        if not arg1:
                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[230 len 26],
                                        mem[282 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[328 len 24],
                                        mem[376 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                    else:
                        if arg2 == 0xf3c083d50c88929fc152afbe4339b04de92dbae8:
                            if not arg1:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[328 len 24],
                                            mem[376 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                        else:
                            if not arg3:
                                if not arg3:
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'tokens::transfer: Amount invalid'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[486 len 26],
                                                    mem[538 len 6]
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 57005);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[582 len 26],
                                                    mem[634 len 6]
                                    if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[678 len 26],
                                                    mem[730 len 6]
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    require arg3
                                    if 800 * arg3 / arg3 != 800:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 800 * arg3 / 1000 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'tokens::transfer: Amount invalid'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[486 len 26],
                                                    mem[538 len 6]
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 57005);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                    if 800 * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[582 len 26],
                                                    mem[634 len 6]
                                    balanceOf[address(arg1)] -= 800 * arg3 / 1000
                                    if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg3 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg3 / 1000
                                    emit Transfer((800 * arg3 / 1000), arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                    if arg3 - (800 * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[678 len 26],
                                                    mem[730 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (800 * arg3 / 1000)
                                    if balanceOf[address(arg2)] + arg3 - (800 * arg3 / 1000) < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (800 * arg3 / 1000)
                                    emit Transfer((arg3 - (800 * arg3 / 1000)), arg1, arg2);
                            else:
                                require arg3
                                if arg3 / arg3 != 1:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not arg3:
                                    if arg3 / 1000 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > arg3 - (arg3 / 1000):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'tokens::transfer: Amount invalid'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                    if arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[486 len 26],
                                                    mem[538 len 6]
                                    balanceOf[address(arg1)] -= arg3 / 1000
                                    if balanceOf[57005] + (arg3 / 1000) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg3 / 1000
                                    emit Transfer((arg3 / 1000), arg1, 57005);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[582 len 26],
                                                    mem[634 len 6]
                                    if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                    if arg3 - (arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[678 len 26],
                                                    mem[730 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 1000)
                                    if balanceOf[address(arg2)] + arg3 - (arg3 / 1000) < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 1000)
                                    emit Transfer((arg3 - (arg3 / 1000)), arg1, arg2);
                                else:
                                    require arg3
                                    if 800 * arg3 / arg3 != 800:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if arg3 / 1000 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 800 * arg3 / 1000 > arg3 - (arg3 / 1000):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'tokens::transfer: Amount invalid'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                    if arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[486 len 26],
                                                    mem[538 len 6]
                                    balanceOf[address(arg1)] -= arg3 / 1000
                                    if balanceOf[57005] + (arg3 / 1000) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg3 / 1000
                                    emit Transfer((arg3 / 1000), arg1, 57005);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                    if 800 * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[582 len 26],
                                                    mem[634 len 6]
                                    balanceOf[address(arg1)] -= 800 * arg3 / 1000
                                    if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg3 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg3 / 1000
                                    emit Transfer((800 * arg3 / 1000), arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                    if arg3 - (arg3 / 1000) - (800 * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[678 len 26],
                                                    mem[730 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 1000) + (800 * arg3 / 1000)
                                    if balanceOf[address(arg2)] + arg3 - (arg3 / 1000) - (800 * arg3 / 1000) < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 1000) - (800 * arg3 / 1000)
                                    emit Transfer((arg3 - (arg3 / 1000) - (800 * arg3 / 1000)), arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[776 len 24],
                                            mem[824 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[904 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[902 len 30]
            else:
                if stor7[address(arg2)]:
                    if arg2 == 57005:
                        if not arg1:
                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[230 len 26],
                                        mem[282 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[328 len 24],
                                        mem[376 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                    else:
                        if arg1 == 0xea1b20041219df33dc6d6a76a83335528d0d28f0:
                            if not arg1:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[328 len 24],
                                            mem[376 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                        else:
                            if arg2 == 0xf3c083d50c88929fc152afbe4339b04de92dbae8:
                                if not arg1:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                if not arg2:
                                    revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[230 len 26],
                                                mem[282 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[328 len 24],
                                                mem[376 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                            else:
                                if not arg3:
                                    if not arg3:
                                        if 0 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg3 != arg3:
                                            revert with 0, 'tokens::transfer: Amount invalid'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                        if 0 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[486 len 26],
                                                        mem[538 len 6]
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, arg1, 57005);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                        if 0 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[582 len 26],
                                                        mem[634 len 6]
                                        if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                        if not arg2:
                                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[678 len 26],
                                                        mem[730 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        require arg3
                                        if 800 * arg3 / arg3 != 800:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if 0 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 800 * arg3 / 1000 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg3 != arg3:
                                            revert with 0, 'tokens::transfer: Amount invalid'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                        if 0 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[486 len 26],
                                                        mem[538 len 6]
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, arg1, 57005);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                        if 800 * arg3 / 1000 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[582 len 26],
                                                        mem[634 len 6]
                                        balanceOf[address(arg1)] -= 800 * arg3 / 1000
                                        if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg3 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg3 / 1000
                                        emit Transfer((800 * arg3 / 1000), arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                        if not arg2:
                                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                        if arg3 - (800 * arg3 / 1000) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[678 len 26],
                                                        mem[730 len 6]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (800 * arg3 / 1000)
                                        if balanceOf[address(arg2)] + arg3 - (800 * arg3 / 1000) < balanceOf[address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (800 * arg3 / 1000)
                                        emit Transfer((arg3 - (800 * arg3 / 1000)), arg1, arg2);
                                else:
                                    require arg3
                                    if arg3 / arg3 != 1:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not arg3:
                                        if arg3 / 1000 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 > arg3 - (arg3 / 1000):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg3 != arg3:
                                            revert with 0, 'tokens::transfer: Amount invalid'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                        if arg3 / 1000 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[486 len 26],
                                                        mem[538 len 6]
                                        balanceOf[address(arg1)] -= arg3 / 1000
                                        if balanceOf[57005] + (arg3 / 1000) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg3 / 1000
                                        emit Transfer((arg3 / 1000), arg1, 57005);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                        if 0 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[582 len 26],
                                                        mem[634 len 6]
                                        if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                        if not arg2:
                                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                        if arg3 - (arg3 / 1000) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[678 len 26],
                                                        mem[730 len 6]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 1000)
                                        if balanceOf[address(arg2)] + arg3 - (arg3 / 1000) < balanceOf[address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 1000)
                                        emit Transfer((arg3 - (arg3 / 1000)), arg1, arg2);
                                    else:
                                        require arg3
                                        if 800 * arg3 / arg3 != 800:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if arg3 / 1000 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 800 * arg3 / 1000 > arg3 - (arg3 / 1000):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg3 != arg3:
                                            revert with 0, 'tokens::transfer: Amount invalid'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                                        if arg3 / 1000 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[486 len 26],
                                                        mem[538 len 6]
                                        balanceOf[address(arg1)] -= arg3 / 1000
                                        if balanceOf[57005] + (arg3 / 1000) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg3 / 1000
                                        emit Transfer((arg3 / 1000), arg1, 57005);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                                        if 800 * arg3 / 1000 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[582 len 26],
                                                        mem[634 len 6]
                                        balanceOf[address(arg1)] -= 800 * arg3 / 1000
                                        if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg3 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg3 / 1000
                                        emit Transfer((800 * arg3 / 1000), arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                        if not arg2:
                                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                        if arg3 - (arg3 / 1000) - (800 * arg3 / 1000) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[678 len 26],
                                                        mem[730 len 6]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 1000) + (800 * arg3 / 1000)
                                        if balanceOf[address(arg2)] + arg3 - (arg3 / 1000) - (800 * arg3 / 1000) < balanceOf[address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 1000) - (800 * arg3 / 1000)
                                        emit Transfer((arg3 - (arg3 / 1000) - (800 * arg3 / 1000)), arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[776 len 24],
                                                mem[824 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[904 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[902 len 30]
                else:
                    if not totalSupply:
                        if arg3 > 0:
                            revert with 0, 
                                        32,
                                        56,
                                        0xfe616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e,
                                        mem[348 len 8]
                    else:
                        require totalSupply
                        if totalSupply * maxTransferAmountRate / totalSupply != maxTransferAmountRate:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if arg3 > totalSupply * maxTransferAmountRate / 10000:
                            revert with 0, 
                                        32,
                                        56,
                                        0xfe616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e,
                                        mem[348 len 8]
                    if arg2 == 57005:
                        if not arg1:
                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[294 len 26],
                                        mem[346 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[392 len 24],
                                        mem[440 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                    else:
                        if arg1 == 0xea1b20041219df33dc6d6a76a83335528d0d28f0:
                            if not arg1:
                                revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[294 len 26],
                                            mem[346 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[392 len 24],
                                            mem[440 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                        else:
                            if arg2 == 0xf3c083d50c88929fc152afbe4339b04de92dbae8:
                                if not arg1:
                                    revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                if not arg2:
                                    revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[294 len 26],
                                                mem[346 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[392 len 24],
                                                mem[440 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                            else:
                                if not arg3:
                                    if not arg3:
                                        if 0 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg3 != arg3:
                                            revert with 0, 'tokens::transfer: Amount invalid'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                                        if 0 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[550 len 26],
                                                        mem[602 len 6]
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, arg1, 57005);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[681 len 27]
                                        if 0 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[646 len 26],
                                                        mem[698 len 6]
                                        if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                                        if not arg2:
                                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[742 len 26],
                                                        mem[794 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        require arg3
                                        if 800 * arg3 / arg3 != 800:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if 0 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 800 * arg3 / 1000 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg3 != arg3:
                                            revert with 0, 'tokens::transfer: Amount invalid'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                                        if 0 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[550 len 26],
                                                        mem[602 len 6]
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, arg1, 57005);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[681 len 27]
                                        if 800 * arg3 / 1000 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[646 len 26],
                                                        mem[698 len 6]
                                        balanceOf[address(arg1)] -= 800 * arg3 / 1000
                                        if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg3 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg3 / 1000
                                        emit Transfer((800 * arg3 / 1000), arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                                        if not arg2:
                                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                                        if arg3 - (800 * arg3 / 1000) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[742 len 26],
                                                        mem[794 len 6]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (800 * arg3 / 1000)
                                        if balanceOf[address(arg2)] + arg3 - (800 * arg3 / 1000) < balanceOf[address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (800 * arg3 / 1000)
                                        emit Transfer((arg3 - (800 * arg3 / 1000)), arg1, arg2);
                                else:
                                    require arg3
                                    if arg3 / arg3 != 1:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not arg3:
                                        if arg3 / 1000 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 > arg3 - (arg3 / 1000):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg3 != arg3:
                                            revert with 0, 'tokens::transfer: Amount invalid'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                                        if arg3 / 1000 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[550 len 26],
                                                        mem[602 len 6]
                                        balanceOf[address(arg1)] -= arg3 / 1000
                                        if balanceOf[57005] + (arg3 / 1000) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg3 / 1000
                                        emit Transfer((arg3 / 1000), arg1, 57005);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[681 len 27]
                                        if 0 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[646 len 26],
                                                        mem[698 len 6]
                                        if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                                        if not arg2:
                                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                                        if arg3 - (arg3 / 1000) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[742 len 26],
                                                        mem[794 len 6]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 1000)
                                        if balanceOf[address(arg2)] + arg3 - (arg3 / 1000) < balanceOf[address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 1000)
                                        emit Transfer((arg3 - (arg3 / 1000)), arg1, arg2);
                                    else:
                                        require arg3
                                        if 800 * arg3 / arg3 != 800:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if arg3 / 1000 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 800 * arg3 / 1000 > arg3 - (arg3 / 1000):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg3 != arg3:
                                            revert with 0, 'tokens::transfer: Amount invalid'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                                        if arg3 / 1000 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[550 len 26],
                                                        mem[602 len 6]
                                        balanceOf[address(arg1)] -= arg3 / 1000
                                        if balanceOf[57005] + (arg3 / 1000) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg3 / 1000
                                        emit Transfer((arg3 / 1000), arg1, 57005);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[681 len 27]
                                        if 800 * arg3 / 1000 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[646 len 26],
                                                        mem[698 len 6]
                                        balanceOf[address(arg1)] -= 800 * arg3 / 1000
                                        if balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] + (800 * arg3 / 1000) < balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[0xf3c083d50c88929fc152afbe4339b04de92dbae8] += 800 * arg3 / 1000
                                        emit Transfer((800 * arg3 / 1000), arg1, 0xf3c083d50c88929fc152afbe4339b04de92dbae8);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x2e42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[777 len 27]
                                        if not arg2:
                                            revert with 0, 32, 35, 0x2e42455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[775 len 29]
                                        if arg3 - (arg3 / 1000) - (800 * arg3 / 1000) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[742 len 26],
                                                        mem[794 len 6]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 1000) + (800 * arg3 / 1000)
                                        if balanceOf[address(arg2)] + arg3 - (arg3 / 1000) - (800 * arg3 / 1000) < balanceOf[address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 1000) - (800 * arg3 / 1000)
                                        emit Transfer((arg3 - (arg3 / 1000) - (800 * arg3 / 1000)), arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[840 len 24],
                                                mem[888 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[968 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[966 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
