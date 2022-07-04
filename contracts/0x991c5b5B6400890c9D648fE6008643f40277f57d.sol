contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const feeAddr = 0x3438a01baaf75fb2de4071ca76354c2854530827

const burnAddr = 57005

const sub_e48849b2(?) = 2000


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint16 stor6;
uint16 transferTaxRate; offset 8
address sub_4af65bbaAddress; offset 24
uint256 stor6; offset 8
mapping of uint8 stor7;
mapping of uint8 stor8;
uint16 maxTransferAmountRate;
mapping of uint8 stor10;
uint8 swapAndLiquifyEnabled;
uint64 stor12;
uint256 stor12;
uint256 minAmountToLiquify;
address swapRouterAddress;
uint8 stor14; offset 160
uint128 stor14; offset 160
address swapPairAddress;
uint256 stor14;
address operatorAddress;

function name() {
    return name[0 len name.length]
}

function sub_0bb77206(?) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function totalSupply() {
    return totalSupply
}

function swapPair() {
    return swapPairAddress
}

function isExcludedFromAntiWhale(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor10[address(arg1)])
}

function decimals() {
    return decimals
}

function maxTransferAmountRate() {
    return maxTransferAmountRate
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function sub_4af65bba(?) {
    return sub_4af65bbaAddress
}

function operator() {
    return operatorAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function transferTaxRate() {
    return transferTaxRate
}

function swapRouter() {
    return swapRouterAddress
}

function minAmountToLiquify() {
    return uint256(minAmountToLiquify)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e6727e0b(?) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_c3e088ac(?) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    sub_4af65bbaAddress = arg1
    emit 0xc2903018: msg.sender, arg1
}

function sub_63afa05f(?) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    stor7[address(arg1)] = uint8(arg2)
    emit 0x23bfc94d: arg2, msg.sender, arg1
}

function sub_daa96e94(?) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    stor8[address(arg1)] = uint8(arg2)
    emit 0x18fbba1b: arg2, msg.sender, arg1
}

function setExcludedFromAntiWhale(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    stor10[address(arg1)] = uint8(arg2)
    emit 0xad1345fc: arg2, msg.sender, arg1
}

function updateSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    emit SwapAndLiquifyEnabledUpdated(arg1, msg.sender);
    swapAndLiquifyEnabled = uint8(arg1)
}

function maxTransferAmount() {
    if not totalSupply:
        return 0
    require totalSupply
    if totalSupply * maxTransferAmountRate / totalSupply != maxTransferAmountRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (totalSupply * maxTransferAmountRate / 10000)
}

function updateMinAmountToLiquify(uint256 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    emit MinAmountToLiquifyUpdated(uint256(minAmountToLiquify), arg1, msg.sender);
    uint256(minAmountToLiquify) = arg1
}

