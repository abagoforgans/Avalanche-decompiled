contract main {




// =====================  Runtime code  =====================


address stor1;
mapping of uint256 contractTokenBalance;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 limitSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor9;
uint256 stor10;
address stor11;
address stor12;
uint256 totalUsers;
uint256 totalBUSDStaked;
uint256 totalTokenStaked;
uint256 sub_930491d0;
uint256 sub_94ad511b;
uint256 sub_f20e87e9;
uint256 sub_832f3eb2;
mapping of struct userTokenStaked;
mapping of uint256 stor21;
address stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function limitSupply() {
    return limitSupply
}

function totalTokenStaked() {
    return totalTokenStaked
}

function decimals() {
    return decimals
}

function getContractTokenBalance() {
    return contractTokenBalance[address(this.address)]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return contractTokenBalance[address(arg1)]
}

function totalBUSDStaked() {
    return totalBUSDStaked
}

function sub_832f3eb2(?) {
    return sub_832f3eb2
}

function sub_930491d0(?) {
    return sub_930491d0
}

function sub_94ad511b(?) {
    return sub_94ad511b
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getUserTokenStaked(address arg1) {
    require calldata.size - 4 >= 32
    return userTokenStaked[address(arg1)].field_1280
}

function getUserBUSDStaked(address arg1) {
    require calldata.size - 4 >= 32
    return userTokenStaked[address(arg1)].field_256
}

function totalUsers() {
    return totalUsers
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_f20e87e9(?) {
    return sub_f20e87e9
}

function getUserTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    return contractTokenBalance[address(arg1)]
}

function _fallback() payable {
    revert
}

function getUserBUSDBalance(address arg1) {
    require calldata.size - 4 >= 32
    return eth.balance(arg1)
}

function getContractLaunchTime() {
    if stor10 <= block.timestamp:
        return 0
    return (stor10 - block.timestamp)
}

function getCurrentDay() {
    if block.timestamp <= stor10:
        return 0
    return (block.timestamp - stor10 / 24 * 3600)
}

function getTokenSoldToday() {
    if block.timestamp <= stor10:
        return stor21[0]
    return stor21[block.timestamp - stor10 / 24 * 3600]
}

function availableSupply() {
    if totalSupply > limitSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    return (limitSupply - totalSupply)
}

function sub_ec405411(?) {
    require calldata.size - 4 >= 32
    if stor11 != msg.sender:
        revert with 0, 'Admin use only'
    require arg1 >= 5
    sub_930491d0 = 10^18 * arg1
}

function sub_7408e8a3(?) {
    require calldata.size - 4 >= 32
    if stor11 != msg.sender:
        revert with 0, 'Admin use only'
    require arg1 >= 40000
    sub_94ad511b = 10^18 * arg1
}

function getTokenAvailableToSell() {
    if block.timestamp <= stor10:
        if sub_94ad511b <= stor21[0]:
            return 0
        return (sub_94ad511b - stor21[0])
    if sub_94ad511b <= stor21[block.timestamp - stor10 / 24 * 3600]:
        return 0
    return (sub_94ad511b - stor21[block.timestamp - stor10 / 24 * 3600])
}

function getContractBUSDBalance() {
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getAPY_T() {
    if not sub_832f3eb2:
        return 0
    require sub_832f3eb2
    if 365 * sub_832f3eb2 / sub_832f3eb2 != 365:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (365 * sub_832f3eb2 / 10)
}

function getAPY_M() {
    if not sub_f20e87e9:
        return 0
    require sub_f20e87e9
    if 365 * sub_f20e87e9 / sub_f20e87e9 != 365:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (365 * sub_f20e87e9 / 10)
}

function getUserTimeToUnstake(address arg1) {
    require calldata.size - 4 >= 32
    if userTokenStaked[address(arg1)].field_1536 + (168 * 24 * 3600) < userTokenStaked[address(arg1)].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    if userTokenStaked[address(arg1)].field_1536 + (168 * 24 * 3600) <= block.timestamp:
        return 0
    return (userTokenStaked[address(arg1)].field_1536 + -block.timestamp + (168 * 24 * 3600))
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[264 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[262 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
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

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
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
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function getTimeToNextDay() {
    if block.timestamp <= stor10:
        return (24 * 3600)
    if not block.timestamp - stor10 / 24 * 3600:
        if block.timestamp - stor10 > 24 * 3600:
            revert with 0, 'SafeMath: subtraction overflow'
        return (-block.timestamp + stor10 + (24 * 3600))
    require block.timestamp - stor10 / 24 * 3600
    if 24 * 3600 * block.timestamp - stor10 / 24 * 3600 / block.timestamp - stor10 / 24 * 3600 != 24 * 3600:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if (24 * 3600 * block.timestamp - stor10 / 24 * 3600) + (24 * 3600) < 24 * 3600 * block.timestamp - stor10 / 24 * 3600:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp - stor10 > (24 * 3600 * block.timestamp - stor10 / 24 * 3600) + (24 * 3600):
        revert with 0, 'SafeMath: subtraction overflow'
    return ((24 * 3600 * block.timestamp - stor10 / 24 * 3600) + -block.timestamp + stor10 + (24 * 3600))
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 232 len 28]
    if not arg1:
        revert with 0, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 230 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function getTokenPrice() {
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if totalSupply > limitSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if limitSupply + -totalSupply + 1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if limitSupply + -totalSupply + 1:
            return (0 / limitSupply + -totalSupply + 1)
    else:
        if ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply > limitSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if limitSupply + -totalSupply + 1 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if limitSupply + -totalSupply + 1:
                return (10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1)
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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
    if arg3 > contractTokenBalance[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    contractTokenBalance[address(arg1)] -= arg3
    if contractTokenBalance[address(arg2)] + arg3 < contractTokenBalance[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    contractTokenBalance[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[328 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[326 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor9[address(arg1)]:
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
        if arg2 > contractTokenBalance[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        contractTokenBalance[address(msg.sender)] -= arg2
        if contractTokenBalance[address(arg1)] + arg2 < contractTokenBalance[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        contractTokenBalance[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not msg.sender:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[232 len 28]
        if not arg1:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[230 len 30]
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
        require ext_code.size(arg1)
        call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, arg2, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function tokenToBUSD(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if totalSupply > limitSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if limitSupply + -totalSupply + 1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require limitSupply + -totalSupply + 1
        if not arg1:
            return 0
        require arg1
        if arg1 * 0 / limitSupply + -totalSupply + 1 / arg1 != 0 / limitSupply + -totalSupply + 1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (arg1 * 0 / limitSupply + -totalSupply + 1 / 10^18)
    require ext_call.return_data[0]
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalSupply > limitSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if limitSupply + -totalSupply + 1 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require limitSupply + -totalSupply + 1
    if not arg1:
        return 0
    require arg1
    if arg1 * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / arg1 != 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return (arg1 * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / 10^18)
}

function BUSDToToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if totalSupply > limitSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if limitSupply + -totalSupply + 1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if limitSupply + -totalSupply + 1:
            if not arg1:
                if 0 / limitSupply + -totalSupply + 1 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / limitSupply + -totalSupply + 1:
                    return (0 / 0 / limitSupply + -totalSupply + 1)
            else:
                if arg1:
                    if 10^18 * arg1 / arg1 != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if 0 / limitSupply + -totalSupply + 1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / limitSupply + -totalSupply + 1:
                        return (10^18 * arg1 / 0 / limitSupply + -totalSupply + 1)
    else:
        if ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply > limitSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if limitSupply + -totalSupply + 1 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if limitSupply + -totalSupply + 1:
                if not arg1:
                    if 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1:
                        return (0 / 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1)
                else:
                    if arg1:
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1:
                            return (10^18 * arg1 / 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1)
    revert
}

function getUserUnclaimedTokens_M(address arg1) {
    require calldata.size - 4 >= 32
    if stor10 > block.timestamp:
        if block.timestamp < block.timestamp:
            if userTokenStaked[address(arg1)].field_256:
                require userTokenStaked[address(arg1)].field_256
                if 0 / userTokenStaked[address(arg1)].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
        if userTokenStaked[address(arg1)].field_768 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return userTokenStaked[address(arg1)].field_768
    if userTokenStaked[address(arg1)].field_0 >= block.timestamp:
        if userTokenStaked[address(arg1)].field_768 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return userTokenStaked[address(arg1)].field_768
    if not userTokenStaked[address(arg1)].field_256:
        if userTokenStaked[address(arg1)].field_768 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return userTokenStaked[address(arg1)].field_768
    require userTokenStaked[address(arg1)].field_256
    if (block.timestamp * userTokenStaked[address(arg1)].field_256) - (userTokenStaked[address(arg1)].field_0 * userTokenStaked[address(arg1)].field_256) / userTokenStaked[address(arg1)].field_256 != block.timestamp - userTokenStaked[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.timestamp * userTokenStaked[address(arg1)].field_256) - (userTokenStaked[address(arg1)].field_0 * userTokenStaked[address(arg1)].field_256):
        if userTokenStaked[address(arg1)].field_768 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return userTokenStaked[address(arg1)].field_768
    require (block.timestamp * userTokenStaked[address(arg1)].field_256) - (userTokenStaked[address(arg1)].field_0 * userTokenStaked[address(arg1)].field_256)
    if (block.timestamp * userTokenStaked[address(arg1)].field_256 * sub_f20e87e9) - (userTokenStaked[address(arg1)].field_0 * userTokenStaked[address(arg1)].field_256 * sub_f20e87e9) / (block.timestamp * userTokenStaked[address(arg1)].field_256) - (userTokenStaked[address(arg1)].field_0 * userTokenStaked[address(arg1)].field_256) != sub_f20e87e9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ((block.timestamp * userTokenStaked[address(arg1)].field_256 * sub_f20e87e9) - (userTokenStaked[address(arg1)].field_0 * userTokenStaked[address(arg1)].field_256 * sub_f20e87e9) / 24 * 3600 / 1000) + userTokenStaked[address(arg1)].field_768 < (block.timestamp * userTokenStaked[address(arg1)].field_256 * sub_f20e87e9) - (userTokenStaked[address(arg1)].field_0 * userTokenStaked[address(arg1)].field_256 * sub_f20e87e9) / 24 * 3600 / 1000:
        revert with 0, 'SafeMath: addition overflow'
    return (((block.timestamp * userTokenStaked[address(arg1)].field_256 * sub_f20e87e9) - (userTokenStaked[address(arg1)].field_0 * userTokenStaked[address(arg1)].field_256 * sub_f20e87e9) / 24 * 3600 / 1000) + userTokenStaked[address(arg1)].field_768)
}

function claimToken_M() {
    if stor10 > block.timestamp:
        if block.timestamp < block.timestamp:
            if userTokenStaked[address(msg.sender)].field_256:
                require userTokenStaked[address(msg.sender)].field_256
                if 0 / userTokenStaked[address(msg.sender)].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
    else:
        if userTokenStaked[address(msg.sender)].field_0 < block.timestamp:
            if userTokenStaked[address(msg.sender)].field_256:
                require userTokenStaked[address(msg.sender)].field_256
                if (block.timestamp * userTokenStaked[address(msg.sender)].field_256) - (userTokenStaked[address(msg.sender)].field_0 * userTokenStaked[address(msg.sender)].field_256) / userTokenStaked[address(msg.sender)].field_256 != block.timestamp - userTokenStaked[address(msg.sender)].field_0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (block.timestamp * userTokenStaked[address(msg.sender)].field_256) - (userTokenStaked[address(msg.sender)].field_0 * userTokenStaked[address(msg.sender)].field_256):
                    require (block.timestamp * userTokenStaked[address(msg.sender)].field_256) - (userTokenStaked[address(msg.sender)].field_0 * userTokenStaked[address(msg.sender)].field_256)
                    if (block.timestamp * userTokenStaked[address(msg.sender)].field_256 * sub_f20e87e9) - (userTokenStaked[address(msg.sender)].field_0 * userTokenStaked[address(msg.sender)].field_256 * sub_f20e87e9) / (block.timestamp * userTokenStaked[address(msg.sender)].field_256) - (userTokenStaked[address(msg.sender)].field_0 * userTokenStaked[address(msg.sender)].field_256) != sub_f20e87e9:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (block.timestamp * userTokenStaked[address(msg.sender)].field_256 * sub_f20e87e9) - (userTokenStaked[address(msg.sender)].field_0 * userTokenStaked[address(msg.sender)].field_256 * sub_f20e87e9) / 24 * 3600 / 1000 > 0:
                        if userTokenStaked[address(msg.sender)].field_768 + ((block.timestamp * userTokenStaked[address(msg.sender)].field_256 * sub_f20e87e9) - (userTokenStaked[address(msg.sender)].field_0 * userTokenStaked[address(msg.sender)].field_256 * sub_f20e87e9) / 24 * 3600 / 1000) < userTokenStaked[address(msg.sender)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        userTokenStaked[address(msg.sender)].field_768 += (block.timestamp * userTokenStaked[address(msg.sender)].field_256 * sub_f20e87e9) - (userTokenStaked[address(msg.sender)].field_0 * userTokenStaked[address(msg.sender)].field_256 * sub_f20e87e9) / 24 * 3600 / 1000
                        userTokenStaked[address(msg.sender)].field_0 = block.timestamp
    userTokenStaked[address(msg.sender)].field_768 = 0
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > limitSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_768:
        revert with 0, 'Supply exceed'
    if totalSupply + userTokenStaked[address(msg.sender)].field_768 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += userTokenStaked[address(msg.sender)].field_768
    if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_768 < contractTokenBalance[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_768
    emit Transfer(userTokenStaked[address(msg.sender)].field_768, 0, msg.sender);
    emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                        96,
                        userTokenStaked[address(msg.sender)].field_768,
                        0,
                        5,
                        'CLAIM',
                        msg.sender,
}

function stakeBUSD(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require block.timestamp > stor10
    require arg1 >= sub_930491d0
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor12, 0
    else:
        require arg1
        if 100 * arg1 / arg1 != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor12, 100 * arg1 / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userTokenStaked[address(msg.sender)].field_256:
        if block.timestamp <= stor10:
            userTokenStaked[address(msg.sender)].field_0 = stor10
        else:
            userTokenStaked[address(msg.sender)].field_0 = block.timestamp
        totalUsers++
    else:
        if stor10 > block.timestamp:
            if block.timestamp < block.timestamp:
                if userTokenStaked[address(msg.sender)].field_256:
                    require userTokenStaked[address(msg.sender)].field_256
                    if 0 / userTokenStaked[address(msg.sender)].field_256:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        else:
            if userTokenStaked[address(msg.sender)].field_0 < block.timestamp:
                if userTokenStaked[address(msg.sender)].field_256:
                    require userTokenStaked[address(msg.sender)].field_256
                    if (block.timestamp * userTokenStaked[address(msg.sender)].field_256) - (userTokenStaked[address(msg.sender)].field_0 * userTokenStaked[address(msg.sender)].field_256) / userTokenStaked[address(msg.sender)].field_256 != block.timestamp - userTokenStaked[address(msg.sender)].field_0:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if (block.timestamp * userTokenStaked[address(msg.sender)].field_256) - (userTokenStaked[address(msg.sender)].field_0 * userTokenStaked[address(msg.sender)].field_256):
                        require (block.timestamp * userTokenStaked[address(msg.sender)].field_256) - (userTokenStaked[address(msg.sender)].field_0 * userTokenStaked[address(msg.sender)].field_256)
                        if (block.timestamp * userTokenStaked[address(msg.sender)].field_256 * sub_f20e87e9) - (userTokenStaked[address(msg.sender)].field_0 * userTokenStaked[address(msg.sender)].field_256 * sub_f20e87e9) / (block.timestamp * userTokenStaked[address(msg.sender)].field_256) - (userTokenStaked[address(msg.sender)].field_0 * userTokenStaked[address(msg.sender)].field_256) != sub_f20e87e9:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if (block.timestamp * userTokenStaked[address(msg.sender)].field_256 * sub_f20e87e9) - (userTokenStaked[address(msg.sender)].field_0 * userTokenStaked[address(msg.sender)].field_256 * sub_f20e87e9) / 24 * 3600 / 1000 > 0:
                            if userTokenStaked[address(msg.sender)].field_768 + ((block.timestamp * userTokenStaked[address(msg.sender)].field_256 * sub_f20e87e9) - (userTokenStaked[address(msg.sender)].field_0 * userTokenStaked[address(msg.sender)].field_256 * sub_f20e87e9) / 24 * 3600 / 1000) < userTokenStaked[address(msg.sender)].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            userTokenStaked[address(msg.sender)].field_768 += (block.timestamp * userTokenStaked[address(msg.sender)].field_256 * sub_f20e87e9) - (userTokenStaked[address(msg.sender)].field_0 * userTokenStaked[address(msg.sender)].field_256 * sub_f20e87e9) / 24 * 3600 / 1000
                            userTokenStaked[address(msg.sender)].field_0 = block.timestamp
    userTokenStaked[address(msg.sender)].field_512 = block.timestamp
    if userTokenStaked[address(msg.sender)].field_256 + arg1 < userTokenStaked[address(msg.sender)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    userTokenStaked[address(msg.sender)].field_256 += arg1
    if totalBUSDStaked + arg1 < totalBUSDStaked:
        revert with 0, 'SafeMath: addition overflow'
    totalBUSDStaked += arg1
}

function sellToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= contractTokenBalance[address(msg.sender)]:
        if arg1 <= 0:
            revert with 0, 'Token amount can not be 0'
        if block.timestamp <= stor10:
            if stor21[0] + arg1 < stor21[0]:
                revert with 0, 'SafeMath: addition overflow'
            if stor21[0] + arg1 > sub_94ad511b:
                revert with 0, 'Daily Sell Limit exceed'
        else:
            if stor21[block.timestamp - stor10 / 24 * 3600] + arg1 < stor21[block.timestamp - stor10 / 24 * 3600]:
                revert with 0, 'SafeMath: addition overflow'
            if stor21[block.timestamp - stor10 / 24 * 3600] + arg1 > sub_94ad511b:
                revert with 0, 'Daily Sell Limit exceed'
        if block.timestamp <= stor10:
            if stor21[0] + arg1 < stor21[0]:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp <= stor10:
                stor21[0] += arg1
            else:
                stor21[block.timestamp - stor10 / 24 * 3600] = stor21[0] + arg1
        else:
            if stor21[block.timestamp - stor10 / 24 * 3600] + arg1 < stor21[block.timestamp - stor10 / 24 * 3600]:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp <= stor10:
                stor21[0] = stor21[block.timestamp - stor10 / 24 * 3600] + arg1
            else:
                stor21[block.timestamp - stor10 / 24 * 3600] += arg1
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if totalSupply > limitSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if limitSupply + -totalSupply + 1 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require limitSupply + -totalSupply + 1
            if not arg1:
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Insufficient Contract Balance'
                if not msg.sender:
                    revert with 0, 32, 33, 0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                if arg1 > contractTokenBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                contractTokenBalance[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                    96,
                                    arg1,
                                    0,
                                    4,
                                    'SELL',
                                    msg.sender,
            else:
                require arg1
                if arg1 * 0 / limitSupply + -totalSupply + 1 / arg1 != 0 / limitSupply + -totalSupply + 1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= arg1 * 0 / limitSupply + -totalSupply + 1 / 10^18:
                    revert with 0, 'Insufficient Contract Balance'
                if not msg.sender:
                    revert with 0, 32, 33, 0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                if arg1 > contractTokenBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                contractTokenBalance[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * 0 / limitSupply + -totalSupply + 1 / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenOperation(Array(len=4, data='SELL'), arg1, arg1 * 0 / limitSupply + -totalSupply + 1 / 10^18, msg.sender);
        else:
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if totalSupply > limitSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if limitSupply + -totalSupply + 1 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require limitSupply + -totalSupply + 1
            if not arg1:
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Insufficient Contract Balance'
                if not msg.sender:
                    revert with 0, 32, 33, 0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                if arg1 > contractTokenBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                contractTokenBalance[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                    96,
                                    arg1,
                                    0,
                                    4,
                                    'SELL',
                                    msg.sender,
            else:
                require arg1
                if arg1 * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / arg1 != 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= arg1 * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / 10^18:
                    revert with 0, 'Insufficient Contract Balance'
                if not msg.sender:
                    revert with 0, 32, 33, 0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                if arg1 > contractTokenBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                contractTokenBalance[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenOperation(Array(len=4, data='SELL'), arg1, arg1 * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / 10^18, msg.sender);
    else:
        if contractTokenBalance[address(msg.sender)] <= 0:
            revert with 0, 'Token amount can not be 0'
        if block.timestamp <= stor10:
            if stor21[0] + contractTokenBalance[address(msg.sender)] < stor21[0]:
                revert with 0, 'SafeMath: addition overflow'
            if stor21[0] + contractTokenBalance[address(msg.sender)] > sub_94ad511b:
                revert with 0, 'Daily Sell Limit exceed'
        else:
            if stor21[block.timestamp - stor10 / 24 * 3600] + contractTokenBalance[address(msg.sender)] < stor21[block.timestamp - stor10 / 24 * 3600]:
                revert with 0, 'SafeMath: addition overflow'
            if stor21[block.timestamp - stor10 / 24 * 3600] + contractTokenBalance[address(msg.sender)] > sub_94ad511b:
                revert with 0, 'Daily Sell Limit exceed'
        if block.timestamp <= stor10:
            if stor21[0] + contractTokenBalance[address(msg.sender)] < stor21[0]:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp <= stor10:
                stor21[0] += contractTokenBalance[address(msg.sender)]
            else:
                stor21[block.timestamp - stor10 / 24 * 3600] = stor21[0] + contractTokenBalance[address(msg.sender)]
        else:
            if stor21[block.timestamp - stor10 / 24 * 3600] + contractTokenBalance[address(msg.sender)] < stor21[block.timestamp - stor10 / 24 * 3600]:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp <= stor10:
                stor21[0] = stor21[block.timestamp - stor10 / 24 * 3600] + contractTokenBalance[address(msg.sender)]
            else:
                stor21[block.timestamp - stor10 / 24 * 3600] += contractTokenBalance[address(msg.sender)]
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if totalSupply > limitSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if limitSupply + -totalSupply + 1 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require limitSupply + -totalSupply + 1
            if not contractTokenBalance[address(msg.sender)]:
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Insufficient Contract Balance'
                if not msg.sender:
                    revert with 0, 32, 33, 0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                if contractTokenBalance[address(msg.sender)] > contractTokenBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                contractTokenBalance[address(msg.sender)] = 0
                if contractTokenBalance[address(msg.sender)] > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= contractTokenBalance[address(msg.sender)]
                emit Transfer(contractTokenBalance[address(msg.sender)], msg.sender, 0);
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                    96,
                                    contractTokenBalance[address(msg.sender)],
                                    0,
                                    4,
                                    'SELL',
                                    msg.sender,
            else:
                require contractTokenBalance[address(msg.sender)]
                if contractTokenBalance[address(msg.sender)] * 0 / limitSupply + -totalSupply + 1 / contractTokenBalance[address(msg.sender)] != 0 / limitSupply + -totalSupply + 1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= contractTokenBalance[address(msg.sender)] * 0 / limitSupply + -totalSupply + 1 / 10^18:
                    revert with 0, 'Insufficient Contract Balance'
                if not msg.sender:
                    revert with 0, 32, 33, 0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                if contractTokenBalance[address(msg.sender)] > contractTokenBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                contractTokenBalance[address(msg.sender)] = 0
                if contractTokenBalance[address(msg.sender)] > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= contractTokenBalance[address(msg.sender)]
                emit Transfer(contractTokenBalance[address(msg.sender)], msg.sender, 0);
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, contractTokenBalance[address(msg.sender)] * 0 / limitSupply + -totalSupply + 1 / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenOperation(Array(len=4, data='SELL'), contractTokenBalance[address(msg.sender)], contractTokenBalance[address(msg.sender)] * 0 / limitSupply + -totalSupply + 1 / 10^18, msg.sender);
        else:
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if totalSupply > limitSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if limitSupply + -totalSupply + 1 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require limitSupply + -totalSupply + 1
            if not contractTokenBalance[address(msg.sender)]:
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Insufficient Contract Balance'
                if not msg.sender:
                    revert with 0, 32, 33, 0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                if contractTokenBalance[address(msg.sender)] > contractTokenBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                contractTokenBalance[address(msg.sender)] = 0
                if contractTokenBalance[address(msg.sender)] > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= contractTokenBalance[address(msg.sender)]
                emit Transfer(contractTokenBalance[address(msg.sender)], msg.sender, 0);
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                    96,
                                    contractTokenBalance[address(msg.sender)],
                                    0,
                                    4,
                                    'SELL',
                                    msg.sender,
            else:
                require contractTokenBalance[address(msg.sender)]
                if contractTokenBalance[address(msg.sender)] * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / contractTokenBalance[address(msg.sender)] != 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= contractTokenBalance[address(msg.sender)] * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / 10^18:
                    revert with 0, 'Insufficient Contract Balance'
                if not msg.sender:
                    revert with 0, 32, 33, 0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                if contractTokenBalance[address(msg.sender)] > contractTokenBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                contractTokenBalance[address(msg.sender)] = 0
                if contractTokenBalance[address(msg.sender)] > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= contractTokenBalance[address(msg.sender)]
                emit Transfer(contractTokenBalance[address(msg.sender)], msg.sender, 0);
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, contractTokenBalance[address(msg.sender)] * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenOperation(Array(len=4, data='SELL'), contractTokenBalance[address(msg.sender)], contractTokenBalance[address(msg.sender)] * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / 10^18, msg.sender);
}

function getUserUnclaimedTokens_T(address arg1) {
    require calldata.size - 4 >= 32
    if stor10 <= block.timestamp:
        require ext_code.size(stor22)
        staticcall stor22.0xc5fa67b9 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if ext_call.return_data[31 len 1] != 1:
                if ext_call.return_data[31 len 1] != 2:
                    if ext_call.return_data[31 len 1] != 3:
                        if userTokenStaked[address(arg1)].field_1024 >= block.timestamp:
                            if userTokenStaked[address(arg1)].field_1792 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                return userTokenStaked[address(arg1)].field_1792
                        else:
                            if userTokenStaked[address(arg1)].field_1280:
                                require userTokenStaked[address(arg1)].field_1280
                                if (block.timestamp * userTokenStaked[address(arg1)].field_1280) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) / userTokenStaked[address(arg1)].field_1280 != block.timestamp - userTokenStaked[address(arg1)].field_1024:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                else:
                                    if (block.timestamp * userTokenStaked[address(arg1)].field_1280) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280):
                                        require (block.timestamp * userTokenStaked[address(arg1)].field_1280) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280)
                                        if (block.timestamp * userTokenStaked[address(arg1)].field_1280 * sub_832f3eb2) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280 * sub_832f3eb2) / (block.timestamp * userTokenStaked[address(arg1)].field_1280) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) != sub_832f3eb2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        else:
                                            if ((block.timestamp * userTokenStaked[address(arg1)].field_1280 * sub_832f3eb2) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280 * sub_832f3eb2) / 24 * 3600 / 1000) + userTokenStaked[address(arg1)].field_1792 < (block.timestamp * userTokenStaked[address(arg1)].field_1280 * sub_832f3eb2) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280 * sub_832f3eb2) / 24 * 3600 / 1000:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                return (((block.timestamp * userTokenStaked[address(arg1)].field_1280 * sub_832f3eb2) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280 * sub_832f3eb2) / 24 * 3600 / 1000) + userTokenStaked[address(arg1)].field_1792)
                                    else:
                                        if userTokenStaked[address(arg1)].field_1792 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            return userTokenStaked[address(arg1)].field_1792
                            else:
                                if userTokenStaked[address(arg1)].field_1792 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    return userTokenStaked[address(arg1)].field_1792
                    else:
                        if userTokenStaked[address(arg1)].field_1024 >= block.timestamp:
                            if userTokenStaked[address(arg1)].field_1792 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                return userTokenStaked[address(arg1)].field_1792
                        else:
                            if userTokenStaked[address(arg1)].field_1280:
                                require userTokenStaked[address(arg1)].field_1280
                                if (block.timestamp * userTokenStaked[address(arg1)].field_1280) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) / userTokenStaked[address(arg1)].field_1280 != block.timestamp - userTokenStaked[address(arg1)].field_1024:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                else:
                                    if (block.timestamp * userTokenStaked[address(arg1)].field_1280) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280):
                                        require (block.timestamp * userTokenStaked[address(arg1)].field_1280) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280)
                                        if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(arg1)].field_1280) + (stor25 * block.timestamp * userTokenStaked[address(arg1)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) - (stor25 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) / (block.timestamp * userTokenStaked[address(arg1)].field_1280) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) != sub_832f3eb2 + stor25:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        else:
                                            if ((sub_832f3eb2 * block.timestamp * userTokenStaked[address(arg1)].field_1280) + (stor25 * block.timestamp * userTokenStaked[address(arg1)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) - (stor25 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) / 24 * 3600 / 1000) + userTokenStaked[address(arg1)].field_1792 < (sub_832f3eb2 * block.timestamp * userTokenStaked[address(arg1)].field_1280) + (stor25 * block.timestamp * userTokenStaked[address(arg1)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) - (stor25 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) / 24 * 3600 / 1000:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                return (((sub_832f3eb2 * block.timestamp * userTokenStaked[address(arg1)].field_1280) + (stor25 * block.timestamp * userTokenStaked[address(arg1)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) - (stor25 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) / 24 * 3600 / 1000) + userTokenStaked[address(arg1)].field_1792)
                                    else:
                                        if userTokenStaked[address(arg1)].field_1792 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            return userTokenStaked[address(arg1)].field_1792
                            else:
                                if userTokenStaked[address(arg1)].field_1792 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    return userTokenStaked[address(arg1)].field_1792
                else:
                    if userTokenStaked[address(arg1)].field_1024 >= block.timestamp:
                        if userTokenStaked[address(arg1)].field_1792 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            return userTokenStaked[address(arg1)].field_1792
                    else:
                        if userTokenStaked[address(arg1)].field_1280:
                            require userTokenStaked[address(arg1)].field_1280
                            if (block.timestamp * userTokenStaked[address(arg1)].field_1280) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) / userTokenStaked[address(arg1)].field_1280 != block.timestamp - userTokenStaked[address(arg1)].field_1024:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            else:
                                if (block.timestamp * userTokenStaked[address(arg1)].field_1280) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280):
                                    require (block.timestamp * userTokenStaked[address(arg1)].field_1280) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280)
                                    if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(arg1)].field_1280) + (stor24 * block.timestamp * userTokenStaked[address(arg1)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) - (stor24 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) / (block.timestamp * userTokenStaked[address(arg1)].field_1280) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) != sub_832f3eb2 + stor24:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    else:
                                        if ((sub_832f3eb2 * block.timestamp * userTokenStaked[address(arg1)].field_1280) + (stor24 * block.timestamp * userTokenStaked[address(arg1)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) - (stor24 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) / 24 * 3600 / 1000) + userTokenStaked[address(arg1)].field_1792 < (sub_832f3eb2 * block.timestamp * userTokenStaked[address(arg1)].field_1280) + (stor24 * block.timestamp * userTokenStaked[address(arg1)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) - (stor24 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) / 24 * 3600 / 1000:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            return (((sub_832f3eb2 * block.timestamp * userTokenStaked[address(arg1)].field_1280) + (stor24 * block.timestamp * userTokenStaked[address(arg1)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) - (stor24 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) / 24 * 3600 / 1000) + userTokenStaked[address(arg1)].field_1792)
                                else:
                                    if userTokenStaked[address(arg1)].field_1792 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        return userTokenStaked[address(arg1)].field_1792
                        else:
                            if userTokenStaked[address(arg1)].field_1792 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                return userTokenStaked[address(arg1)].field_1792
            else:
                if userTokenStaked[address(arg1)].field_1024 >= block.timestamp:
                    if userTokenStaked[address(arg1)].field_1792 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        return userTokenStaked[address(arg1)].field_1792
                else:
                    if userTokenStaked[address(arg1)].field_1280:
                        require userTokenStaked[address(arg1)].field_1280
                        if (block.timestamp * userTokenStaked[address(arg1)].field_1280) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) / userTokenStaked[address(arg1)].field_1280 != block.timestamp - userTokenStaked[address(arg1)].field_1024:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        else:
                            if (block.timestamp * userTokenStaked[address(arg1)].field_1280) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280):
                                require (block.timestamp * userTokenStaked[address(arg1)].field_1280) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280)
                                if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(arg1)].field_1280) + (stor23 * block.timestamp * userTokenStaked[address(arg1)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) - (stor23 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) / (block.timestamp * userTokenStaked[address(arg1)].field_1280) - (userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) != sub_832f3eb2 + stor23:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                else:
                                    if ((sub_832f3eb2 * block.timestamp * userTokenStaked[address(arg1)].field_1280) + (stor23 * block.timestamp * userTokenStaked[address(arg1)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) - (stor23 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) / 24 * 3600 / 1000) + userTokenStaked[address(arg1)].field_1792 < (sub_832f3eb2 * block.timestamp * userTokenStaked[address(arg1)].field_1280) + (stor23 * block.timestamp * userTokenStaked[address(arg1)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) - (stor23 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) / 24 * 3600 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        return (((sub_832f3eb2 * block.timestamp * userTokenStaked[address(arg1)].field_1280) + (stor23 * block.timestamp * userTokenStaked[address(arg1)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) - (stor23 * userTokenStaked[address(arg1)].field_1024 * userTokenStaked[address(arg1)].field_1280) / 24 * 3600 / 1000) + userTokenStaked[address(arg1)].field_1792)
                            else:
                                if userTokenStaked[address(arg1)].field_1792 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    return userTokenStaked[address(arg1)].field_1792
                    else:
                        if userTokenStaked[address(arg1)].field_1792 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            return userTokenStaked[address(arg1)].field_1792
    else:
        require ext_code.size(stor22)
        staticcall stor22.0xc5fa67b9 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if ext_call.return_data[31 len 1] != 1:
                if ext_call.return_data[31 len 1] != 2:
                    if ext_call.return_data[31 len 1] != 3:
                        if block.timestamp >= block.timestamp:
                            if userTokenStaked[address(arg1)].field_1792 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                return userTokenStaked[address(arg1)].field_1792
                        else:
                            if userTokenStaked[address(arg1)].field_1280:
                                require userTokenStaked[address(arg1)].field_1280
                                if 0 / userTokenStaked[address(arg1)].field_1280:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                else:
                                    if userTokenStaked[address(arg1)].field_1792 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        return userTokenStaked[address(arg1)].field_1792
                            else:
                                if userTokenStaked[address(arg1)].field_1792 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    return userTokenStaked[address(arg1)].field_1792
                    else:
                        if block.timestamp >= block.timestamp:
                            if userTokenStaked[address(arg1)].field_1792 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                return userTokenStaked[address(arg1)].field_1792
                        else:
                            if userTokenStaked[address(arg1)].field_1280:
                                require userTokenStaked[address(arg1)].field_1280
                                if 0 / userTokenStaked[address(arg1)].field_1280:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                else:
                                    if userTokenStaked[address(arg1)].field_1792 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        return userTokenStaked[address(arg1)].field_1792
                            else:
                                if userTokenStaked[address(arg1)].field_1792 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    return userTokenStaked[address(arg1)].field_1792
                else:
                    if block.timestamp >= block.timestamp:
                        if userTokenStaked[address(arg1)].field_1792 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            return userTokenStaked[address(arg1)].field_1792
                    else:
                        if userTokenStaked[address(arg1)].field_1280:
                            require userTokenStaked[address(arg1)].field_1280
                            if 0 / userTokenStaked[address(arg1)].field_1280:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            else:
                                if userTokenStaked[address(arg1)].field_1792 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    return userTokenStaked[address(arg1)].field_1792
                        else:
                            if userTokenStaked[address(arg1)].field_1792 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                return userTokenStaked[address(arg1)].field_1792
            else:
                if block.timestamp >= block.timestamp:
                    if userTokenStaked[address(arg1)].field_1792 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        return userTokenStaked[address(arg1)].field_1792
                else:
                    if userTokenStaked[address(arg1)].field_1280:
                        require userTokenStaked[address(arg1)].field_1280
                        if 0 / userTokenStaked[address(arg1)].field_1280:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        else:
                            if userTokenStaked[address(arg1)].field_1792 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                return userTokenStaked[address(arg1)].field_1792
                    else:
                        if userTokenStaked[address(arg1)].field_1792 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            return userTokenStaked[address(arg1)].field_1792
}

function unStakeToken() {
    if userTokenStaked[address(msg.sender)].field_1536 + (168 * 24 * 3600) < userTokenStaked[address(msg.sender)].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    else:
        require block.timestamp > userTokenStaked[address(msg.sender)].field_1536 + (168 * 24 * 3600)
        if stor10 <= block.timestamp:
            require ext_code.size(stor22)
            staticcall stor22.0xc5fa67b9 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                if ext_call.return_data[31 len 1] != 1:
                    if ext_call.return_data[31 len 1] != 2:
                        if ext_call.return_data[31 len 1] != 3:
                            if userTokenStaked[address(msg.sender)].field_1024 >= block.timestamp:
                                userTokenStaked[address(msg.sender)].field_1280 = 0
                                if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                    if not this.address:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                    else:
                                        if not msg.sender:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                        else:
                                            if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                    emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                            else:
                                if userTokenStaked[address(msg.sender)].field_1280:
                                    require userTokenStaked[address(msg.sender)].field_1280
                                    if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / userTokenStaked[address(msg.sender)].field_1280 != block.timestamp - userTokenStaked[address(msg.sender)].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    else:
                                        if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280):
                                            require (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280)
                                            if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) / (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) != sub_832f3eb2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            else:
                                                if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) / 24 * 3600 / 1000 <= 0:
                                                    userTokenStaked[address(msg.sender)].field_1280 = 0
                                                    if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                                        if not this.address:
                                                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                        else:
                                                            if not msg.sender:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                            else:
                                                                if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                                    if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                                        emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                                                else:
                                                    if userTokenStaked[address(msg.sender)].field_1792 + ((block.timestamp * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) / 24 * 3600 / 1000) < userTokenStaked[address(msg.sender)].field_1792:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        userTokenStaked[address(msg.sender)].field_1792 += (block.timestamp * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) / 24 * 3600 / 1000
                                                        userTokenStaked[address(msg.sender)].field_1024 = block.timestamp
                                                        userTokenStaked[address(msg.sender)].field_1280 = 0
                                                        if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                                            if not this.address:
                                                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                            else:
                                                                if not msg.sender:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                                else:
                                                                    if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                                        if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                                            emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                                        else:
                                            userTokenStaked[address(msg.sender)].field_1280 = 0
                                            if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                                if not this.address:
                                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                    else:
                                                        if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                            if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                                emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                                else:
                                    userTokenStaked[address(msg.sender)].field_1280 = 0
                                    if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                        if not this.address:
                                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        else:
                                            if not msg.sender:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                            else:
                                                if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                    if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                        emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                        else:
                            if userTokenStaked[address(msg.sender)].field_1024 >= block.timestamp:
                                userTokenStaked[address(msg.sender)].field_1280 = 0
                                if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                    if not this.address:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                    else:
                                        if not msg.sender:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                        else:
                                            if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                    emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                            else:
                                if userTokenStaked[address(msg.sender)].field_1280:
                                    require userTokenStaked[address(msg.sender)].field_1280
                                    if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / userTokenStaked[address(msg.sender)].field_1280 != block.timestamp - userTokenStaked[address(msg.sender)].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    else:
                                        if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280):
                                            require (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280)
                                            if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor25 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor25 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) != sub_832f3eb2 + stor25:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            else:
                                                if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor25 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor25 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000 <= 0:
                                                    userTokenStaked[address(msg.sender)].field_1280 = 0
                                                    if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                                        if not this.address:
                                                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                        else:
                                                            if not msg.sender:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                            else:
                                                                if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                                    if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                                        emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                                                else:
                                                    if userTokenStaked[address(msg.sender)].field_1792 + ((sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor25 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor25 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000) < userTokenStaked[address(msg.sender)].field_1792:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        userTokenStaked[address(msg.sender)].field_1792 += (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor25 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor25 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000
                                                        userTokenStaked[address(msg.sender)].field_1024 = block.timestamp
                                                        userTokenStaked[address(msg.sender)].field_1280 = 0
                                                        if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                                            if not this.address:
                                                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                            else:
                                                                if not msg.sender:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                                else:
                                                                    if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                                        if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                                            emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                                        else:
                                            userTokenStaked[address(msg.sender)].field_1280 = 0
                                            if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                                if not this.address:
                                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                    else:
                                                        if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                            if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                                emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                                else:
                                    userTokenStaked[address(msg.sender)].field_1280 = 0
                                    if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                        if not this.address:
                                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        else:
                                            if not msg.sender:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                            else:
                                                if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                    if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                        emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                    else:
                        if userTokenStaked[address(msg.sender)].field_1024 >= block.timestamp:
                            userTokenStaked[address(msg.sender)].field_1280 = 0
                            if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                if not this.address:
                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                else:
                                    if not msg.sender:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                    else:
                                        if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                            if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                        else:
                            if userTokenStaked[address(msg.sender)].field_1280:
                                require userTokenStaked[address(msg.sender)].field_1280
                                if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / userTokenStaked[address(msg.sender)].field_1280 != block.timestamp - userTokenStaked[address(msg.sender)].field_1024:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                else:
                                    if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280):
                                        require (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280)
                                        if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor24 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor24 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) != sub_832f3eb2 + stor24:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        else:
                                            if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor24 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor24 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000 <= 0:
                                                userTokenStaked[address(msg.sender)].field_1280 = 0
                                                if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                                    if not this.address:
                                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                    else:
                                                        if not msg.sender:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                        else:
                                                            if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                                if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                                    emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                                            else:
                                                if userTokenStaked[address(msg.sender)].field_1792 + ((sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor24 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor24 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000) < userTokenStaked[address(msg.sender)].field_1792:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    userTokenStaked[address(msg.sender)].field_1792 += (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor24 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor24 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000
                                                    userTokenStaked[address(msg.sender)].field_1024 = block.timestamp
                                                    userTokenStaked[address(msg.sender)].field_1280 = 0
                                                    if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                                        if not this.address:
                                                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                        else:
                                                            if not msg.sender:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                            else:
                                                                if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                                    if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                                        emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                                    else:
                                        userTokenStaked[address(msg.sender)].field_1280 = 0
                                        if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                            if not this.address:
                                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                            else:
                                                if not msg.sender:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                else:
                                                    if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                        if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                            emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                            else:
                                userTokenStaked[address(msg.sender)].field_1280 = 0
                                if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                    if not this.address:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                    else:
                                        if not msg.sender:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                        else:
                                            if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                    emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                else:
                    if userTokenStaked[address(msg.sender)].field_1024 >= block.timestamp:
                        userTokenStaked[address(msg.sender)].field_1280 = 0
                        if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                            if not this.address:
                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                            else:
                                if not msg.sender:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                else:
                                    if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                        if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                            emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                    else:
                        if userTokenStaked[address(msg.sender)].field_1280:
                            require userTokenStaked[address(msg.sender)].field_1280
                            if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / userTokenStaked[address(msg.sender)].field_1280 != block.timestamp - userTokenStaked[address(msg.sender)].field_1024:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            else:
                                if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280):
                                    require (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280)
                                    if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor23 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor23 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) != sub_832f3eb2 + stor23:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    else:
                                        if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor23 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor23 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000 <= 0:
                                            userTokenStaked[address(msg.sender)].field_1280 = 0
                                            if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                                if not this.address:
                                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                    else:
                                                        if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                            if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                                emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                                        else:
                                            if userTokenStaked[address(msg.sender)].field_1792 + ((sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor23 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor23 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000) < userTokenStaked[address(msg.sender)].field_1792:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                userTokenStaked[address(msg.sender)].field_1792 += (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor23 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor23 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000
                                                userTokenStaked[address(msg.sender)].field_1024 = block.timestamp
                                                userTokenStaked[address(msg.sender)].field_1280 = 0
                                                if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                                    if not this.address:
                                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                    else:
                                                        if not msg.sender:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                        else:
                                                            if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                                if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                                    emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                                else:
                                    userTokenStaked[address(msg.sender)].field_1280 = 0
                                    if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                        if not this.address:
                                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        else:
                                            if not msg.sender:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                            else:
                                                if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                    if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                        emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                        else:
                            userTokenStaked[address(msg.sender)].field_1280 = 0
                            if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                if not this.address:
                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                else:
                                    if not msg.sender:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                    else:
                                        if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                            if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
        else:
            require ext_code.size(stor22)
            staticcall stor22.0xc5fa67b9 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                if ext_call.return_data[31 len 1] != 1:
                    if ext_call.return_data[31 len 1] != 2:
                        if ext_call.return_data[31 len 1] != 3:
                            if block.timestamp >= block.timestamp:
                                userTokenStaked[address(msg.sender)].field_1280 = 0
                                if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                    if not this.address:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                    else:
                                        if not msg.sender:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                        else:
                                            if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                    emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                            else:
                                if userTokenStaked[address(msg.sender)].field_1280:
                                    require userTokenStaked[address(msg.sender)].field_1280
                                    if 0 / userTokenStaked[address(msg.sender)].field_1280:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    else:
                                        userTokenStaked[address(msg.sender)].field_1280 = 0
                                        if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                            if not this.address:
                                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                            else:
                                                if not msg.sender:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                else:
                                                    if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                        if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                            emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                                else:
                                    userTokenStaked[address(msg.sender)].field_1280 = 0
                                    if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                        if not this.address:
                                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        else:
                                            if not msg.sender:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                            else:
                                                if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                    if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                        emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                        else:
                            if block.timestamp >= block.timestamp:
                                userTokenStaked[address(msg.sender)].field_1280 = 0
                                if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                    if not this.address:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                    else:
                                        if not msg.sender:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                        else:
                                            if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                    emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                            else:
                                if userTokenStaked[address(msg.sender)].field_1280:
                                    require userTokenStaked[address(msg.sender)].field_1280
                                    if 0 / userTokenStaked[address(msg.sender)].field_1280:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    else:
                                        userTokenStaked[address(msg.sender)].field_1280 = 0
                                        if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                            if not this.address:
                                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                            else:
                                                if not msg.sender:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                else:
                                                    if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                        if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                            emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                                else:
                                    userTokenStaked[address(msg.sender)].field_1280 = 0
                                    if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                        if not this.address:
                                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        else:
                                            if not msg.sender:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                            else:
                                                if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                    if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                        emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                    else:
                        if block.timestamp >= block.timestamp:
                            userTokenStaked[address(msg.sender)].field_1280 = 0
                            if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                if not this.address:
                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                else:
                                    if not msg.sender:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                    else:
                                        if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                            if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                        else:
                            if userTokenStaked[address(msg.sender)].field_1280:
                                require userTokenStaked[address(msg.sender)].field_1280
                                if 0 / userTokenStaked[address(msg.sender)].field_1280:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                else:
                                    userTokenStaked[address(msg.sender)].field_1280 = 0
                                    if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                        if not this.address:
                                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        else:
                                            if not msg.sender:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                            else:
                                                if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                    if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                        emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                            else:
                                userTokenStaked[address(msg.sender)].field_1280 = 0
                                if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                    if not this.address:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                    else:
                                        if not msg.sender:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                        else:
                                            if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                    emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                else:
                    if block.timestamp >= block.timestamp:
                        userTokenStaked[address(msg.sender)].field_1280 = 0
                        if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                            if not this.address:
                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                            else:
                                if not msg.sender:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                else:
                                    if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                        if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                            emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                    else:
                        if userTokenStaked[address(msg.sender)].field_1280:
                            require userTokenStaked[address(msg.sender)].field_1280
                            if 0 / userTokenStaked[address(msg.sender)].field_1280:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            else:
                                userTokenStaked[address(msg.sender)].field_1280 = 0
                                if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                    if not this.address:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                    else:
                                        if not msg.sender:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                        else:
                                            if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                                if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                    emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
                        else:
                            userTokenStaked[address(msg.sender)].field_1280 = 0
                            if userTokenStaked[address(msg.sender)].field_1280 > totalTokenStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                totalTokenStaked -= userTokenStaked[address(msg.sender)].field_1280
                                if not this.address:
                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                else:
                                    if not msg.sender:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                    else:
                                        if userTokenStaked[address(msg.sender)].field_1280 > contractTokenBalance[address(this.address)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            contractTokenBalance[address(this.address)] -= userTokenStaked[address(msg.sender)].field_1280
                                            if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1280 < contractTokenBalance[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1280
                                                emit Transfer(userTokenStaked[address(msg.sender)].field_1280, this.address, msg.sender);
}

function claimToken_T() {
    if stor10 <= block.timestamp:
        require ext_code.size(stor22)
        staticcall stor22.0xc5fa67b9 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if ext_call.return_data[31 len 1] != 1:
                if ext_call.return_data[31 len 1] != 2:
                    if ext_call.return_data[31 len 1] != 3:
                        if userTokenStaked[address(msg.sender)].field_1024 >= block.timestamp:
                            userTokenStaked[address(msg.sender)].field_1792 = 0
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            else:
                                if totalSupply > limitSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                        revert with 0, 'Supply exceed'
                                    else:
                                        if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                            if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                    96,
                                                                    userTokenStaked[address(msg.sender)].field_1792,
                                                                    0,
                                                                    5,
                                                                    'CLAIM',
                                                                    msg.sender,
                        else:
                            if userTokenStaked[address(msg.sender)].field_1280:
                                require userTokenStaked[address(msg.sender)].field_1280
                                if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / userTokenStaked[address(msg.sender)].field_1280 != block.timestamp - userTokenStaked[address(msg.sender)].field_1024:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                else:
                                    if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280):
                                        require (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280)
                                        if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) / (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) != sub_832f3eb2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        else:
                                            if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) / 24 * 3600 / 1000 <= 0:
                                                userTokenStaked[address(msg.sender)].field_1792 = 0
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: mint to the zero address'
                                                else:
                                                    if totalSupply > limitSupply:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                                            revert with 0, 'Supply exceed'
                                                        else:
                                                            if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                                if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                                    emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                                    emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                                        96,
                                                                                        userTokenStaked[address(msg.sender)].field_1792,
                                                                                        0,
                                                                                        5,
                                                                                        'CLAIM',
                                                                                        msg.sender,
                                            else:
                                                if userTokenStaked[address(msg.sender)].field_1792 + ((block.timestamp * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) / 24 * 3600 / 1000) < userTokenStaked[address(msg.sender)].field_1792:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    userTokenStaked[address(msg.sender)].field_1792 += (block.timestamp * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) / 24 * 3600 / 1000
                                                    userTokenStaked[address(msg.sender)].field_1024 = block.timestamp
                                                    userTokenStaked[address(msg.sender)].field_1792 = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: mint to the zero address'
                                                    else:
                                                        if totalSupply > limitSupply:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                                                revert with 0, 'Supply exceed'
                                                            else:
                                                                if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                                    if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                                        emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                                        emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                                            96,
                                                                                            userTokenStaked[address(msg.sender)].field_1792,
                                                                                            0,
                                                                                            5,
                                                                                            'CLAIM',
                                                                                            msg.sender,
                                    else:
                                        userTokenStaked[address(msg.sender)].field_1792 = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        else:
                                            if totalSupply > limitSupply:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                                    revert with 0, 'Supply exceed'
                                                else:
                                                    if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                        if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                            emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                            emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                                96,
                                                                                userTokenStaked[address(msg.sender)].field_1792,
                                                                                0,
                                                                                5,
                                                                                'CLAIM',
                                                                                msg.sender,
                            else:
                                userTokenStaked[address(msg.sender)].field_1792 = 0
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                else:
                                    if totalSupply > limitSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                            revert with 0, 'Supply exceed'
                                        else:
                                            if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                    emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                    emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                        96,
                                                                        userTokenStaked[address(msg.sender)].field_1792,
                                                                        0,
                                                                        5,
                                                                        'CLAIM',
                                                                        msg.sender,
                    else:
                        if userTokenStaked[address(msg.sender)].field_1024 >= block.timestamp:
                            userTokenStaked[address(msg.sender)].field_1792 = 0
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            else:
                                if totalSupply > limitSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                        revert with 0, 'Supply exceed'
                                    else:
                                        if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                            if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                    96,
                                                                    userTokenStaked[address(msg.sender)].field_1792,
                                                                    0,
                                                                    5,
                                                                    'CLAIM',
                                                                    msg.sender,
                        else:
                            if userTokenStaked[address(msg.sender)].field_1280:
                                require userTokenStaked[address(msg.sender)].field_1280
                                if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / userTokenStaked[address(msg.sender)].field_1280 != block.timestamp - userTokenStaked[address(msg.sender)].field_1024:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                else:
                                    if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280):
                                        require (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280)
                                        if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor25 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor25 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) != sub_832f3eb2 + stor25:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        else:
                                            if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor25 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor25 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000 <= 0:
                                                userTokenStaked[address(msg.sender)].field_1792 = 0
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: mint to the zero address'
                                                else:
                                                    if totalSupply > limitSupply:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                                            revert with 0, 'Supply exceed'
                                                        else:
                                                            if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                                if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                                    emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                                    emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                                        96,
                                                                                        userTokenStaked[address(msg.sender)].field_1792,
                                                                                        0,
                                                                                        5,
                                                                                        'CLAIM',
                                                                                        msg.sender,
                                            else:
                                                if userTokenStaked[address(msg.sender)].field_1792 + ((sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor25 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor25 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000) < userTokenStaked[address(msg.sender)].field_1792:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    userTokenStaked[address(msg.sender)].field_1792 += (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor25 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor25 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000
                                                    userTokenStaked[address(msg.sender)].field_1024 = block.timestamp
                                                    userTokenStaked[address(msg.sender)].field_1792 = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: mint to the zero address'
                                                    else:
                                                        if totalSupply > limitSupply:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                                                revert with 0, 'Supply exceed'
                                                            else:
                                                                if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                                    if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                                        emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                                        emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                                            96,
                                                                                            userTokenStaked[address(msg.sender)].field_1792,
                                                                                            0,
                                                                                            5,
                                                                                            'CLAIM',
                                                                                            msg.sender,
                                    else:
                                        userTokenStaked[address(msg.sender)].field_1792 = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        else:
                                            if totalSupply > limitSupply:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                                    revert with 0, 'Supply exceed'
                                                else:
                                                    if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                        if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                            emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                            emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                                96,
                                                                                userTokenStaked[address(msg.sender)].field_1792,
                                                                                0,
                                                                                5,
                                                                                'CLAIM',
                                                                                msg.sender,
                            else:
                                userTokenStaked[address(msg.sender)].field_1792 = 0
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                else:
                                    if totalSupply > limitSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                            revert with 0, 'Supply exceed'
                                        else:
                                            if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                    emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                    emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                        96,
                                                                        userTokenStaked[address(msg.sender)].field_1792,
                                                                        0,
                                                                        5,
                                                                        'CLAIM',
                                                                        msg.sender,
                else:
                    if userTokenStaked[address(msg.sender)].field_1024 >= block.timestamp:
                        userTokenStaked[address(msg.sender)].field_1792 = 0
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        else:
                            if totalSupply > limitSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                    revert with 0, 'Supply exceed'
                                else:
                                    if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                        if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                            emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                            emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                96,
                                                                userTokenStaked[address(msg.sender)].field_1792,
                                                                0,
                                                                5,
                                                                'CLAIM',
                                                                msg.sender,
                    else:
                        if userTokenStaked[address(msg.sender)].field_1280:
                            require userTokenStaked[address(msg.sender)].field_1280
                            if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / userTokenStaked[address(msg.sender)].field_1280 != block.timestamp - userTokenStaked[address(msg.sender)].field_1024:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            else:
                                if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280):
                                    require (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280)
                                    if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor24 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor24 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) != sub_832f3eb2 + stor24:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    else:
                                        if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor24 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor24 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000 <= 0:
                                            userTokenStaked[address(msg.sender)].field_1792 = 0
                                            if not msg.sender:
                                                revert with 0, 'ERC20: mint to the zero address'
                                            else:
                                                if totalSupply > limitSupply:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                                        revert with 0, 'Supply exceed'
                                                    else:
                                                        if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                            if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                                emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                                    96,
                                                                                    userTokenStaked[address(msg.sender)].field_1792,
                                                                                    0,
                                                                                    5,
                                                                                    'CLAIM',
                                                                                    msg.sender,
                                        else:
                                            if userTokenStaked[address(msg.sender)].field_1792 + ((sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor24 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor24 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000) < userTokenStaked[address(msg.sender)].field_1792:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                userTokenStaked[address(msg.sender)].field_1792 += (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor24 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor24 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000
                                                userTokenStaked[address(msg.sender)].field_1024 = block.timestamp
                                                userTokenStaked[address(msg.sender)].field_1792 = 0
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: mint to the zero address'
                                                else:
                                                    if totalSupply > limitSupply:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                                            revert with 0, 'Supply exceed'
                                                        else:
                                                            if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                                if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                                    emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                                    emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                                        96,
                                                                                        userTokenStaked[address(msg.sender)].field_1792,
                                                                                        0,
                                                                                        5,
                                                                                        'CLAIM',
                                                                                        msg.sender,
                                else:
                                    userTokenStaked[address(msg.sender)].field_1792 = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    else:
                                        if totalSupply > limitSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                                revert with 0, 'Supply exceed'
                                            else:
                                                if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                    if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                        emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                        emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                            96,
                                                                            userTokenStaked[address(msg.sender)].field_1792,
                                                                            0,
                                                                            5,
                                                                            'CLAIM',
                                                                            msg.sender,
                        else:
                            userTokenStaked[address(msg.sender)].field_1792 = 0
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            else:
                                if totalSupply > limitSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                        revert with 0, 'Supply exceed'
                                    else:
                                        if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                            if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                    96,
                                                                    userTokenStaked[address(msg.sender)].field_1792,
                                                                    0,
                                                                    5,
                                                                    'CLAIM',
                                                                    msg.sender,
            else:
                if userTokenStaked[address(msg.sender)].field_1024 >= block.timestamp:
                    userTokenStaked[address(msg.sender)].field_1792 = 0
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    else:
                        if totalSupply > limitSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                revert with 0, 'Supply exceed'
                            else:
                                if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                    if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                        emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                        emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                            96,
                                                            userTokenStaked[address(msg.sender)].field_1792,
                                                            0,
                                                            5,
                                                            'CLAIM',
                                                            msg.sender,
                else:
                    if userTokenStaked[address(msg.sender)].field_1280:
                        require userTokenStaked[address(msg.sender)].field_1280
                        if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / userTokenStaked[address(msg.sender)].field_1280 != block.timestamp - userTokenStaked[address(msg.sender)].field_1024:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        else:
                            if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280):
                                require (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280)
                                if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor23 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor23 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) != sub_832f3eb2 + stor23:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                else:
                                    if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor23 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor23 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000 <= 0:
                                        userTokenStaked[address(msg.sender)].field_1792 = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        else:
                                            if totalSupply > limitSupply:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                                    revert with 0, 'Supply exceed'
                                                else:
                                                    if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                        if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                            emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                            emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                                96,
                                                                                userTokenStaked[address(msg.sender)].field_1792,
                                                                                0,
                                                                                5,
                                                                                'CLAIM',
                                                                                msg.sender,
                                    else:
                                        if userTokenStaked[address(msg.sender)].field_1792 + ((sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor23 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor23 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000) < userTokenStaked[address(msg.sender)].field_1792:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            userTokenStaked[address(msg.sender)].field_1792 += (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor23 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor23 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000
                                            userTokenStaked[address(msg.sender)].field_1024 = block.timestamp
                                            userTokenStaked[address(msg.sender)].field_1792 = 0
                                            if not msg.sender:
                                                revert with 0, 'ERC20: mint to the zero address'
                                            else:
                                                if totalSupply > limitSupply:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                                        revert with 0, 'Supply exceed'
                                                    else:
                                                        if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                            if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                                emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                                    96,
                                                                                    userTokenStaked[address(msg.sender)].field_1792,
                                                                                    0,
                                                                                    5,
                                                                                    'CLAIM',
                                                                                    msg.sender,
                            else:
                                userTokenStaked[address(msg.sender)].field_1792 = 0
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                else:
                                    if totalSupply > limitSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                            revert with 0, 'Supply exceed'
                                        else:
                                            if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                    emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                    emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                        96,
                                                                        userTokenStaked[address(msg.sender)].field_1792,
                                                                        0,
                                                                        5,
                                                                        'CLAIM',
                                                                        msg.sender,
                    else:
                        userTokenStaked[address(msg.sender)].field_1792 = 0
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        else:
                            if totalSupply > limitSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                    revert with 0, 'Supply exceed'
                                else:
                                    if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                        if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                            emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                            emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                96,
                                                                userTokenStaked[address(msg.sender)].field_1792,
                                                                0,
                                                                5,
                                                                'CLAIM',
                                                                msg.sender,
    else:
        require ext_code.size(stor22)
        staticcall stor22.0xc5fa67b9 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if ext_call.return_data[31 len 1] != 1:
                if ext_call.return_data[31 len 1] != 2:
                    if ext_call.return_data[31 len 1] != 3:
                        if block.timestamp >= block.timestamp:
                            userTokenStaked[address(msg.sender)].field_1792 = 0
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            else:
                                if totalSupply > limitSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                        revert with 0, 'Supply exceed'
                                    else:
                                        if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                            if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                    96,
                                                                    userTokenStaked[address(msg.sender)].field_1792,
                                                                    0,
                                                                    5,
                                                                    'CLAIM',
                                                                    msg.sender,
                        else:
                            if userTokenStaked[address(msg.sender)].field_1280:
                                require userTokenStaked[address(msg.sender)].field_1280
                                if 0 / userTokenStaked[address(msg.sender)].field_1280:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                else:
                                    userTokenStaked[address(msg.sender)].field_1792 = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    else:
                                        if totalSupply > limitSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                                revert with 0, 'Supply exceed'
                                            else:
                                                if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                    if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                        emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                        emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                            96,
                                                                            userTokenStaked[address(msg.sender)].field_1792,
                                                                            0,
                                                                            5,
                                                                            'CLAIM',
                                                                            msg.sender,
                            else:
                                userTokenStaked[address(msg.sender)].field_1792 = 0
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                else:
                                    if totalSupply > limitSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                            revert with 0, 'Supply exceed'
                                        else:
                                            if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                    emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                    emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                        96,
                                                                        userTokenStaked[address(msg.sender)].field_1792,
                                                                        0,
                                                                        5,
                                                                        'CLAIM',
                                                                        msg.sender,
                    else:
                        if block.timestamp >= block.timestamp:
                            userTokenStaked[address(msg.sender)].field_1792 = 0
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            else:
                                if totalSupply > limitSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                        revert with 0, 'Supply exceed'
                                    else:
                                        if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                            if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                    96,
                                                                    userTokenStaked[address(msg.sender)].field_1792,
                                                                    0,
                                                                    5,
                                                                    'CLAIM',
                                                                    msg.sender,
                        else:
                            if userTokenStaked[address(msg.sender)].field_1280:
                                require userTokenStaked[address(msg.sender)].field_1280
                                if 0 / userTokenStaked[address(msg.sender)].field_1280:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                else:
                                    userTokenStaked[address(msg.sender)].field_1792 = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    else:
                                        if totalSupply > limitSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                                revert with 0, 'Supply exceed'
                                            else:
                                                if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                    if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                        emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                        emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                            96,
                                                                            userTokenStaked[address(msg.sender)].field_1792,
                                                                            0,
                                                                            5,
                                                                            'CLAIM',
                                                                            msg.sender,
                            else:
                                userTokenStaked[address(msg.sender)].field_1792 = 0
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                else:
                                    if totalSupply > limitSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                            revert with 0, 'Supply exceed'
                                        else:
                                            if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                    emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                    emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                        96,
                                                                        userTokenStaked[address(msg.sender)].field_1792,
                                                                        0,
                                                                        5,
                                                                        'CLAIM',
                                                                        msg.sender,
                else:
                    if block.timestamp >= block.timestamp:
                        userTokenStaked[address(msg.sender)].field_1792 = 0
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        else:
                            if totalSupply > limitSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                    revert with 0, 'Supply exceed'
                                else:
                                    if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                        if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                            emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                            emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                96,
                                                                userTokenStaked[address(msg.sender)].field_1792,
                                                                0,
                                                                5,
                                                                'CLAIM',
                                                                msg.sender,
                    else:
                        if userTokenStaked[address(msg.sender)].field_1280:
                            require userTokenStaked[address(msg.sender)].field_1280
                            if 0 / userTokenStaked[address(msg.sender)].field_1280:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            else:
                                userTokenStaked[address(msg.sender)].field_1792 = 0
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                else:
                                    if totalSupply > limitSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                            revert with 0, 'Supply exceed'
                                        else:
                                            if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                                if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                    emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                    emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                        96,
                                                                        userTokenStaked[address(msg.sender)].field_1792,
                                                                        0,
                                                                        5,
                                                                        'CLAIM',
                                                                        msg.sender,
                        else:
                            userTokenStaked[address(msg.sender)].field_1792 = 0
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            else:
                                if totalSupply > limitSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                        revert with 0, 'Supply exceed'
                                    else:
                                        if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                            if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                    96,
                                                                    userTokenStaked[address(msg.sender)].field_1792,
                                                                    0,
                                                                    5,
                                                                    'CLAIM',
                                                                    msg.sender,
            else:
                if block.timestamp >= block.timestamp:
                    userTokenStaked[address(msg.sender)].field_1792 = 0
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    else:
                        if totalSupply > limitSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                revert with 0, 'Supply exceed'
                            else:
                                if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                    if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                        emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                        emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                            96,
                                                            userTokenStaked[address(msg.sender)].field_1792,
                                                            0,
                                                            5,
                                                            'CLAIM',
                                                            msg.sender,
                else:
                    if userTokenStaked[address(msg.sender)].field_1280:
                        require userTokenStaked[address(msg.sender)].field_1280
                        if 0 / userTokenStaked[address(msg.sender)].field_1280:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        else:
                            userTokenStaked[address(msg.sender)].field_1792 = 0
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            else:
                                if totalSupply > limitSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                        revert with 0, 'Supply exceed'
                                    else:
                                        if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                            if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                                emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                    96,
                                                                    userTokenStaked[address(msg.sender)].field_1792,
                                                                    0,
                                                                    5,
                                                                    'CLAIM',
                                                                    msg.sender,
                    else:
                        userTokenStaked[address(msg.sender)].field_1792 = 0
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        else:
                            if totalSupply > limitSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if limitSupply - totalSupply < userTokenStaked[address(msg.sender)].field_1792:
                                    revert with 0, 'Supply exceed'
                                else:
                                    if totalSupply + userTokenStaked[address(msg.sender)].field_1792 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        totalSupply += userTokenStaked[address(msg.sender)].field_1792
                                        if contractTokenBalance[address(msg.sender)] + userTokenStaked[address(msg.sender)].field_1792 < contractTokenBalance[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            contractTokenBalance[address(msg.sender)] += userTokenStaked[address(msg.sender)].field_1792
                                            emit Transfer(userTokenStaked[address(msg.sender)].field_1792, 0, msg.sender);
                                            emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                                                96,
                                                                userTokenStaked[address(msg.sender)].field_1792,
                                                                0,
                                                                5,
                                                                'CLAIM',
                                                                msg.sender,
}

function stakeToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp < stor10:
        revert with 0, 'Stake not available yet'
    else:
        if arg1 > contractTokenBalance[address(msg.sender)]:
            revert with 0, 'Insufficient Token Balance'
        else:
            if userTokenStaked[address(msg.sender)].field_1280:
                if stor10 <= block.timestamp:
                    require ext_code.size(stor22)
                    staticcall stor22.0xc5fa67b9 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if ext_call.return_data[31 len 1] != 1:
                            if ext_call.return_data[31 len 1] != 2:
                                if ext_call.return_data[31 len 1] != 3:
                                    if userTokenStaked[address(msg.sender)].field_1024 >= block.timestamp:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        else:
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            35,
                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                            mem[199 len 29]
                                            else:
                                                if arg1 > contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] -= arg1
                                                    if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        contractTokenBalance[address(this.address)] += arg1
                                                        emit Transfer(arg1, msg.sender, this.address);
                                                        userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                        if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                            if totalTokenStaked + arg1 < totalTokenStaked:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalTokenStaked += arg1
                                    else:
                                        if userTokenStaked[address(msg.sender)].field_1280:
                                            require userTokenStaked[address(msg.sender)].field_1280
                                            if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / userTokenStaked[address(msg.sender)].field_1280 != block.timestamp - userTokenStaked[address(msg.sender)].field_1024:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            else:
                                                if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280):
                                                    require (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280)
                                                    if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) / (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) != sub_832f3eb2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    else:
                                                        if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) / 24 * 3600 / 1000 <= 0:
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                            else:
                                                                if not this.address:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                                else:
                                                                    if arg1 > contractTokenBalance[address(msg.sender)]:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        contractTokenBalance[address(msg.sender)] -= arg1
                                                                        if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            contractTokenBalance[address(this.address)] += arg1
                                                                            emit Transfer(arg1, msg.sender, this.address);
                                                                            userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                                            if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                                if totalTokenStaked + arg1 < totalTokenStaked:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    totalTokenStaked += arg1
                                                        else:
                                                            if userTokenStaked[address(msg.sender)].field_1792 + ((block.timestamp * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) / 24 * 3600 / 1000) < userTokenStaked[address(msg.sender)].field_1792:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                userTokenStaked[address(msg.sender)].field_1792 += (block.timestamp * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280 * sub_832f3eb2) / 24 * 3600 / 1000
                                                                userTokenStaked[address(msg.sender)].field_1024 = block.timestamp
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                                else:
                                                                    if not this.address:
                                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                                    else:
                                                                        if arg1 > contractTokenBalance[address(msg.sender)]:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            contractTokenBalance[address(msg.sender)] -= arg1
                                                                            if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                contractTokenBalance[address(this.address)] += arg1
                                                                                emit Transfer(arg1, msg.sender, this.address);
                                                                                userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                                                if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                                    if totalTokenStaked + arg1 < totalTokenStaked:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        totalTokenStaked += arg1
                                                else:
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                    else:
                                                        if not this.address:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                        else:
                                                            if arg1 > contractTokenBalance[address(msg.sender)]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                contractTokenBalance[address(msg.sender)] -= arg1
                                                                if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    contractTokenBalance[address(this.address)] += arg1
                                                                    emit Transfer(arg1, msg.sender, this.address);
                                                                    userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                                    if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                        if totalTokenStaked + arg1 < totalTokenStaked:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            totalTokenStaked += arg1
                                        else:
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            else:
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                else:
                                                    if arg1 > contractTokenBalance[address(msg.sender)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        contractTokenBalance[address(msg.sender)] -= arg1
                                                        if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            contractTokenBalance[address(this.address)] += arg1
                                                            emit Transfer(arg1, msg.sender, this.address);
                                                            userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                            if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                if totalTokenStaked + arg1 < totalTokenStaked:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    totalTokenStaked += arg1
                                else:
                                    if userTokenStaked[address(msg.sender)].field_1024 >= block.timestamp:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        else:
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            35,
                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                            mem[199 len 29]
                                            else:
                                                if arg1 > contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] -= arg1
                                                    if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        contractTokenBalance[address(this.address)] += arg1
                                                        emit Transfer(arg1, msg.sender, this.address);
                                                        userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                        if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                            if totalTokenStaked + arg1 < totalTokenStaked:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalTokenStaked += arg1
                                    else:
                                        if userTokenStaked[address(msg.sender)].field_1280:
                                            require userTokenStaked[address(msg.sender)].field_1280
                                            if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / userTokenStaked[address(msg.sender)].field_1280 != block.timestamp - userTokenStaked[address(msg.sender)].field_1024:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            else:
                                                if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280):
                                                    require (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280)
                                                    if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor25 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor25 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) != sub_832f3eb2 + stor25:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    else:
                                                        if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor25 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor25 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000 <= 0:
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                            else:
                                                                if not this.address:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                                else:
                                                                    if arg1 > contractTokenBalance[address(msg.sender)]:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        contractTokenBalance[address(msg.sender)] -= arg1
                                                                        if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            contractTokenBalance[address(this.address)] += arg1
                                                                            emit Transfer(arg1, msg.sender, this.address);
                                                                            userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                                            if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                                if totalTokenStaked + arg1 < totalTokenStaked:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    totalTokenStaked += arg1
                                                        else:
                                                            if userTokenStaked[address(msg.sender)].field_1792 + ((sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor25 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor25 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000) < userTokenStaked[address(msg.sender)].field_1792:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                userTokenStaked[address(msg.sender)].field_1792 += (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor25 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor25 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000
                                                                userTokenStaked[address(msg.sender)].field_1024 = block.timestamp
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                                else:
                                                                    if not this.address:
                                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                                    else:
                                                                        if arg1 > contractTokenBalance[address(msg.sender)]:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            contractTokenBalance[address(msg.sender)] -= arg1
                                                                            if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                contractTokenBalance[address(this.address)] += arg1
                                                                                emit Transfer(arg1, msg.sender, this.address);
                                                                                userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                                                if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                                    if totalTokenStaked + arg1 < totalTokenStaked:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        totalTokenStaked += arg1
                                                else:
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                    else:
                                                        if not this.address:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                        else:
                                                            if arg1 > contractTokenBalance[address(msg.sender)]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                contractTokenBalance[address(msg.sender)] -= arg1
                                                                if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    contractTokenBalance[address(this.address)] += arg1
                                                                    emit Transfer(arg1, msg.sender, this.address);
                                                                    userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                                    if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                        if totalTokenStaked + arg1 < totalTokenStaked:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            totalTokenStaked += arg1
                                        else:
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            else:
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                else:
                                                    if arg1 > contractTokenBalance[address(msg.sender)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        contractTokenBalance[address(msg.sender)] -= arg1
                                                        if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            contractTokenBalance[address(this.address)] += arg1
                                                            emit Transfer(arg1, msg.sender, this.address);
                                                            userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                            if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                if totalTokenStaked + arg1 < totalTokenStaked:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    totalTokenStaked += arg1
                            else:
                                if userTokenStaked[address(msg.sender)].field_1024 >= block.timestamp:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    else:
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        35,
                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                        mem[199 len 29]
                                        else:
                                            if arg1 > contractTokenBalance[address(msg.sender)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                contractTokenBalance[address(msg.sender)] -= arg1
                                                if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    contractTokenBalance[address(this.address)] += arg1
                                                    emit Transfer(arg1, msg.sender, this.address);
                                                    userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                    if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                        if totalTokenStaked + arg1 < totalTokenStaked:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            totalTokenStaked += arg1
                                else:
                                    if userTokenStaked[address(msg.sender)].field_1280:
                                        require userTokenStaked[address(msg.sender)].field_1280
                                        if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / userTokenStaked[address(msg.sender)].field_1280 != block.timestamp - userTokenStaked[address(msg.sender)].field_1024:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        else:
                                            if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280):
                                                require (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280)
                                                if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor24 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor24 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) != sub_832f3eb2 + stor24:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                else:
                                                    if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor24 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor24 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000 <= 0:
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                        else:
                                                            if not this.address:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                            else:
                                                                if arg1 > contractTokenBalance[address(msg.sender)]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    contractTokenBalance[address(msg.sender)] -= arg1
                                                                    if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        contractTokenBalance[address(this.address)] += arg1
                                                                        emit Transfer(arg1, msg.sender, this.address);
                                                                        userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                                        if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                            if totalTokenStaked + arg1 < totalTokenStaked:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                totalTokenStaked += arg1
                                                    else:
                                                        if userTokenStaked[address(msg.sender)].field_1792 + ((sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor24 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor24 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000) < userTokenStaked[address(msg.sender)].field_1792:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            userTokenStaked[address(msg.sender)].field_1792 += (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor24 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor24 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000
                                                            userTokenStaked[address(msg.sender)].field_1024 = block.timestamp
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                            else:
                                                                if not this.address:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                                else:
                                                                    if arg1 > contractTokenBalance[address(msg.sender)]:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        contractTokenBalance[address(msg.sender)] -= arg1
                                                                        if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            contractTokenBalance[address(this.address)] += arg1
                                                                            emit Transfer(arg1, msg.sender, this.address);
                                                                            userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                                            if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                                if totalTokenStaked + arg1 < totalTokenStaked:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    totalTokenStaked += arg1
                                            else:
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                else:
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                    else:
                                                        if arg1 > contractTokenBalance[address(msg.sender)]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            contractTokenBalance[address(msg.sender)] -= arg1
                                                            if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                contractTokenBalance[address(this.address)] += arg1
                                                                emit Transfer(arg1, msg.sender, this.address);
                                                                userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                                if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                    if totalTokenStaked + arg1 < totalTokenStaked:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        totalTokenStaked += arg1
                                    else:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                        else:
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                            else:
                                                if arg1 > contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] -= arg1
                                                    if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        contractTokenBalance[address(this.address)] += arg1
                                                        emit Transfer(arg1, msg.sender, this.address);
                                                        userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                        if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                            if totalTokenStaked + arg1 < totalTokenStaked:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalTokenStaked += arg1
                        else:
                            if userTokenStaked[address(msg.sender)].field_1024 >= block.timestamp:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                else:
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    35,
                                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                    mem[199 len 29]
                                    else:
                                        if arg1 > contractTokenBalance[address(msg.sender)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            contractTokenBalance[address(msg.sender)] -= arg1
                                            if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                contractTokenBalance[address(this.address)] += arg1
                                                emit Transfer(arg1, msg.sender, this.address);
                                                userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                    if totalTokenStaked + arg1 < totalTokenStaked:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        totalTokenStaked += arg1
                            else:
                                if userTokenStaked[address(msg.sender)].field_1280:
                                    require userTokenStaked[address(msg.sender)].field_1280
                                    if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / userTokenStaked[address(msg.sender)].field_1280 != block.timestamp - userTokenStaked[address(msg.sender)].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    else:
                                        if (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280):
                                            require (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280)
                                            if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor23 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor23 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / (block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) != sub_832f3eb2 + stor23:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            else:
                                                if (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor23 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor23 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000 <= 0:
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                    else:
                                                        if not this.address:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                        else:
                                                            if arg1 > contractTokenBalance[address(msg.sender)]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                contractTokenBalance[address(msg.sender)] -= arg1
                                                                if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    contractTokenBalance[address(this.address)] += arg1
                                                                    emit Transfer(arg1, msg.sender, this.address);
                                                                    userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                                    if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                        if totalTokenStaked + arg1 < totalTokenStaked:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            totalTokenStaked += arg1
                                                else:
                                                    if userTokenStaked[address(msg.sender)].field_1792 + ((sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor23 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor23 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000) < userTokenStaked[address(msg.sender)].field_1792:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        userTokenStaked[address(msg.sender)].field_1792 += (sub_832f3eb2 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) + (stor23 * block.timestamp * userTokenStaked[address(msg.sender)].field_1280) - (sub_832f3eb2 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) - (stor23 * userTokenStaked[address(msg.sender)].field_1024 * userTokenStaked[address(msg.sender)].field_1280) / 24 * 3600 / 1000
                                                        userTokenStaked[address(msg.sender)].field_1024 = block.timestamp
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                        else:
                                                            if not this.address:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                            else:
                                                                if arg1 > contractTokenBalance[address(msg.sender)]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    contractTokenBalance[address(msg.sender)] -= arg1
                                                                    if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        contractTokenBalance[address(this.address)] += arg1
                                                                        emit Transfer(arg1, msg.sender, this.address);
                                                                        userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                                        if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                            if totalTokenStaked + arg1 < totalTokenStaked:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                totalTokenStaked += arg1
                                        else:
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            else:
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                else:
                                                    if arg1 > contractTokenBalance[address(msg.sender)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        contractTokenBalance[address(msg.sender)] -= arg1
                                                        if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            contractTokenBalance[address(this.address)] += arg1
                                                            emit Transfer(arg1, msg.sender, this.address);
                                                            userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                            if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                if totalTokenStaked + arg1 < totalTokenStaked:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    totalTokenStaked += arg1
                                else:
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    else:
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                        else:
                                            if arg1 > contractTokenBalance[address(msg.sender)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                contractTokenBalance[address(msg.sender)] -= arg1
                                                if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    contractTokenBalance[address(this.address)] += arg1
                                                    emit Transfer(arg1, msg.sender, this.address);
                                                    userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                    if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                        if totalTokenStaked + arg1 < totalTokenStaked:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            totalTokenStaked += arg1
                else:
                    require ext_code.size(stor22)
                    staticcall stor22.0xc5fa67b9 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if ext_call.return_data[31 len 1] != 1:
                            if ext_call.return_data[31 len 1] != 2:
                                if ext_call.return_data[31 len 1] != 3:
                                    if block.timestamp >= block.timestamp:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        else:
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            35,
                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                            mem[199 len 29]
                                            else:
                                                if arg1 > contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] -= arg1
                                                    if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        contractTokenBalance[address(this.address)] += arg1
                                                        emit Transfer(arg1, msg.sender, this.address);
                                                        userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                        if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                            if totalTokenStaked + arg1 < totalTokenStaked:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalTokenStaked += arg1
                                    else:
                                        if userTokenStaked[address(msg.sender)].field_1280:
                                            require userTokenStaked[address(msg.sender)].field_1280
                                            if 0 / userTokenStaked[address(msg.sender)].field_1280:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            else:
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                else:
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                    else:
                                                        if arg1 > contractTokenBalance[address(msg.sender)]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            contractTokenBalance[address(msg.sender)] -= arg1
                                                            if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                contractTokenBalance[address(this.address)] += arg1
                                                                emit Transfer(arg1, msg.sender, this.address);
                                                                userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                                if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                    if totalTokenStaked + arg1 < totalTokenStaked:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        totalTokenStaked += arg1
                                        else:
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            else:
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                else:
                                                    if arg1 > contractTokenBalance[address(msg.sender)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        contractTokenBalance[address(msg.sender)] -= arg1
                                                        if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            contractTokenBalance[address(this.address)] += arg1
                                                            emit Transfer(arg1, msg.sender, this.address);
                                                            userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                            if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                if totalTokenStaked + arg1 < totalTokenStaked:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    totalTokenStaked += arg1
                                else:
                                    if block.timestamp >= block.timestamp:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        else:
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            35,
                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                            mem[199 len 29]
                                            else:
                                                if arg1 > contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] -= arg1
                                                    if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        contractTokenBalance[address(this.address)] += arg1
                                                        emit Transfer(arg1, msg.sender, this.address);
                                                        userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                        if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                            if totalTokenStaked + arg1 < totalTokenStaked:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalTokenStaked += arg1
                                    else:
                                        if userTokenStaked[address(msg.sender)].field_1280:
                                            require userTokenStaked[address(msg.sender)].field_1280
                                            if 0 / userTokenStaked[address(msg.sender)].field_1280:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            else:
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                else:
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                    else:
                                                        if arg1 > contractTokenBalance[address(msg.sender)]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            contractTokenBalance[address(msg.sender)] -= arg1
                                                            if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                contractTokenBalance[address(this.address)] += arg1
                                                                emit Transfer(arg1, msg.sender, this.address);
                                                                userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                                if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                    if totalTokenStaked + arg1 < totalTokenStaked:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        totalTokenStaked += arg1
                                        else:
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            else:
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                else:
                                                    if arg1 > contractTokenBalance[address(msg.sender)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        contractTokenBalance[address(msg.sender)] -= arg1
                                                        if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            contractTokenBalance[address(this.address)] += arg1
                                                            emit Transfer(arg1, msg.sender, this.address);
                                                            userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                            if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                if totalTokenStaked + arg1 < totalTokenStaked:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    totalTokenStaked += arg1
                            else:
                                if block.timestamp >= block.timestamp:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    else:
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        35,
                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                        mem[199 len 29]
                                        else:
                                            if arg1 > contractTokenBalance[address(msg.sender)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                contractTokenBalance[address(msg.sender)] -= arg1
                                                if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    contractTokenBalance[address(this.address)] += arg1
                                                    emit Transfer(arg1, msg.sender, this.address);
                                                    userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                    if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                        if totalTokenStaked + arg1 < totalTokenStaked:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            totalTokenStaked += arg1
                                else:
                                    if userTokenStaked[address(msg.sender)].field_1280:
                                        require userTokenStaked[address(msg.sender)].field_1280
                                        if 0 / userTokenStaked[address(msg.sender)].field_1280:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        else:
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            else:
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                else:
                                                    if arg1 > contractTokenBalance[address(msg.sender)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        contractTokenBalance[address(msg.sender)] -= arg1
                                                        if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            contractTokenBalance[address(this.address)] += arg1
                                                            emit Transfer(arg1, msg.sender, this.address);
                                                            userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                            if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                                if totalTokenStaked + arg1 < totalTokenStaked:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    totalTokenStaked += arg1
                                    else:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                        else:
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                            else:
                                                if arg1 > contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] -= arg1
                                                    if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        contractTokenBalance[address(this.address)] += arg1
                                                        emit Transfer(arg1, msg.sender, this.address);
                                                        userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                        if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                            if totalTokenStaked + arg1 < totalTokenStaked:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalTokenStaked += arg1
                        else:
                            if block.timestamp >= block.timestamp:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                else:
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    35,
                                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                    mem[199 len 29]
                                    else:
                                        if arg1 > contractTokenBalance[address(msg.sender)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            contractTokenBalance[address(msg.sender)] -= arg1
                                            if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                contractTokenBalance[address(this.address)] += arg1
                                                emit Transfer(arg1, msg.sender, this.address);
                                                userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                    if totalTokenStaked + arg1 < totalTokenStaked:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        totalTokenStaked += arg1
                            else:
                                if userTokenStaked[address(msg.sender)].field_1280:
                                    require userTokenStaked[address(msg.sender)].field_1280
                                    if 0 / userTokenStaked[address(msg.sender)].field_1280:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    else:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                        else:
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                            else:
                                                if arg1 > contractTokenBalance[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    contractTokenBalance[address(msg.sender)] -= arg1
                                                    if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        contractTokenBalance[address(this.address)] += arg1
                                                        emit Transfer(arg1, msg.sender, this.address);
                                                        userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                        if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                            if totalTokenStaked + arg1 < totalTokenStaked:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalTokenStaked += arg1
                                else:
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    else:
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                        else:
                                            if arg1 > contractTokenBalance[address(msg.sender)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                contractTokenBalance[address(msg.sender)] -= arg1
                                                if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    contractTokenBalance[address(this.address)] += arg1
                                                    emit Transfer(arg1, msg.sender, this.address);
                                                    userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                                    if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        userTokenStaked[address(msg.sender)].field_1280 += arg1
                                                        if totalTokenStaked + arg1 < totalTokenStaked:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            totalTokenStaked += arg1
            else:
                userTokenStaked[address(msg.sender)].field_1024 = block.timestamp
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                else:
                    if not this.address:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    else:
                        if arg1 > contractTokenBalance[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            contractTokenBalance[address(msg.sender)] -= arg1
                            if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                contractTokenBalance[address(this.address)] += arg1
                                emit Transfer(arg1, msg.sender, this.address);
                                userTokenStaked[address(msg.sender)].field_1536 = block.timestamp
                                if userTokenStaked[address(msg.sender)].field_1280 + arg1 < userTokenStaked[address(msg.sender)].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    userTokenStaked[address(msg.sender)].field_1280 += arg1
                                    if totalTokenStaked + arg1 < totalTokenStaked:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        totalTokenStaked += arg1
}



}
