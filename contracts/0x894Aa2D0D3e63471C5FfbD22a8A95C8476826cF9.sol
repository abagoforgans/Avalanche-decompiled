contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = 'PUMPKINS'

const decimals = 18

const symbol = ''


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint256 totalSupply;
uint256 totalFees;
uint256 totalBurn;
uint256 _BURN_FEE;
uint256 _FARM_FEE;
uint256 _ILP_FEE;
uint256 _DEV_FEE;
uint256 _MARKETING_FEE;
uint256 _MAX_TX_PERCENT;
uint256 maxHoldingRatio;
address wDevAddress;
address wFarmAddress;
address wKinsIlpAddress;
address wKinsmasterAddress;
address wMarketingAddress;
uint8 takeFee; offset 160
uint128 stor21; offset 160
address operatorAddress;

function WKinsIlp() payable {
    return wKinsIlpAddress
}

function totalFees() payable {
    return totalFees
}

function totalSupply() payable {
    return totalSupply
}

function _MAX_TX_PERCENT() payable {
    return _MAX_TX_PERCENT
}

function WDev() payable {
    return wDevAddress
}

function WFarm() payable {
    return wFarmAddress
}

function totalBurn() payable {
    return totalBurn
}

function isExcludedFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function operator() payable {
    return operatorAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function _BURN_FEE() payable {
    return _BURN_FEE
}

function isExcludedFromMaxHolding(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function owner() payable {
    return owner
}

function WMarketing() payable {
    return wMarketingAddress
}

function _MARKETING_FEE() payable {
    return _MARKETING_FEE
}

function maxHoldingRatio() payable {
    return maxHoldingRatio
}

function _ILP_FEE() payable {
    return _ILP_FEE
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _FARM_FEE() payable {
    return _FARM_FEE
}

function WKinsmaster() payable {
    return wKinsmasterAddress
}

function TakeFee() payable {
    return bool(takeFee)
}

function _DEV_FEE() payable {
    return _DEV_FEE
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

function includeInFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor3[address(arg1)]:
        revert with 0, 'Account is not excluded From Fee'
    stor3[address(arg1)] = 0
    emit IncludeInFee(arg1);
}

function getMaxHolding() payable {
    if not totalSupply:
        return 0
    if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (maxHoldingRatio * totalSupply / 100)
}

function getMaxTxAmount() payable {
    if not totalSupply:
        return 0
    if _MAX_TX_PERCENT * totalSupply / totalSupply != _MAX_TX_PERCENT:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (_MAX_TX_PERCENT * totalSupply / 1000)
}

function setTakeFee(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    stor21 = Mask(96, 0, arg1)
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setWFarm(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    wFarmAddress = arg1
    stor3[address(arg1)] = 1
    stor4[address(arg1)] = 1
    return 1
}

function excludeFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x674163636f756e7420697320616c7265616479206578636c756465642046726f6d204665,
                    mem[200 len 28]
    stor3[address(arg1)] = 1
    emit ExcludeFromFee(arg1);
}

function setWKinsIlp(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    wKinsIlpAddress = arg1
    stor3[address(arg1)] = 1
    stor4[address(arg1)] = 1
    return 1
}

function setWMarketing(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    wMarketingAddress = arg1
    stor3[address(arg1)] = 1
    stor4[address(arg1)] = 1
    return 1
}

function setDev(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    wDevAddress = arg1
    stor3[address(arg1)] = 1
    stor4[address(arg1)] = 1
    emit 0x627687be: arg1
}

function includeInMaxHolding(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x734163636f756e74206973206e6f74206578636c756465642046726f6d204d6178486f6c64696e,
                    mem[203 len 25]
    stor4[address(arg1)] = 0
    emit 0xd4a1693e: arg1
}

function setWKinsmaster(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    wKinsmasterAddress = arg1
    stor3[address(arg1)] = 1
    stor4[address(arg1)] = 1
    return 1
}

function excludeFromMaxHolding(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x734163636f756e7420697320616c7265616479206578636c756465642046726f6d204d6178486f6c64696e,
                    mem[207 len 21]
    stor4[address(arg1)] = 1
    emit 0x1f6e2829: arg1
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    operatorAddress = arg1
    stor3[address(arg1)] = 1
    stor4[address(arg1)] = 1
    emit 0x627687be: arg1
}

function setIlpFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    if arg1 > 20:
        revert with 0, 'Error : MaxIlpFee is 2%'
    _ILP_FEE = arg1
    emit 0x87fcfbee: _ILP_FEE, arg1
}

function setDevFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    if arg1 > 20:
        revert with 0, 'Error : MaxDevFee is 2%'
    _DEV_FEE = arg1
    emit DevFeeUpdated(_DEV_FEE, arg1);
}

function setBurnFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    if arg1 > 50:
        revert with 0, 'Error : MaxBurnFee is 5%'
    _BURN_FEE = arg1
    emit 0x78f14612: _BURN_FEE, arg1
}

function setFarmFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    if arg1 > 100:
        revert with 0, 'Error : MaxFarmFee is 10%'
    _FARM_FEE = arg1
    emit 0x78f14612: _FARM_FEE, arg1
}

function setMarketingFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    if arg1 > 20:
        revert with 0, 'Error : MaxMarketingFee is 2%'
    _MARKETING_FEE = arg1
    emit DevFeeUpdated(_MARKETING_FEE, _DEV_FEE);
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

function setMaxHoldingRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    if arg1 < 1:
        revert with 0, 'Error : Minimum maxTxLimit is 1%'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x724572726f72203a204d6178696d756d206d617854784c696d697420697320313030,
                    mem[198 len 30]
    maxHoldingRatio = arg1
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    if arg1 + totalBurn < totalBurn:
        revert with 0, 'SafeMath: addition overflow'
    totalBurn += arg1
    emit Transfer(arg1, msg.sender, 0);
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

function setMaxTxRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    if arg1 < 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x254572726f72203a204d696e696d756d206d617854784c696d697420697320302e35,
                    mem[198 len 30]
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x724572726f72203a204d6178696d756d206d617854784c696d697420697320313030,
                    mem[198 len 30]
    _MAX_TX_PERCENT = arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor3[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor3[address(arg1)]:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                            0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not takeFee:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                                0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not totalSupply:
                    if arg2 > 0:
                        revert with 0, 32, 37, 0x73416d6f756e74206c6172676572207468616e204d6178207472616e73666572206c696d69, mem[265 len 27]
                else:
                    if _MAX_TX_PERCENT * totalSupply / totalSupply != _MAX_TX_PERCENT:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if arg2 > _MAX_TX_PERCENT * totalSupply / 1000:
                        revert with 0, 32, 37, 0x73416d6f756e74206c6172676572207468616e204d6178207472616e73666572206c696d69, mem[265 len 27]
                if not arg2:
                    if not arg2:
                        if not arg2:
                            if not arg2:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_MARKETING_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += _MARKETING_FEE * arg2 / 1000
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_MARKETING_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += _MARKETING_FEE * arg2 / 1000
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_MARKETING_FEE', 13)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000)), msg.sender, arg1);
                            else:
                                if _DEV_FEE * arg2 / arg2 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not arg2:
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 < _DEV_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_DEV_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += _DEV_FEE * arg2 / 1000
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_DEV_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_DEV_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_DEV_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_DEV_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_DEV_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_DEV_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += _DEV_FEE * arg2 / 1000
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_DEV_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_DEV_FEE', 12)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_DEV_FEE * arg2 / 1000)
                                    if arg2 - (_DEV_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_DEV_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_DEV_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) < _DEV_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_MARKETING_FEE', 13)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_DEV_FEE', 12)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000)), msg.sender, arg1);
                        else:
                            if _ILP_FEE * arg2 / arg2 != _ILP_FEE:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not arg2:
                                if not arg2:
                                    if _ILP_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg2 / 1000 < _ILP_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_ILP_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += _ILP_FEE * arg2 / 1000
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_ILP_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_ILP_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_ILP_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_ILP_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_ILP_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_ILP_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += _ILP_FEE * arg2 / 1000
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_ILP_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_ILP_FEE', 11)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_ILP_FEE * arg2 / 1000)
                                    if arg2 - (_ILP_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_ILP_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_ILP_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if _ILP_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg2 / 1000 < _ILP_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) < _ILP_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_MARKETING_FEE', 13)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_ILP_FEE', 11)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000)), msg.sender, arg1);
                            else:
                                if _DEV_FEE * arg2 / arg2 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not arg2:
                                    if _ILP_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) < _ILP_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_DEV_FEE', 12)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_ILP_FEE', 11)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000)
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if _ILP_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) < _ILP_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_MARKETING_FEE', 13)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_DEV_FEE', 12)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_ILP_FEE', 11)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000)), msg.sender, arg1);
                    else:
                        if _BURN_FEE * arg2 / arg2 != _BURN_FEE:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not arg2:
                            if not arg2:
                                if not arg2:
                                    if _BURN_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _BURN_FEE * arg2 / 1000 < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _BURN_FEE * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += _BURN_FEE * arg2 / 1000
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += _BURN_FEE * arg2 / 1000
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_BURN_FEE', 9)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_BURN_FEE * arg2 / 1000)
                                    if arg2 - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_BURN_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if _BURN_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _BURN_FEE * arg2 / 1000 < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_MARKETING_FEE', 13)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_BURN_FEE', 9)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000)), msg.sender, arg1);
                            else:
                                if _DEV_FEE * arg2 / arg2 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not arg2:
                                    if _BURN_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _BURN_FEE * arg2 / 1000 < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_DEV_FEE', 12)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_BURN_FEE', 9)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000)
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if _BURN_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _BURN_FEE * arg2 / 1000 < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_MARKETING_FEE', 13)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_DEV_FEE', 12)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_BURN_FEE', 9)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000)), msg.sender, arg1);
                        else:
                            if _ILP_FEE * arg2 / arg2 != _ILP_FEE:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not arg2:
                                if not arg2:
                                    if _BURN_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_ILP_FEE', 11)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_BURN_FEE', 9)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000)
                                    if arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if _BURN_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_MARKETING_FEE', 13)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_ILP_FEE', 11)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_BURN_FEE', 9)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000)), msg.sender, arg1);
                            else:
                                if _DEV_FEE * arg2 / arg2 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not arg2:
                                    if _BURN_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_DEV_FEE', 12)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_ILP_FEE', 11)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_BURN_FEE', 9)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000)
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if _BURN_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_MARKETING_FEE', 13)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_DEV_FEE', 12)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_ILP_FEE', 11)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_BURN_FEE', 9)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000)), msg.sender, arg1);
                else:
                    if _FARM_FEE * arg2 / arg2 != _FARM_FEE:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not arg2:
                        if not arg2:
                            if not arg2:
                                if not arg2:
                                    if _FARM_FEE * arg2 / 1000 < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _FARM_FEE * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += _FARM_FEE * arg2 / 1000
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += _FARM_FEE * arg2 / 1000
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_FARM_FEE', 10)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if _FARM_FEE * arg2 / 1000 < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_MARKETING_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_MARKETING_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_MARKETING_FEE', 13)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_FARM_FEE', 10)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                            else:
                                if _DEV_FEE * arg2 / arg2 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not arg2:
                                    if _FARM_FEE * arg2 / 1000 < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_DEV_FEE', 12)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_FARM_FEE', 10)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if _FARM_FEE * arg2 / 1000 < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_MARKETING_FEE', 13)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_DEV_FEE', 12)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_FARM_FEE', 10)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                        else:
                            if _ILP_FEE * arg2 / arg2 != _ILP_FEE:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not arg2:
                                if not arg2:
                                    if _FARM_FEE * arg2 / 1000 < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_ILP_FEE', 11)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_FARM_FEE', 10)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if _FARM_FEE * arg2 / 1000 < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_MARKETING_FEE', 13)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_ILP_FEE', 11)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_FARM_FEE', 10)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                            else:
                                if _DEV_FEE * arg2 / arg2 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not arg2:
                                    if _FARM_FEE * arg2 / 1000 < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_DEV_FEE', 12)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_ILP_FEE', 11)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_FARM_FEE', 10)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if _FARM_FEE * arg2 / 1000 < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        if 0 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_MARKETING_FEE', 13)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_DEV_FEE', 12)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_ILP_FEE', 11)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_FARM_FEE', 10)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                    else:
                        if _BURN_FEE * arg2 / arg2 != _BURN_FEE:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not arg2:
                            if not arg2:
                                if not arg2:
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_BURN_FEE', 9)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_FARM_FEE', 10)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_MARKETING_FEE', 13)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_BURN_FEE', 9)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_FARM_FEE', 10)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                            else:
                                if _DEV_FEE * arg2 / arg2 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not arg2:
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_DEV_FEE', 12)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_BURN_FEE', 9)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_FARM_FEE', 10)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        if balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] = balanceOf[stor18]
                                        emit Transfer(0, msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_MARKETING_FEE', 13)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_DEV_FEE', 12)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_BURN_FEE', 9)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_FARM_FEE', 10)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                        else:
                            if _ILP_FEE * arg2 / arg2 != _ILP_FEE:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not arg2:
                                if not arg2:
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_ILP_FEE', 11)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_BURN_FEE', 9)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_FARM_FEE', 10)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        if balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] = balanceOf[stor16]
                                        emit Transfer(0, msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_MARKETING_FEE', 13)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_ILP_FEE', 11)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_BURN_FEE', 9)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_FARM_FEE', 10)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                            else:
                                if _DEV_FEE * arg2 / arg2 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not arg2:
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        if balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] = balanceOf[stor20]
                                        emit Transfer(0, msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_DEV_FEE', 12)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_ILP_FEE', 11)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_BURN_FEE', 9)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_FARM_FEE', 10)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if stor4[address(arg1)]:
                                        if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[645 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[610 len 30], mem[670 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[774 len 26],
                                                        mem[826 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[870 len 26],
                                                        mem[922 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[966 len 26],
                                                        mem[1018 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1062 len 26],
                                                        mem[1114 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1158 len 26],
                                                        mem[1210 len 6]
                                    else:
                                        if not totalSupply:
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > 0:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        else:
                                            if maxHoldingRatio * totalSupply / totalSupply != maxHoldingRatio:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[address(arg1)] > maxHoldingRatio * totalSupply / 100:
                                                revert with 0, 32, 36, 0x65726563697069656e7420686f6c64696e6773206578656564204d617820686f6c64696e, mem[712 len 28]
                                        if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                        if not msg.sender:
                                            revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[709 len 31]
                                        if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x6745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[674 len 30], mem[734 len 2]
                                        balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                        if _BURN_FEE * arg2 / 1000 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalSupply -= _BURN_FEE * arg2 / 1000
                                        if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalBurn += _BURN_FEE * arg2 / 1000
                                        emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not wFarmAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                        if (_FARM_FEE * arg2 / 1000) + balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += _FARM_FEE * arg2 / 1000
                                        emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                                        if not wKinsIlpAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                                        if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[934 len 26],
                                                        mem[986 len 6]
                                        balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                        if (_ILP_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor18] += _ILP_FEE * arg2 / 1000
                                        emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                        if not wDevAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                        if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1030 len 26],
                                                        mem[1082 len 6]
                                        balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                        if (_DEV_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor16] += _DEV_FEE * arg2 / 1000
                                        emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                        if not wMarketingAddress:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                        if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1126 len 26],
                                                        mem[1178 len 6]
                                        balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                        if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor20] < balanceOf[stor20]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor20] += _MARKETING_FEE * arg2 / 1000
                                        emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1257 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1255 len 29]
                                        if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[1222 len 26],
                                                        mem[1274 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', '_MARKETING_FEE', 13)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_DEV_FEE', 12)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_ILP_FEE', 11)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_BURN_FEE', 9)), ('param', 'arg2')), 1000)), ('mul', -1, ('div', ('mul', ('stor', ('name', '_FARM_FEE', 10)), ('param', 'arg2')), 1000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
    return 1
}



}