function transferOwnership(address arg1) {
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

function mint(address arg1, uint256 arg2) {
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

function mint(uint256 arg1) {
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

function approve(address arg1, uint256 arg2) {
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
                    0x7442455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOperator(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x6457454156453a3a7472616e736665724f70657261746f723a206e6577206f70657261746f7220697320746865207a65726f20616464726573,
                    mem[221 len 7]
    emit OperatorTransferred(operatorAddress, arg1);
    operatorAddress = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) {
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
        revert with 0, 32, 34, 0x7442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function updateTransferTaxRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 2000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    81,
                    0x2e57454156453a3a7570646174655472616e73666572546178526174653a205472616e73666572207461782072617465206d757374206e6f742065786365656420746865206d6178696d756d2072617465,
                    mem[245 len 15]
    emit TransferTaxRateUpdated(uint16(stor6.field_0), arg1, msg.sender);
    transferTaxRate = arg1
}

function increaseAllowance(address arg1, uint256 arg2) {
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
                    0x7442455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function updateMaxTransferAmountRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7757454156453a3a7570646174654d61785472616e73666572416d6f756e74526174653a204d6178207472616e7366657220616d6f756e7420746f2048696768
    if arg1 < 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    63,
                    0x6557454156453a3a7570646174654d61785472616e73666572416d6f756e74526174653a204d696e207472616e7366657220616d6f756e7420746f204c6f77,
                    mem[227 len 1]
    emit MaxTransferAmountRateUpdated(maxTransferAmountRate, arg1, msg.sender);
    maxTransferAmountRate = arg1
}

function updateSwapRouter(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if swapRouterAddress:
        revert with 0, 'Router already set'
    swapRouterAddress = arg1
    require ext_code.size(swapRouterAddress)
    staticcall swapRouterAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(swapRouterAddress)
    staticcall swapRouterAddress.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor14.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor14.field_0))
    if not swapPairAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x2e5350454354413a3a75706461746553776170526f757465723a20496e76616c696420706169722061646472657373,
                    mem[211 len 17]
    emit SwapRouterUpdated(msg.sender, swapRouterAddress, swapPairAddress);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if totalSupply:
        require totalSupply
        if totalSupply * maxTransferAmountRate / totalSupply != maxTransferAmountRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply * maxTransferAmountRate / 10000 > 0:
            if not stor10[address(msg.sender)]:
                if not stor10[address(arg1)]:
                    if not totalSupply:
                        if arg2 > 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        63,
                                        0x7357454156453a3a616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e,
                                        mem[227 len 1]
                    else:
                        require totalSupply
                        if totalSupply * maxTransferAmountRate / totalSupply != maxTransferAmountRate:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if arg2 > totalSupply * maxTransferAmountRate / 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        63,
                                        0x7357454156453a3a616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e,
                                        mem[227 len 1]
    if bool(swapAndLiquifyEnabled) != 1:
        if arg1 == 57005:
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
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if msg.sender == operatorAddress:
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
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor7[address(arg1)]:
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
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor8[address(msg.sender)]:
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
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
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
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 != arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                34,
                                                0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                mem[198 len 30]
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, this.address);
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
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                require arg2
                                if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if arg2 * transferTaxRate / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 != arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                34,
                                                0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                mem[198 len 30]
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[262 len 26],
                                                mem[314 len 6]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
    else:
        if uint8(stor14.field_160):
            if arg1 == 57005:
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
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if msg.sender == operatorAddress:
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
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor7[address(arg1)]:
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
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor8[address(msg.sender)]:
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
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
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
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    34,
                                                    0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                    mem[198 len 30]
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    35,
                                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                    mem[199 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[166 len 26],
                                                    mem[218 len 6]
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
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
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    require arg2
                                    if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if arg2 * transferTaxRate / 10000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    34,
                                                    0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                    mem[198 len 30]
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    35,
                                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                    mem[199 len 29]
                                    if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[166 len 26],
                                                    mem[218 len 6]
                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                    if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                    emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                    if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[262 len 26],
                                                    mem[314 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
        else:
            if not swapRouterAddress:
                if arg1 == 57005:
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
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if msg.sender == operatorAddress:
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
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor7[address(arg1)]:
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
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor8[address(msg.sender)]:
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
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
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
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 != arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        34,
                                                        0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                        mem[198 len 30]
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        35,
                                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                        mem[199 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
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
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        require arg2
                                        if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if arg2 * transferTaxRate / 10000 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 != arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        34,
                                                        0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                        mem[198 len 30]
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        35,
                                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                        mem[199 len 29]
                                        if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                        balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                        if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                        emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                        if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[262 len 26],
                                                        mem[314 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                        emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
            else:
                if not swapPairAddress:
                    if arg1 == 57005:
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
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if msg.sender == operatorAddress:
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
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor7[address(arg1)]:
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
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor8[address(msg.sender)]:
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
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
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
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if not arg2:
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if arg2 != arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            34,
                                                            0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                            mem[198 len 30]
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            37,
                                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                            mem[201 len 27]
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            35,
                                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                            mem[199 len 29]
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, this.address);
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
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            require arg2
                                            if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if arg2 * transferTaxRate / 10000 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if arg2 != arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            34,
                                                            0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                            mem[198 len 30]
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            37,
                                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                            mem[201 len 27]
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            35,
                                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                            mem[199 len 29]
                                            if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                            balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                            if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                            emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                            if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[262 len 26],
                                                            mem[314 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                            if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                            emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                else:
                    if msg.sender == swapPairAddress:
                        if arg1 == 57005:
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
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if msg.sender == operatorAddress:
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
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7[address(arg1)]:
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
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor8[address(msg.sender)]:
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
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
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
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if not arg2:
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if arg2 != arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                34,
                                                                0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                                mem[198 len 30]
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                37,
                                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                mem[201 len 27]
                                                if not this.address:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                35,
                                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                mem[199 len 29]
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[166 len 26],
                                                                mem[218 len 6]
                                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                emit Transfer(0, msg.sender, this.address);
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
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                require arg2
                                                if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if arg2 * transferTaxRate / 10000 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if arg2 != arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                34,
                                                                0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                                mem[198 len 30]
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                37,
                                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                mem[201 len 27]
                                                if not this.address:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                35,
                                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                mem[199 len 29]
                                                if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[166 len 26],
                                                                mem[218 len 6]
                                                balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                                if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[262 len 26],
                                                                mem[314 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                    else:
                        if msg.sender == owner:
                            if arg1 == 57005:
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
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if msg.sender == operatorAddress:
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
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(arg1)]:
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
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor8[address(msg.sender)]:
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
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
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
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if arg2 != arg2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    34,
                                                                    0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                                    mem[198 len 30]
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    37,
                                                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[201 len 27]
                                                    if not this.address:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    35,
                                                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                    mem[199 len 29]
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[166 len 26],
                                                                    mem[218 len 6]
                                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    emit Transfer(0, msg.sender, this.address);
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
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    require arg2
                                                    if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if arg2 * transferTaxRate / 10000 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if arg2 != arg2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    34,
                                                                    0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                                    mem[198 len 30]
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    37,
                                                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[201 len 27]
                                                    if not this.address:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    35,
                                                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                    mem[199 len 29]
                                                    if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[166 len 26],
                                                                    mem[218 len 6]
                                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                    if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                    emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                                    if not arg1:
                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                                    if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[262 len 26],
                                                                    mem[314 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                    if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                        else:
                            Mask(96, 0, stor14.field_160) = 1
                            transferTaxRate = 0
                            if not totalSupply:
                                if balanceOf[address(this.address)] > 0:
                                    if 0 < uint256(minAmountToLiquify):
                                        Mask(248, 0, stor6.field_8) = transferTaxRate
                                        Mask(96, 0, stor14.field_160) = 0
                                        if arg1 == 57005:
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
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if msg.sender == operatorAddress:
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
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor7[address(arg1)]:
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
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor8[address(msg.sender)]:
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
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
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
                                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if not arg2:
                                                                if 0 > arg2:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if arg2 != arg2:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                34,
                                                                                0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                                                mem[198 len 30]
                                                                if not msg.sender:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                37,
                                                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                                mem[201 len 27]
                                                                if not this.address:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                35,
                                                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[199 len 29]
                                                                if 0 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[166 len 26],
                                                                                mem[218 len 6]
                                                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                emit Transfer(0, msg.sender, this.address);
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
                                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] += arg2
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                            else:
                                                                require arg2
                                                                if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                33,
                                                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[197 len 31]
                                                                if arg2 * transferTaxRate / 10000 > arg2:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if arg2 != arg2:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                34,
                                                                                0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                                                mem[198 len 30]
                                                                if not msg.sender:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                37,
                                                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                                mem[201 len 27]
                                                                if not this.address:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                35,
                                                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[199 len 29]
                                                                if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[166 len 26],
                                                                                mem[218 len 6]
                                                                balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                                if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                                emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                                                if not arg1:
                                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                                                if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[262 len 26],
                                                                                mem[314 len 6]
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                                if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                                emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                                    else:
                                        if not uint256(minAmountToLiquify):
                                            if 0 > uint256(minAmountToLiquify):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(swapRouterAddress)
                                            staticcall swapRouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not this.address:
                                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                                            if not swapRouterAddress:
                                                revert with 0, 32, 34, 0x7442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                                            allowance[address(this.address)][stor13] = 0
                                            emit Approval(0, this.address, swapRouterAddress);
                                            mem[388 len 0] = None
                                            require ext_code.size(swapRouterAddress)
                                            call swapRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not eth.balance(this.address):
                                                call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call sub_4af65bbaAddress with:
                                                     gas 2300 wei
                                            else:
                                                require eth.balance(this.address)
                                                if 25 * eth.balance(this.address) / eth.balance(this.address) != 25:
                                                    revert with 0, '.SafeMath: multiplication overfloddres'
                                                if not 25 * eth.balance(this.address) / 100:
                                                    call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                       value 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call sub_4af65bbaAddress with:
                                                         gas 2300 wei
                                                else:
                                                    require 25 * eth.balance(this.address) / 100
                                                    if 2 * 25 * eth.balance(this.address) / 100 / 25 * eth.balance(this.address) / 100 != 2:
                                                        revert with 0, '.SafeMath: multiplication overfloddres'
                                                    call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                       value 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call sub_4af65bbaAddress with:
                                                       value 2 * 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                            if not this.address:
                                                revert with 0, 'sBEP20: approve from the zero addresddres'
                                            if not swapRouterAddress:
                                                revert with 0, 'tBEP20: approve to the zero addresddres'
                                            allowance[address(this.address)][stor13] = uint256(minAmountToLiquify)
                                            emit Approval(uint256(minAmountToLiquify), this.address, swapRouterAddress);
                                            require ext_code.size(swapRouterAddress)
                                            call swapRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args address(this.address), uint256(minAmountToLiquify), 0, 0, 0x3438a01baaf75fb2de4071ca76354c2854530827, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(0, eth.balance(this.address), uint256(minAmountToLiquify));
                                            Mask(248, 0, stor6.field_8) = transferTaxRate
                                            Mask(96, 0, stor14.field_160) = 0
                                            if arg1 == 57005:
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                if not arg1:
                                                    revert with 0, 'eBEP20: transfer to the zero addres'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                Mask(208, 0, stor12),
                                                                stor12 % 281474976710656
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if msg.sender == operatorAddress:
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                    if not arg1:
                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    Mask(208, 0, stor12),
                                                                    stor12 % 281474976710656
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor7[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                        if not arg1:
                                                            revert with 0, 'eBEP20: transfer to the zero addres'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        Mask(208, 0, stor12),
                                                                        stor12 % 281474976710656
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if stor8[address(msg.sender)]:
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                            if not arg1:
                                                                revert with 0, 'eBEP20: transfer to the zero addres'
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            Mask(208, 0, stor12),
                                                                            stor12 % 281474976710656
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if not transferTaxRate:
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                if not arg1:
                                                                    revert with 0, 'eBEP20: transfer to the zero addres'
                                                                if arg2 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                Mask(208, 0, stor12),
                                                                                stor12 % 281474976710656
                                                                balanceOf[address(msg.sender)] -= arg2
                                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] += arg2
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                            else:
                                                                if not arg2:
                                                                    if 0 > arg2:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    if arg2 != arg2:
                                                                        revert with 0, 'oWEAVE::transfer: Tax value invali'
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                    if not this.address:
                                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                                    if 0 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    Mask(208, 0, stor12),
                                                                                    stor12 % 281474976710656
                                                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    emit Transfer(0, msg.sender, this.address);
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                                    if not arg1:
                                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                                    balanceOf[address(msg.sender)] -= arg2
                                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(arg1)] += arg2
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                else:
                                                                    require arg2
                                                                    if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                                        revert with 0, '.SafeMath: multiplication overflo'
                                                                    if arg2 * transferTaxRate / 10000 > arg2:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    if arg2 != arg2:
                                                                        revert with 0, 'oWEAVE::transfer: Tax value invali'
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                    if not this.address:
                                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                                    if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    Mask(208, 0, stor12),
                                                                                    stor12 % 281474976710656
                                                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                                    if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                                    emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                                    if not arg1:
                                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                                    if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                                    if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                                        else:
                                            require uint256(minAmountToLiquify)
                                            if 80 * uint256(minAmountToLiquify) / uint256(minAmountToLiquify) != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if 80 * uint256(minAmountToLiquify) / 100 > uint256(minAmountToLiquify):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(swapRouterAddress)
                                            staticcall swapRouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not this.address:
                                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                                            if not swapRouterAddress:
                                                revert with 0, 32, 34, 0x7442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                                            allowance[address(this.address)][stor13] = 80 * uint256(minAmountToLiquify) / 100
                                            emit Approval((80 * uint256(minAmountToLiquify) / 100), this.address, swapRouterAddress);
                                            mem[388 len 0] = None
                                            require ext_code.size(swapRouterAddress)
                                            call swapRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 80 * uint256(minAmountToLiquify) / 100, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not eth.balance(this.address):
                                                call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call sub_4af65bbaAddress with:
                                                     gas 2300 wei
                                            else:
                                                require eth.balance(this.address)
                                                if 25 * eth.balance(this.address) / eth.balance(this.address) != 25:
                                                    revert with 0, '.SafeMath: multiplication overfloddres'
                                                if not 25 * eth.balance(this.address) / 100:
                                                    call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                       value 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call sub_4af65bbaAddress with:
                                                         gas 2300 wei
                                                else:
                                                    require 25 * eth.balance(this.address) / 100
                                                    if 2 * 25 * eth.balance(this.address) / 100 / 25 * eth.balance(this.address) / 100 != 2:
                                                        revert with 0, '.SafeMath: multiplication overfloddres'
                                                    call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                       value 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call sub_4af65bbaAddress with:
                                                       value 2 * 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                            if not this.address:
                                                revert with 0, 'sBEP20: approve from the zero addresddres'
                                            if not swapRouterAddress:
                                                revert with 0, 'tBEP20: approve to the zero addresddres'
                                            allowance[address(this.address)][stor13] = uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)
                                            emit Approval((uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)), this.address, swapRouterAddress);
                                            require ext_code.size(swapRouterAddress)
                                            call swapRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args address(this.address), uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100), 0, 0, 0x3438a01baaf75fb2de4071ca76354c2854530827, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(80 * uint256(minAmountToLiquify) / 100, eth.balance(this.address), uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100));
                                            Mask(248, 0, stor6.field_8) = transferTaxRate
                                            Mask(96, 0, stor14.field_160) = 0
                                            if arg1 == 57005:
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                if not arg1:
                                                    revert with 0, 'eBEP20: transfer to the zero addres'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                0
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if msg.sender == operatorAddress:
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                    if not arg1:
                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                    0
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor7[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                        if not arg1:
                                                            revert with 0, 'eBEP20: transfer to the zero addres'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                        0
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if stor8[address(msg.sender)]:
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                            if not arg1:
                                                                revert with 0, 'eBEP20: transfer to the zero addres'
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                            0
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if not transferTaxRate:
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                if not arg1:
                                                                    revert with 0, 'eBEP20: transfer to the zero addres'
                                                                if arg2 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                                0
                                                                balanceOf[address(msg.sender)] -= arg2
                                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] += arg2
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                            else:
                                                                if not arg2:
                                                                    if 0 > arg2:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    if arg2 != arg2:
                                                                        revert with 0, 'oWEAVE::transfer: Tax value invali'
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                    if not this.address:
                                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                                    if 0 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                                    0
                                                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    emit Transfer(0, msg.sender, this.address);
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                                    if not arg1:
                                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                                    balanceOf[address(msg.sender)] -= arg2
                                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(arg1)] += arg2
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                else:
                                                                    require arg2
                                                                    if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                                        revert with 0, '.SafeMath: multiplication overflo'
                                                                    if arg2 * transferTaxRate / 10000 > arg2:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    if arg2 != arg2:
                                                                        revert with 0, 'oWEAVE::transfer: Tax value invali'
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                    if not this.address:
                                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                                    if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                                    0
                                                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                                    if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                                    emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                                    if not arg1:
                                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                                    if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                                    if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                                else:
                                    if balanceOf[address(this.address)] < uint256(minAmountToLiquify):
                                        Mask(248, 0, stor6.field_8) = transferTaxRate
                                        Mask(96, 0, stor14.field_160) = 0
                                        if arg1 == 57005:
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
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if msg.sender == operatorAddress:
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
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor7[address(arg1)]:
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
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor8[address(msg.sender)]:
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
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
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
                                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if not arg2:
                                                                if 0 > arg2:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if arg2 != arg2:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                34,
                                                                                0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                                                mem[198 len 30]
                                                                if not msg.sender:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                37,
                                                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                                mem[201 len 27]
                                                                if not this.address:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                35,
                                                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[199 len 29]
                                                                if 0 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[166 len 26],
                                                                                mem[218 len 6]
                                                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                emit Transfer(0, msg.sender, this.address);
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
                                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] += arg2
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                            else:
                                                                require arg2
                                                                if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                33,
                                                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[197 len 31]
                                                                if arg2 * transferTaxRate / 10000 > arg2:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if arg2 != arg2:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                34,
                                                                                0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                                                mem[198 len 30]
                                                                if not msg.sender:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                37,
                                                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                                mem[201 len 27]
                                                                if not this.address:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                35,
                                                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[199 len 29]
                                                                if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[166 len 26],
                                                                                mem[218 len 6]
                                                                balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                                if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                                emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                                                if not arg1:
                                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                                                if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[262 len 26],
                                                                                mem[314 len 6]
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                                if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                                emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                                    else:
                                        if not uint256(minAmountToLiquify):
                                            if 0 > uint256(minAmountToLiquify):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(swapRouterAddress)
                                            staticcall swapRouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not this.address:
                                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                                            if not swapRouterAddress:
                                                revert with 0, 32, 34, 0x7442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                                            allowance[address(this.address)][stor13] = 0
                                            emit Approval(0, this.address, swapRouterAddress);
                                            mem[388 len 0] = None
                                            require ext_code.size(swapRouterAddress)
                                            call swapRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not eth.balance(this.address):
                                                call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call sub_4af65bbaAddress with:
                                                     gas 2300 wei
                                            else:
                                                require eth.balance(this.address)
                                                if 25 * eth.balance(this.address) / eth.balance(this.address) != 25:
                                                    revert with 0, '.SafeMath: multiplication overfloddres'
                                                if not 25 * eth.balance(this.address) / 100:
                                                    call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                       value 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call sub_4af65bbaAddress with:
                                                         gas 2300 wei
                                                else:
                                                    require 25 * eth.balance(this.address) / 100
                                                    if 2 * 25 * eth.balance(this.address) / 100 / 25 * eth.balance(this.address) / 100 != 2:
                                                        revert with 0, '.SafeMath: multiplication overfloddres'
                                                    call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                       value 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call sub_4af65bbaAddress with:
                                                       value 2 * 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                            if not this.address:
                                                revert with 0, 'sBEP20: approve from the zero addresddres'
                                            if not swapRouterAddress:
                                                revert with 0, 'tBEP20: approve to the zero addresddres'
                                            allowance[address(this.address)][stor13] = uint256(minAmountToLiquify)
                                            emit Approval(uint256(minAmountToLiquify), this.address, swapRouterAddress);
                                            require ext_code.size(swapRouterAddress)
                                            call swapRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args address(this.address), uint256(minAmountToLiquify), 0, 0, 0x3438a01baaf75fb2de4071ca76354c2854530827, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(0, eth.balance(this.address), uint256(minAmountToLiquify));
                                            Mask(248, 0, stor6.field_8) = transferTaxRate
                                            Mask(96, 0, stor14.field_160) = 0
                                            if arg1 == 57005:
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                if not arg1:
                                                    revert with 0, 'eBEP20: transfer to the zero addres'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                Mask(208, 0, stor12),
                                                                stor12 % 281474976710656
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if msg.sender == operatorAddress:
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                    if not arg1:
                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    Mask(208, 0, stor12),
                                                                    stor12 % 281474976710656
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor7[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                        if not arg1:
                                                            revert with 0, 'eBEP20: transfer to the zero addres'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        Mask(208, 0, stor12),
                                                                        stor12 % 281474976710656
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if stor8[address(msg.sender)]:
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                            if not arg1:
                                                                revert with 0, 'eBEP20: transfer to the zero addres'
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            Mask(208, 0, stor12),
                                                                            stor12 % 281474976710656
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if not transferTaxRate:
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                if not arg1:
                                                                    revert with 0, 'eBEP20: transfer to the zero addres'
                                                                if arg2 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                Mask(208, 0, stor12),
                                                                                stor12 % 281474976710656
                                                                balanceOf[address(msg.sender)] -= arg2
                                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] += arg2
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                            else:
                                                                if not arg2:
                                                                    if 0 > arg2:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    if arg2 != arg2:
                                                                        revert with 0, 'oWEAVE::transfer: Tax value invali'
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                    if not this.address:
                                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                                    if 0 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    Mask(208, 0, stor12),
                                                                                    stor12 % 281474976710656
                                                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    emit Transfer(0, msg.sender, this.address);
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                                    if not arg1:
                                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                                    balanceOf[address(msg.sender)] -= arg2
                                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(arg1)] += arg2
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                else:
                                                                    require arg2
                                                                    if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                                        revert with 0, '.SafeMath: multiplication overflo'
                                                                    if arg2 * transferTaxRate / 10000 > arg2:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    if arg2 != arg2:
                                                                        revert with 0, 'oWEAVE::transfer: Tax value invali'
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                    if not this.address:
                                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                                    if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    Mask(208, 0, stor12),
                                                                                    stor12 % 281474976710656
                                                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                                    if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                                    emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                                    if not arg1:
                                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                                    if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                                    if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                                        else:
                                            require uint256(minAmountToLiquify)
                                            if 80 * uint256(minAmountToLiquify) / uint256(minAmountToLiquify) != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if 80 * uint256(minAmountToLiquify) / 100 > uint256(minAmountToLiquify):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(swapRouterAddress)
                                            staticcall swapRouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not this.address:
                                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                                            if not swapRouterAddress:
                                                revert with 0, 32, 34, 0x7442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                                            allowance[address(this.address)][stor13] = 80 * uint256(minAmountToLiquify) / 100
                                            emit Approval((80 * uint256(minAmountToLiquify) / 100), this.address, swapRouterAddress);
                                            mem[388 len 0] = None
                                            require ext_code.size(swapRouterAddress)
                                            call swapRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 80 * uint256(minAmountToLiquify) / 100, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not eth.balance(this.address):
                                                call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call sub_4af65bbaAddress with:
                                                     gas 2300 wei
                                            else:
                                                require eth.balance(this.address)
                                                if 25 * eth.balance(this.address) / eth.balance(this.address) != 25:
                                                    revert with 0, '.SafeMath: multiplication overfloddres'
                                                if not 25 * eth.balance(this.address) / 100:
                                                    call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                       value 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call sub_4af65bbaAddress with:
                                                         gas 2300 wei
                                                else:
                                                    require 25 * eth.balance(this.address) / 100
                                                    if 2 * 25 * eth.balance(this.address) / 100 / 25 * eth.balance(this.address) / 100 != 2:
                                                        revert with 0, '.SafeMath: multiplication overfloddres'
                                                    call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                       value 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call sub_4af65bbaAddress with:
                                                       value 2 * 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                            if not this.address:
                                                revert with 0, 'sBEP20: approve from the zero addresddres'
                                            if not swapRouterAddress:
                                                revert with 0, 'tBEP20: approve to the zero addresddres'
                                            allowance[address(this.address)][stor13] = uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)
                                            emit Approval((uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)), this.address, swapRouterAddress);
                                            require ext_code.size(swapRouterAddress)
                                            call swapRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args address(this.address), uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100), 0, 0, 0x3438a01baaf75fb2de4071ca76354c2854530827, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(80 * uint256(minAmountToLiquify) / 100, eth.balance(this.address), uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100));
                                            Mask(248, 0, stor6.field_8) = transferTaxRate
                                            Mask(96, 0, stor14.field_160) = 0
                                            if arg1 == 57005:
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                if not arg1:
                                                    revert with 0, 'eBEP20: transfer to the zero addres'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                0
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if msg.sender == operatorAddress:
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                    if not arg1:
                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                    0
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor7[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                        if not arg1:
                                                            revert with 0, 'eBEP20: transfer to the zero addres'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                        0
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if stor8[address(msg.sender)]:
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                            if not arg1:
                                                                revert with 0, 'eBEP20: transfer to the zero addres'
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                            0
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if not transferTaxRate:
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                if not arg1:
                                                                    revert with 0, 'eBEP20: transfer to the zero addres'
                                                                if arg2 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                                0
                                                                balanceOf[address(msg.sender)] -= arg2
                                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] += arg2
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                            else:
                                                                if not arg2:
                                                                    if 0 > arg2:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    if arg2 != arg2:
                                                                        revert with 0, 'oWEAVE::transfer: Tax value invali'
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                    if not this.address:
                                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                                    if 0 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                                    0
                                                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    emit Transfer(0, msg.sender, this.address);
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                                    if not arg1:
                                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                                    balanceOf[address(msg.sender)] -= arg2
                                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(arg1)] += arg2
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                else:
                                                                    require arg2
                                                                    if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                                        revert with 0, '.SafeMath: multiplication overflo'
                                                                    if arg2 * transferTaxRate / 10000 > arg2:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    if arg2 != arg2:
                                                                        revert with 0, 'oWEAVE::transfer: Tax value invali'
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                    if not this.address:
                                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                                    if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                                    0
                                                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                                    if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                                    emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                                    if not arg1:
                                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                                    if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                                    if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                            else:
                                require totalSupply
                                if totalSupply * maxTransferAmountRate / totalSupply != maxTransferAmountRate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if balanceOf[address(this.address)] > totalSupply * maxTransferAmountRate / 10000:
                                    if totalSupply * maxTransferAmountRate / 10000 < uint256(minAmountToLiquify):
                                        Mask(248, 0, stor6.field_8) = transferTaxRate
                                        Mask(96, 0, stor14.field_160) = 0
                                        if arg1 == 57005:
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
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if msg.sender == operatorAddress:
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
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor7[address(arg1)]:
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
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor8[address(msg.sender)]:
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
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
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
                                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if not arg2:
                                                                if 0 > arg2:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if arg2 != arg2:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                34,
                                                                                0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                                                mem[198 len 30]
                                                                if not msg.sender:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                37,
                                                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                                mem[201 len 27]
                                                                if not this.address:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                35,
                                                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[199 len 29]
                                                                if 0 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[166 len 26],
                                                                                mem[218 len 6]
                                                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                emit Transfer(0, msg.sender, this.address);
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
                                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] += arg2
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                            else:
                                                                require arg2
                                                                if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                33,
                                                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[197 len 31]
                                                                if arg2 * transferTaxRate / 10000 > arg2:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if arg2 != arg2:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                34,
                                                                                0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                                                mem[198 len 30]
                                                                if not msg.sender:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                37,
                                                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                                mem[201 len 27]
                                                                if not this.address:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                35,
                                                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[199 len 29]
                                                                if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[166 len 26],
                                                                                mem[218 len 6]
                                                                balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                                if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                                emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                                                if not arg1:
                                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                                                if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[262 len 26],
                                                                                mem[314 len 6]
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                                if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                                emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                                    else:
                                        if not uint256(minAmountToLiquify):
                                            if 0 > uint256(minAmountToLiquify):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(swapRouterAddress)
                                            staticcall swapRouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not this.address:
                                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                                            if not swapRouterAddress:
                                                revert with 0, 32, 34, 0x7442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                                            allowance[address(this.address)][stor13] = 0
                                            emit Approval(0, this.address, swapRouterAddress);
                                            mem[388 len 0] = None
                                            require ext_code.size(swapRouterAddress)
                                            call swapRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not eth.balance(this.address):
                                                call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call sub_4af65bbaAddress with:
                                                     gas 2300 wei
                                            else:
                                                require eth.balance(this.address)
                                                if 25 * eth.balance(this.address) / eth.balance(this.address) != 25:
                                                    revert with 0, '.SafeMath: multiplication overfloddres'
                                                if not 25 * eth.balance(this.address) / 100:
                                                    call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                       value 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call sub_4af65bbaAddress with:
                                                         gas 2300 wei
                                                else:
                                                    require 25 * eth.balance(this.address) / 100
                                                    if 2 * 25 * eth.balance(this.address) / 100 / 25 * eth.balance(this.address) / 100 != 2:
                                                        revert with 0, '.SafeMath: multiplication overfloddres'
                                                    call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                       value 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call sub_4af65bbaAddress with:
                                                       value 2 * 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                            if not this.address:
                                                revert with 0, 'sBEP20: approve from the zero addresddres'
                                            if not swapRouterAddress:
                                                revert with 0, 'tBEP20: approve to the zero addresddres'
                                            allowance[address(this.address)][stor13] = uint256(minAmountToLiquify)
                                            emit Approval(uint256(minAmountToLiquify), this.address, swapRouterAddress);
                                            require ext_code.size(swapRouterAddress)
                                            call swapRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args address(this.address), uint256(minAmountToLiquify), 0, 0, 0x3438a01baaf75fb2de4071ca76354c2854530827, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(0, eth.balance(this.address), uint256(minAmountToLiquify));
                                            Mask(248, 0, stor6.field_8) = transferTaxRate
                                            Mask(96, 0, stor14.field_160) = 0
                                            if arg1 == 57005:
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                if not arg1:
                                                    revert with 0, 'eBEP20: transfer to the zero addres'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                Mask(208, 0, stor12),
                                                                stor12 % 281474976710656
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if msg.sender == operatorAddress:
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                    if not arg1:
                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    Mask(208, 0, stor12),
                                                                    stor12 % 281474976710656
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor7[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                        if not arg1:
                                                            revert with 0, 'eBEP20: transfer to the zero addres'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        Mask(208, 0, stor12),
                                                                        stor12 % 281474976710656
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if stor8[address(msg.sender)]:
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                            if not arg1:
                                                                revert with 0, 'eBEP20: transfer to the zero addres'
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            Mask(208, 0, stor12),
                                                                            stor12 % 281474976710656
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if not transferTaxRate:
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                if not arg1:
                                                                    revert with 0, 'eBEP20: transfer to the zero addres'
                                                                if arg2 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                Mask(208, 0, stor12),
                                                                                stor12 % 281474976710656
                                                                balanceOf[address(msg.sender)] -= arg2
                                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] += arg2
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                            else:
                                                                if not arg2:
                                                                    if 0 > arg2:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    if arg2 != arg2:
                                                                        revert with 0, 'oWEAVE::transfer: Tax value invali'
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                    if not this.address:
                                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                                    if 0 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    Mask(208, 0, stor12),
                                                                                    stor12 % 281474976710656
                                                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    emit Transfer(0, msg.sender, this.address);
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                                    if not arg1:
                                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                                    balanceOf[address(msg.sender)] -= arg2
                                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(arg1)] += arg2
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                else:
                                                                    require arg2
                                                                    if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                                        revert with 0, '.SafeMath: multiplication overflo'
                                                                    if arg2 * transferTaxRate / 10000 > arg2:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    if arg2 != arg2:
                                                                        revert with 0, 'oWEAVE::transfer: Tax value invali'
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                    if not this.address:
                                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                                    if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    Mask(208, 0, stor12),
                                                                                    stor12 % 281474976710656
                                                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                                    if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                                    emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                                    if not arg1:
                                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                                    if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                                    if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                                        else:
                                            require uint256(minAmountToLiquify)
                                            if 80 * uint256(minAmountToLiquify) / uint256(minAmountToLiquify) != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if 80 * uint256(minAmountToLiquify) / 100 > uint256(minAmountToLiquify):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(swapRouterAddress)
                                            staticcall swapRouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not this.address:
                                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                                            if not swapRouterAddress:
                                                revert with 0, 32, 34, 0x7442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                                            allowance[address(this.address)][stor13] = 80 * uint256(minAmountToLiquify) / 100
                                            emit Approval((80 * uint256(minAmountToLiquify) / 100), this.address, swapRouterAddress);
                                            mem[388 len 0] = None
                                            require ext_code.size(swapRouterAddress)
                                            call swapRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 80 * uint256(minAmountToLiquify) / 100, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not eth.balance(this.address):
                                                call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call sub_4af65bbaAddress with:
                                                     gas 2300 wei
                                            else:
                                                require eth.balance(this.address)
                                                if 25 * eth.balance(this.address) / eth.balance(this.address) != 25:
                                                    revert with 0, '.SafeMath: multiplication overfloddres'
                                                if not 25 * eth.balance(this.address) / 100:
                                                    call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                       value 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call sub_4af65bbaAddress with:
                                                         gas 2300 wei
                                                else:
                                                    require 25 * eth.balance(this.address) / 100
                                                    if 2 * 25 * eth.balance(this.address) / 100 / 25 * eth.balance(this.address) / 100 != 2:
                                                        revert with 0, '.SafeMath: multiplication overfloddres'
                                                    call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                       value 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call sub_4af65bbaAddress with:
                                                       value 2 * 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                            if not this.address:
                                                revert with 0, 'sBEP20: approve from the zero addresddres'
                                            if not swapRouterAddress:
                                                revert with 0, 'tBEP20: approve to the zero addresddres'
                                            allowance[address(this.address)][stor13] = uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)
                                            emit Approval((uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)), this.address, swapRouterAddress);
                                            require ext_code.size(swapRouterAddress)
                                            call swapRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args address(this.address), uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100), 0, 0, 0x3438a01baaf75fb2de4071ca76354c2854530827, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(80 * uint256(minAmountToLiquify) / 100, eth.balance(this.address), uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100));
                                            Mask(248, 0, stor6.field_8) = transferTaxRate
                                            Mask(96, 0, stor14.field_160) = 0
                                            if arg1 == 57005:
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                if not arg1:
                                                    revert with 0, 'eBEP20: transfer to the zero addres'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                0
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if msg.sender == operatorAddress:
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                    if not arg1:
                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                    0
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor7[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                        if not arg1:
                                                            revert with 0, 'eBEP20: transfer to the zero addres'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                        0
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if stor8[address(msg.sender)]:
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                            if not arg1:
                                                                revert with 0, 'eBEP20: transfer to the zero addres'
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                            0
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if not transferTaxRate:
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                if not arg1:
                                                                    revert with 0, 'eBEP20: transfer to the zero addres'
                                                                if arg2 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                                0
                                                                balanceOf[address(msg.sender)] -= arg2
                                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] += arg2
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                            else:
                                                                if not arg2:
                                                                    if 0 > arg2:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    if arg2 != arg2:
                                                                        revert with 0, 'oWEAVE::transfer: Tax value invali'
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                    if not this.address:
                                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                                    if 0 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                                    0
                                                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    emit Transfer(0, msg.sender, this.address);
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                                    if not arg1:
                                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                                    balanceOf[address(msg.sender)] -= arg2
                                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(arg1)] += arg2
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                else:
                                                                    require arg2
                                                                    if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                                        revert with 0, '.SafeMath: multiplication overflo'
                                                                    if arg2 * transferTaxRate / 10000 > arg2:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    if arg2 != arg2:
                                                                        revert with 0, 'oWEAVE::transfer: Tax value invali'
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                    if not this.address:
                                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                                    if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                                    0
                                                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                                    if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                                    emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                                    if not arg1:
                                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                                    if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                                    if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                                else:
                                    if balanceOf[address(this.address)] < uint256(minAmountToLiquify):
                                        Mask(248, 0, stor6.field_8) = transferTaxRate
                                        Mask(96, 0, stor14.field_160) = 0
                                        if arg1 == 57005:
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
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if msg.sender == operatorAddress:
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
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor7[address(arg1)]:
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
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor8[address(msg.sender)]:
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
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
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
                                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if not arg2:
                                                                if 0 > arg2:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if arg2 != arg2:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                34,
                                                                                0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                                                mem[198 len 30]
                                                                if not msg.sender:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                37,
                                                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                                mem[201 len 27]
                                                                if not this.address:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                35,
                                                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[199 len 29]
                                                                if 0 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[166 len 26],
                                                                                mem[218 len 6]
                                                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                emit Transfer(0, msg.sender, this.address);
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
                                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] += arg2
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                            else:
                                                                require arg2
                                                                if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                33,
                                                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[197 len 31]
                                                                if arg2 * transferTaxRate / 10000 > arg2:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if arg2 != arg2:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                34,
                                                                                0x6f57454156453a3a7472616e736665723a205461782076616c756520696e76616c69,
                                                                                mem[198 len 30]
                                                                if not msg.sender:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                37,
                                                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                                mem[201 len 27]
                                                                if not this.address:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                35,
                                                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[199 len 29]
                                                                if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[166 len 26],
                                                                                mem[218 len 6]
                                                                balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                                if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                                emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                                                if not arg1:
                                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                                                if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[262 len 26],
                                                                                mem[314 len 6]
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                                if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                                emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                                    else:
                                        if not uint256(minAmountToLiquify):
                                            if 0 > uint256(minAmountToLiquify):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(swapRouterAddress)
                                            staticcall swapRouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not this.address:
                                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                                            if not swapRouterAddress:
                                                revert with 0, 32, 34, 0x7442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                                            allowance[address(this.address)][stor13] = 0
                                            emit Approval(0, this.address, swapRouterAddress);
                                            mem[388 len 0] = None
                                            require ext_code.size(swapRouterAddress)
                                            call swapRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not eth.balance(this.address):
                                                call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call sub_4af65bbaAddress with:
                                                     gas 2300 wei
                                            else:
                                                require eth.balance(this.address)
                                                if 25 * eth.balance(this.address) / eth.balance(this.address) != 25:
                                                    revert with 0, '.SafeMath: multiplication overfloddres'
                                                if not 25 * eth.balance(this.address) / 100:
                                                    call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                       value 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call sub_4af65bbaAddress with:
                                                         gas 2300 wei
                                                else:
                                                    require 25 * eth.balance(this.address) / 100
                                                    if 2 * 25 * eth.balance(this.address) / 100 / 25 * eth.balance(this.address) / 100 != 2:
                                                        revert with 0, '.SafeMath: multiplication overfloddres'
                                                    call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                       value 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call sub_4af65bbaAddress with:
                                                       value 2 * 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                            if not this.address:
                                                revert with 0, 'sBEP20: approve from the zero addresddres'
                                            if not swapRouterAddress:
                                                revert with 0, 'tBEP20: approve to the zero addresddres'
                                            allowance[address(this.address)][stor13] = uint256(minAmountToLiquify)
                                            emit Approval(uint256(minAmountToLiquify), this.address, swapRouterAddress);
                                            require ext_code.size(swapRouterAddress)
                                            call swapRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args address(this.address), uint256(minAmountToLiquify), 0, 0, 0x3438a01baaf75fb2de4071ca76354c2854530827, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(0, eth.balance(this.address), uint256(minAmountToLiquify));
                                            Mask(248, 0, stor6.field_8) = transferTaxRate
                                            Mask(96, 0, stor14.field_160) = 0
                                            if arg1 == 57005:
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                if not arg1:
                                                    revert with 0, 'eBEP20: transfer to the zero addres'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                Mask(208, 0, stor12),
                                                                stor12 % 281474976710656
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if msg.sender == operatorAddress:
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                    if not arg1:
                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    Mask(208, 0, stor12),
                                                                    stor12 % 281474976710656
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor7[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                        if not arg1:
                                                            revert with 0, 'eBEP20: transfer to the zero addres'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        Mask(208, 0, stor12),
                                                                        stor12 % 281474976710656
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if stor8[address(msg.sender)]:
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                            if not arg1:
                                                                revert with 0, 'eBEP20: transfer to the zero addres'
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            Mask(208, 0, stor12),
                                                                            stor12 % 281474976710656
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if not transferTaxRate:
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                if not arg1:
                                                                    revert with 0, 'eBEP20: transfer to the zero addres'
                                                                if arg2 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                Mask(208, 0, stor12),
                                                                                stor12 % 281474976710656
                                                                balanceOf[address(msg.sender)] -= arg2
                                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] += arg2
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                            else:
                                                                if not arg2:
                                                                    if 0 > arg2:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    if arg2 != arg2:
                                                                        revert with 0, 'oWEAVE::transfer: Tax value invali'
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                    if not this.address:
                                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                                    if 0 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    Mask(208, 0, stor12),
                                                                                    stor12 % 281474976710656
                                                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    emit Transfer(0, msg.sender, this.address);
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                                    if not arg1:
                                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                                    balanceOf[address(msg.sender)] -= arg2
                                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(arg1)] += arg2
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                else:
                                                                    require arg2
                                                                    if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                                        revert with 0, '.SafeMath: multiplication overflo'
                                                                    if arg2 * transferTaxRate / 10000 > arg2:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    if arg2 != arg2:
                                                                        revert with 0, 'oWEAVE::transfer: Tax value invali'
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                    if not this.address:
                                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                                    if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    Mask(208, 0, stor12),
                                                                                    stor12 % 281474976710656
                                                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                                    if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                                    emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                                    if not arg1:
                                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                                    if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                                    if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                                        else:
                                            require uint256(minAmountToLiquify)
                                            if 80 * uint256(minAmountToLiquify) / uint256(minAmountToLiquify) != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if 80 * uint256(minAmountToLiquify) / 100 > uint256(minAmountToLiquify):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(swapRouterAddress)
                                            staticcall swapRouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not this.address:
                                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                                            if not swapRouterAddress:
                                                revert with 0, 32, 34, 0x7442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                                            allowance[address(this.address)][stor13] = 80 * uint256(minAmountToLiquify) / 100
                                            emit Approval((80 * uint256(minAmountToLiquify) / 100), this.address, swapRouterAddress);
                                            mem[388 len 0] = None
                                            require ext_code.size(swapRouterAddress)
                                            call swapRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 80 * uint256(minAmountToLiquify) / 100, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not eth.balance(this.address):
                                                call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call sub_4af65bbaAddress with:
                                                     gas 2300 wei
                                            else:
                                                require eth.balance(this.address)
                                                if 25 * eth.balance(this.address) / eth.balance(this.address) != 25:
                                                    revert with 0, '.SafeMath: multiplication overfloddres'
                                                if not 25 * eth.balance(this.address) / 100:
                                                    call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                       value 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call sub_4af65bbaAddress with:
                                                         gas 2300 wei
                                                else:
                                                    require 25 * eth.balance(this.address) / 100
                                                    if 2 * 25 * eth.balance(this.address) / 100 / 25 * eth.balance(this.address) / 100 != 2:
                                                        revert with 0, '.SafeMath: multiplication overfloddres'
                                                    call 0x3438a01baaf75fb2de4071ca76354c2854530827 with:
                                                       value 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call sub_4af65bbaAddress with:
                                                       value 2 * 25 * eth.balance(this.address) / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                            if not this.address:
                                                revert with 0, 'sBEP20: approve from the zero addresddres'
                                            if not swapRouterAddress:
                                                revert with 0, 'tBEP20: approve to the zero addresddres'
                                            allowance[address(this.address)][stor13] = uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)
                                            emit Approval((uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)), this.address, swapRouterAddress);
                                            require ext_code.size(swapRouterAddress)
                                            call swapRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args address(this.address), uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100), 0, 0, 0x3438a01baaf75fb2de4071ca76354c2854530827, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(80 * uint256(minAmountToLiquify) / 100, eth.balance(this.address), uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100));
                                            Mask(248, 0, stor6.field_8) = transferTaxRate
                                            Mask(96, 0, stor14.field_160) = 0
                                            if arg1 == 57005:
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                if not arg1:
                                                    revert with 0, 'eBEP20: transfer to the zero addres'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                0
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if msg.sender == operatorAddress:
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                    if not arg1:
                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                    0
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor7[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                        if not arg1:
                                                            revert with 0, 'eBEP20: transfer to the zero addres'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                        0
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if stor8[address(msg.sender)]:
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                            if not arg1:
                                                                revert with 0, 'eBEP20: transfer to the zero addres'
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                            0
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if not transferTaxRate:
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                if not arg1:
                                                                    revert with 0, 'eBEP20: transfer to the zero addres'
                                                                if arg2 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                                0
                                                                balanceOf[address(msg.sender)] -= arg2
                                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] += arg2
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                            else:
                                                                if not arg2:
                                                                    if 0 > arg2:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    if arg2 != arg2:
                                                                        revert with 0, 'oWEAVE::transfer: Tax value invali'
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                    if not this.address:
                                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                                    if 0 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                                    0
                                                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    emit Transfer(0, msg.sender, this.address);
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                                    if not arg1:
                                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                                    balanceOf[address(msg.sender)] -= arg2
                                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(arg1)] += arg2
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                else:
                                                                    require arg2
                                                                    if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                                        revert with 0, '.SafeMath: multiplication overflo'
                                                                    if arg2 * transferTaxRate / 10000 > arg2:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    if arg2 != arg2:
                                                                        revert with 0, 'oWEAVE::transfer: Tax value invali'
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                                    if not this.address:
                                                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                                                    if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    Mask(208, 0, uint256(minAmountToLiquify) - (80 * uint256(minAmountToLiquify) / 100)),
                                                                                    0
                                                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                                    if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                                    emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                                    if not msg.sender:
                                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                                    if not arg1:
                                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                                    if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                                    if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
    return 1
}



}
