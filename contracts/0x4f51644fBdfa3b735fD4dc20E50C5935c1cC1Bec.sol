contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address sub_d2c36fb6Address;
address mimAddress;
uint256 sub_9192c4ff;
uint256 sub_5a4cde17;
uint256 sub_d22af06d;
mapping of struct sub_b010e915;
mapping of uint256 sub_ac2483d8;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function sub_5a4cde17(?) payable {
    return sub_5a4cde17
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_9192c4ff(?) payable {
    return sub_9192c4ff
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function mim() payable {
    return mimAddress
}

function sub_ac2483d8(?) payable {
    require calldata.size - 4 >= 32
    return sub_ac2483d8[arg1]
}

function sub_b010e915(?) payable {
    require calldata.size - 4 >= 32
    return sub_b010e915[arg1].field_0
}

function sub_d22af06d(?) payable {
    return sub_d22af06d
}

function sub_d2c36fb6(?) payable {
    return sub_d2c36fb6Address
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_51e7b9c9(?) payable {
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_1a8baabd(?) payable {
    require ext_code.size(sub_d2c36fb6Address)
    staticcall sub_d2c36fb6Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
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
                    0x7745524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_d22af06d > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - sub_d22af06d:
        if not msg.sender:
            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
        if not arg1:
            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[230 len 26],
                        mem[282 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
        if not sub_9192c4ff:
            if sub_b010e915[address(msg.sender)].field_0 < sub_b010e915[address(msg.sender)].field_0:
                revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[357 len 31]
        else:
            if arg2 * sub_9192c4ff / sub_9192c4ff != arg2:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
            require arg2 * sub_9192c4ff >= 0
            if (arg2 * sub_9192c4ff) + sub_b010e915[address(msg.sender)].field_0 < sub_b010e915[address(msg.sender)].field_0:
                if arg2 * sub_9192c4ff >= 0:
                    revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[357 len 31]
                if (arg2 * sub_9192c4ff) + sub_b010e915[address(msg.sender)].field_0 >= sub_b010e915[address(msg.sender)].field_0:
                    revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[357 len 31]
            sub_b010e915[address(msg.sender)].field_0 += arg2 * sub_9192c4ff
        if not sub_9192c4ff:
            if sub_b010e915[address(arg1)].field_0 > sub_b010e915[address(arg1)].field_0:
                revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[360 len 28]
        else:
            if arg2 * sub_9192c4ff / sub_9192c4ff != arg2:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
            require arg2 * sub_9192c4ff >= 0
            if sub_b010e915[address(arg1)].field_0 - (arg2 * sub_9192c4ff) > sub_b010e915[address(arg1)].field_0:
                if arg2 * sub_9192c4ff >= 0:
                    revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[360 len 28]
                if sub_b010e915[address(arg1)].field_0 - (arg2 * sub_9192c4ff) <= sub_b010e915[address(arg1)].field_0:
                    revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[360 len 28]
            sub_b010e915[address(arg1)].field_0 += -1 * arg2 * sub_9192c4ff
    else:
        if not ext_call.return_data[0] - sub_d22af06d:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupply) + sub_9192c4ff < sub_9192c4ff:
                revert with 0, 'SafeMath: addition overflow'
            sub_9192c4ff += 0 / totalSupply
        else:
            if ext_call.return_data[0] - sub_d22af06d << 64 / ext_call.return_data[0] - sub_d22af06d != 18446744073709551616:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if (ext_call.return_data[0] - sub_d22af06d << 64 / totalSupply) + sub_9192c4ff < sub_9192c4ff:
                revert with 0, 'SafeMath: addition overflow'
            sub_9192c4ff += ext_call.return_data[0] - sub_d22af06d << 64 / totalSupply
        if not msg.sender:
            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
        if not arg1:
            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[294 len 26],
                        mem[346 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
        if not sub_9192c4ff:
            if sub_b010e915[address(msg.sender)].field_0 < sub_b010e915[address(msg.sender)].field_0:
                revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[421 len 31]
        else:
            if arg2 * sub_9192c4ff / sub_9192c4ff != arg2:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
            require arg2 * sub_9192c4ff >= 0
            if (arg2 * sub_9192c4ff) + sub_b010e915[address(msg.sender)].field_0 < sub_b010e915[address(msg.sender)].field_0:
                if arg2 * sub_9192c4ff >= 0:
                    revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[421 len 31]
                if (arg2 * sub_9192c4ff) + sub_b010e915[address(msg.sender)].field_0 >= sub_b010e915[address(msg.sender)].field_0:
                    revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[421 len 31]
            sub_b010e915[address(msg.sender)].field_0 += arg2 * sub_9192c4ff
        if not sub_9192c4ff:
            if sub_b010e915[address(arg1)].field_0 > sub_b010e915[address(arg1)].field_0:
                revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[424 len 28]
        else:
            if arg2 * sub_9192c4ff / sub_9192c4ff != arg2:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
            require arg2 * sub_9192c4ff >= 0
            if sub_b010e915[address(arg1)].field_0 - (arg2 * sub_9192c4ff) > sub_b010e915[address(arg1)].field_0:
                if arg2 * sub_9192c4ff >= 0:
                    revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[424 len 28]
                if sub_b010e915[address(arg1)].field_0 - (arg2 * sub_9192c4ff) <= sub_b010e915[address(arg1)].field_0:
                    revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[424 len 28]
            sub_b010e915[address(arg1)].field_0 += -1 * arg2 * sub_9192c4ff
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_d22af06d > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - sub_d22af06d:
        if not arg1:
            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
        if not arg2:
            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[230 len 26],
                        mem[282 len 6]
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        if not sub_9192c4ff:
            if sub_b010e915[address(arg1)].field_0 < sub_b010e915[address(arg1)].field_0:
                revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[357 len 31]
        else:
            if arg3 * sub_9192c4ff / sub_9192c4ff != arg3:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
            require arg3 * sub_9192c4ff >= 0
            if (arg3 * sub_9192c4ff) + sub_b010e915[address(arg1)].field_0 < sub_b010e915[address(arg1)].field_0:
                if arg3 * sub_9192c4ff >= 0:
                    revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[357 len 31]
                if (arg3 * sub_9192c4ff) + sub_b010e915[address(arg1)].field_0 >= sub_b010e915[address(arg1)].field_0:
                    revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[357 len 31]
            sub_b010e915[address(arg1)].field_0 += arg3 * sub_9192c4ff
        if not sub_9192c4ff:
            if sub_b010e915[address(arg2)].field_0 > sub_b010e915[address(arg2)].field_0:
                revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[360 len 28]
        else:
            if arg3 * sub_9192c4ff / sub_9192c4ff != arg3:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
            require arg3 * sub_9192c4ff >= 0
            if sub_b010e915[address(arg2)].field_0 - (arg3 * sub_9192c4ff) > sub_b010e915[address(arg2)].field_0:
                if arg3 * sub_9192c4ff >= 0:
                    revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[360 len 28]
                if sub_b010e915[address(arg2)].field_0 - (arg3 * sub_9192c4ff) <= sub_b010e915[address(arg2)].field_0:
                    revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[360 len 28]
            sub_b010e915[address(arg2)].field_0 += -1 * arg3 * sub_9192c4ff
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[328 len 24],
                        mem[376 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
    else:
        if not ext_call.return_data[0] - sub_d22af06d:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupply) + sub_9192c4ff < sub_9192c4ff:
                revert with 0, 'SafeMath: addition overflow'
            sub_9192c4ff += 0 / totalSupply
        else:
            if ext_call.return_data[0] - sub_d22af06d << 64 / ext_call.return_data[0] - sub_d22af06d != 18446744073709551616:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if (ext_call.return_data[0] - sub_d22af06d << 64 / totalSupply) + sub_9192c4ff < sub_9192c4ff:
                revert with 0, 'SafeMath: addition overflow'
            sub_9192c4ff += ext_call.return_data[0] - sub_d22af06d << 64 / totalSupply
        if not arg1:
            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
        if not arg2:
            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[294 len 26],
                        mem[346 len 6]
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        if not sub_9192c4ff:
            if sub_b010e915[address(arg1)].field_0 < sub_b010e915[address(arg1)].field_0:
                revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[421 len 31]
        else:
            if arg3 * sub_9192c4ff / sub_9192c4ff != arg3:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
            require arg3 * sub_9192c4ff >= 0
            if (arg3 * sub_9192c4ff) + sub_b010e915[address(arg1)].field_0 < sub_b010e915[address(arg1)].field_0:
                if arg3 * sub_9192c4ff >= 0:
                    revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[421 len 31]
                if (arg3 * sub_9192c4ff) + sub_b010e915[address(arg1)].field_0 >= sub_b010e915[address(arg1)].field_0:
                    revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[421 len 31]
            sub_b010e915[address(arg1)].field_0 += arg3 * sub_9192c4ff
        if not sub_9192c4ff:
            if sub_b010e915[address(arg2)].field_0 > sub_b010e915[address(arg2)].field_0:
                revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[424 len 28]
        else:
            if arg3 * sub_9192c4ff / sub_9192c4ff != arg3:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
            require arg3 * sub_9192c4ff >= 0
            if sub_b010e915[address(arg2)].field_0 - (arg3 * sub_9192c4ff) > sub_b010e915[address(arg2)].field_0:
                if arg3 * sub_9192c4ff >= 0:
                    revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[424 len 28]
                if sub_b010e915[address(arg2)].field_0 - (arg3 * sub_9192c4ff) <= sub_b010e915[address(arg2)].field_0:
                    revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[424 len 28]
            sub_b010e915[address(arg2)].field_0 += -1 * arg3 * sub_9192c4ff
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[392 len 24],
                        mem[440 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_7252028f(?) payable {
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_d22af06d > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - sub_d22af06d:
        if not sub_9192c4ff:
            require sub_b010e915[address(msg.sender)].field_0 >= 0
            if sub_ac2483d8[address(msg.sender)] > sub_b010e915[address(msg.sender)].field_64:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            sub_ac2483d8[msg.sender] = sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
            require ext_code.size(mimAddress)
            call mimAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(mimAddress)
            staticcall mimAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_d22af06d = ext_call.return_data[0]
            emit 0x9f30d2bc: (sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]), msg.sender
        else:
            if balanceOf[address(msg.sender)] * sub_9192c4ff / sub_9192c4ff != balanceOf[address(msg.sender)]:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require balanceOf[address(msg.sender)] * sub_9192c4ff >= 0
            if sub_b010e915[address(msg.sender)].field_0 < 0:
                if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                    revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[261 len 31]
            else:
                if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) < balanceOf[address(msg.sender)] * sub_9192c4ff:
                    if sub_b010e915[address(msg.sender)].field_0 >= 0:
                        revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[261 len 31]
                    if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                        revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[261 len 31]
            require sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= 0
            if sub_ac2483d8[address(msg.sender)] > Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64:
                revert with 0, 'SafeMath: subtraction overflow'
            if (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            sub_ac2483d8[msg.sender] = (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
            require ext_code.size(mimAddress)
            call mimAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(mimAddress)
            staticcall mimAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_d22af06d = ext_call.return_data[0]
            emit 0x9f30d2bc: ((Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]), msg.sender
    else:
        if not ext_call.return_data[0] - sub_d22af06d:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupply) + sub_9192c4ff < sub_9192c4ff:
                revert with 0, 'SafeMath: addition overflow'
            sub_9192c4ff += 0 / totalSupply
        else:
            if ext_call.return_data[0] - sub_d22af06d << 64 / ext_call.return_data[0] - sub_d22af06d != 18446744073709551616:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if (ext_call.return_data[0] - sub_d22af06d << 64 / totalSupply) + sub_9192c4ff < sub_9192c4ff:
                revert with 0, 'SafeMath: addition overflow'
            sub_9192c4ff += ext_call.return_data[0] - sub_d22af06d << 64 / totalSupply
        if not sub_9192c4ff:
            require sub_b010e915[address(msg.sender)].field_0 >= 0
            if sub_ac2483d8[address(msg.sender)] > sub_b010e915[address(msg.sender)].field_64:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            sub_ac2483d8[msg.sender] = sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
            require ext_code.size(mimAddress)
            call mimAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(mimAddress)
            staticcall mimAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_d22af06d = ext_call.return_data[0]
            emit 0x9f30d2bc: (sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]), msg.sender
        else:
            if balanceOf[address(msg.sender)] * sub_9192c4ff / sub_9192c4ff != balanceOf[address(msg.sender)]:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require balanceOf[address(msg.sender)] * sub_9192c4ff >= 0
            if sub_b010e915[address(msg.sender)].field_0 < 0:
                if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                    revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
            else:
                if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) < balanceOf[address(msg.sender)] * sub_9192c4ff:
                    if sub_b010e915[address(msg.sender)].field_0 >= 0:
                        revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
                    if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                        revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
            require sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= 0
            if sub_ac2483d8[address(msg.sender)] > Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64:
                revert with 0, 'SafeMath: subtraction overflow'
            if (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            sub_ac2483d8[msg.sender] = (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
            require ext_code.size(mimAddress)
            call mimAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(mimAddress)
            staticcall mimAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_d22af06d = ext_call.return_data[0]
            emit 0x9f30d2bc: ((Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]), msg.sender
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65416d6f756e74206578636565647320796f75722073686172652062616c616e63,
                    mem[197 len 31]
    require ext_code.size(sub_d2c36fb6Address)
    staticcall sub_d2c36fb6Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_d2c36fb6Address)
        call sub_d2c36fb6Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0 / totalSupply
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_d2c36fb6Address)
        call sub_d2c36fb6Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] * arg1 / totalSupply
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Unstake required'
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_d22af06d > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - sub_d22af06d:
        if not sub_9192c4ff:
            require sub_b010e915[address(msg.sender)].field_0 >= 0
            if sub_ac2483d8[address(msg.sender)] > sub_b010e915[address(msg.sender)].field_64:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            sub_ac2483d8[msg.sender] = sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
            require ext_code.size(mimAddress)
            call mimAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(mimAddress)
            staticcall mimAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_d22af06d = ext_call.return_data[0]
            emit 0x9f30d2bc: (sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]), msg.sender
            if not msg.sender:
                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            34,
                            0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                            uint16(sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]),
                            mem[420 len 28],
                            mem[478 len 2]
        else:
            if balanceOf[address(msg.sender)] * sub_9192c4ff / sub_9192c4ff != balanceOf[address(msg.sender)]:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require balanceOf[address(msg.sender)] * sub_9192c4ff >= 0
            if sub_b010e915[address(msg.sender)].field_0 < 0:
                if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                    revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
            else:
                if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) < balanceOf[address(msg.sender)] * sub_9192c4ff:
                    if sub_b010e915[address(msg.sender)].field_0 >= 0:
                        revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
                    if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                        revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
            require sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= 0
            if sub_ac2483d8[address(msg.sender)] > Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64:
                revert with 0, 'SafeMath: subtraction overflow'
            if (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            sub_ac2483d8[msg.sender] = (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
            require ext_code.size(mimAddress)
            call mimAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(mimAddress)
            staticcall mimAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_d22af06d = ext_call.return_data[0]
            emit 0x9f30d2bc: ((Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]), msg.sender
            if not msg.sender:
                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            34,
                            0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                            uint16((Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]),
                            mem[420 len 28],
                            mem[478 len 2]
        ('le', ('param', 'arg1'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        if not sub_9192c4ff:
            if sub_b010e915[address(msg.sender)].field_0 < sub_b010e915[address(msg.sender)].field_0:
                revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[613 len 31]
        else:
            if arg1 * sub_9192c4ff / sub_9192c4ff != arg1:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
            require arg1 * sub_9192c4ff >= 0
            if (arg1 * sub_9192c4ff) + sub_b010e915[address(msg.sender)].field_0 < sub_b010e915[address(msg.sender)].field_0:
                if arg1 * sub_9192c4ff >= 0:
                    revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[613 len 31]
                if (arg1 * sub_9192c4ff) + sub_b010e915[address(msg.sender)].field_0 >= sub_b010e915[address(msg.sender)].field_0:
                    revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[613 len 31]
            sub_b010e915[address(msg.sender)].field_0 += arg1 * sub_9192c4ff
    else:
        if not ext_call.return_data[0] - sub_d22af06d:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupply) + sub_9192c4ff < sub_9192c4ff:
                revert with 0, 'SafeMath: addition overflow'
            sub_9192c4ff += 0 / totalSupply
        else:
            if ext_call.return_data[0] - sub_d22af06d << 64 / ext_call.return_data[0] - sub_d22af06d != 18446744073709551616:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if (ext_call.return_data[0] - sub_d22af06d << 64 / totalSupply) + sub_9192c4ff < sub_9192c4ff:
                revert with 0, 'SafeMath: addition overflow'
            sub_9192c4ff += ext_call.return_data[0] - sub_d22af06d << 64 / totalSupply
        if not sub_9192c4ff:
            require sub_b010e915[address(msg.sender)].field_0 >= 0
            if sub_ac2483d8[address(msg.sender)] > sub_b010e915[address(msg.sender)].field_64:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            sub_ac2483d8[msg.sender] = sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
            require ext_code.size(mimAddress)
            call mimAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(mimAddress)
            staticcall mimAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_d22af06d = ext_call.return_data[0]
            emit 0x9f30d2bc: (sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]), msg.sender
            if not msg.sender:
                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[517 len 31]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            34,
                            0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                            uint16(sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]),
                            mem[484 len 28],
                            mem[542 len 2]
        else:
            if balanceOf[address(msg.sender)] * sub_9192c4ff / sub_9192c4ff != balanceOf[address(msg.sender)]:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            require balanceOf[address(msg.sender)] * sub_9192c4ff >= 0
            if sub_b010e915[address(msg.sender)].field_0 < 0:
                if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                    revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[389 len 31]
            else:
                if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) < balanceOf[address(msg.sender)] * sub_9192c4ff:
                    if sub_b010e915[address(msg.sender)].field_0 >= 0:
                        revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[389 len 31]
                    if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                        revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[389 len 31]
            require sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= 0
            if sub_ac2483d8[address(msg.sender)] > Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64:
                revert with 0, 'SafeMath: subtraction overflow'
            if (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            sub_ac2483d8[msg.sender] = (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
            require ext_code.size(mimAddress)
            call mimAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(mimAddress)
            staticcall mimAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_d22af06d = ext_call.return_data[0]
            emit 0x9f30d2bc: ((Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]), msg.sender
            if not msg.sender:
                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[517 len 31]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            34,
                            0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                            uint16((Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]),
                            mem[484 len 28],
                            mem[542 len 2]
        ('le', ('param', 'arg1'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        if not sub_9192c4ff:
            if sub_b010e915[address(msg.sender)].field_0 < sub_b010e915[address(msg.sender)].field_0:
                revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[677 len 31]
        else:
            if arg1 * sub_9192c4ff / sub_9192c4ff != arg1:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[677 len 31]
            require arg1 * sub_9192c4ff >= 0
            if (arg1 * sub_9192c4ff) + sub_b010e915[address(msg.sender)].field_0 < sub_b010e915[address(msg.sender)].field_0:
                if arg1 * sub_9192c4ff >= 0:
                    revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[677 len 31]
                if (arg1 * sub_9192c4ff) + sub_b010e915[address(msg.sender)].field_0 >= sub_b010e915[address(msg.sender)].field_0:
                    revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[677 len 31]
            sub_b010e915[address(msg.sender)].field_0 += arg1 * sub_9192c4ff
    require ext_code.size(sub_d2c36fb6Address)
    staticcall sub_d2c36fb6Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_5a4cde17 = ext_call.return_data[0]
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_d22af06d = ext_call.return_data[0]
    emit Unstaked(arg1, totalSupply, msg.sender);
    emit BalanceSnapshot(sub_5a4cde17, sub_d22af06d);
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_d2c36fb6Address)
    staticcall sub_d2c36fb6Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73416d6f756e74206578636565647320796f757220777356414c2062616c616e63,
                    mem[197 len 31]
    require ext_code.size(sub_d2c36fb6Address)
    if not totalSupply:
        call sub_d2c36fb6Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Stake required'
        require ext_code.size(mimAddress)
        staticcall mimAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_d22af06d > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0] - sub_d22af06d:
            if not sub_9192c4ff:
                require sub_b010e915[address(msg.sender)].field_0 >= 0
                if sub_ac2483d8[address(msg.sender)] > sub_b010e915[address(msg.sender)].field_64:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ac2483d8[msg.sender] = sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
                require ext_code.size(mimAddress)
                call mimAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(mimAddress)
                staticcall mimAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_d22af06d = ext_call.return_data[0]
                emit 0x9f30d2bc: (sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]), msg.sender
            else:
                if balanceOf[address(msg.sender)] * sub_9192c4ff / sub_9192c4ff != balanceOf[address(msg.sender)]:
                    revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require balanceOf[address(msg.sender)] * sub_9192c4ff >= 0
                if sub_b010e915[address(msg.sender)].field_0 < 0:
                    if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                        revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[261 len 31]
                else:
                    if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) < balanceOf[address(msg.sender)] * sub_9192c4ff:
                        if sub_b010e915[address(msg.sender)].field_0 >= 0:
                            revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[261 len 31]
                        if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                            revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[261 len 31]
                require sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= 0
                if sub_ac2483d8[address(msg.sender)] > Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ac2483d8[msg.sender] = (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
                require ext_code.size(mimAddress)
                call mimAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(mimAddress)
                staticcall mimAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_d22af06d = ext_call.return_data[0]
                emit 0x9f30d2bc: ((Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]), msg.sender
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if arg1 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += arg1
            emit Transfer(arg1, 0, msg.sender);
            if not sub_9192c4ff:
                if sub_b010e915[address(msg.sender)].field_0 > sub_b010e915[address(msg.sender)].field_0:
                    revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[392 len 28]
            else:
                if arg1 * sub_9192c4ff / sub_9192c4ff != arg1:
                    revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                require arg1 * sub_9192c4ff >= 0
                if sub_b010e915[address(msg.sender)].field_0 - (arg1 * sub_9192c4ff) > sub_b010e915[address(msg.sender)].field_0:
                    if arg1 * sub_9192c4ff >= 0:
                        revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[392 len 28]
                    if sub_b010e915[address(msg.sender)].field_0 - (arg1 * sub_9192c4ff) <= sub_b010e915[address(msg.sender)].field_0:
                        revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[392 len 28]
                sub_b010e915[address(msg.sender)].field_0 += -1 * arg1 * sub_9192c4ff
        else:
            if not ext_call.return_data[0] - sub_d22af06d:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalSupply) + sub_9192c4ff < sub_9192c4ff:
                    revert with 0, 'SafeMath: addition overflow'
                sub_9192c4ff += 0 / totalSupply
            else:
                if ext_call.return_data[0] - sub_d22af06d << 64 / ext_call.return_data[0] - sub_d22af06d != 18446744073709551616:
                    revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (ext_call.return_data[0] - sub_d22af06d << 64 / totalSupply) + sub_9192c4ff < sub_9192c4ff:
                    revert with 0, 'SafeMath: addition overflow'
                sub_9192c4ff += ext_call.return_data[0] - sub_d22af06d << 64 / totalSupply
            if not sub_9192c4ff:
                require sub_b010e915[address(msg.sender)].field_0 >= 0
                if sub_ac2483d8[address(msg.sender)] > sub_b010e915[address(msg.sender)].field_64:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ac2483d8[msg.sender] = sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
                require ext_code.size(mimAddress)
                call mimAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(mimAddress)
                staticcall mimAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_d22af06d = ext_call.return_data[0]
                emit 0x9f30d2bc: (sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]), msg.sender
            else:
                if balanceOf[address(msg.sender)] * sub_9192c4ff / sub_9192c4ff != balanceOf[address(msg.sender)]:
                    revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require balanceOf[address(msg.sender)] * sub_9192c4ff >= 0
                if sub_b010e915[address(msg.sender)].field_0 < 0:
                    if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                        revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
                else:
                    if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) < balanceOf[address(msg.sender)] * sub_9192c4ff:
                        if sub_b010e915[address(msg.sender)].field_0 >= 0:
                            revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
                        if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                            revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
                require sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= 0
                if sub_ac2483d8[address(msg.sender)] > Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ac2483d8[msg.sender] = (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
                require ext_code.size(mimAddress)
                call mimAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(mimAddress)
                staticcall mimAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_d22af06d = ext_call.return_data[0]
                emit 0x9f30d2bc: ((Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]), msg.sender
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if arg1 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += arg1
            emit Transfer(arg1, 0, msg.sender);
            if not sub_9192c4ff:
                if sub_b010e915[address(msg.sender)].field_0 > sub_b010e915[address(msg.sender)].field_0:
                    revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[456 len 28]
            else:
                if arg1 * sub_9192c4ff / sub_9192c4ff != arg1:
                    revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                require arg1 * sub_9192c4ff >= 0
                if sub_b010e915[address(msg.sender)].field_0 - (arg1 * sub_9192c4ff) > sub_b010e915[address(msg.sender)].field_0:
                    if arg1 * sub_9192c4ff >= 0:
                        revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[456 len 28]
                    if sub_b010e915[address(msg.sender)].field_0 - (arg1 * sub_9192c4ff) <= sub_b010e915[address(msg.sender)].field_0:
                        revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[456 len 28]
                sub_b010e915[address(msg.sender)].field_0 += -1 * arg1 * sub_9192c4ff
    else:
        staticcall sub_d2c36fb6Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_d2c36fb6Address)
            call sub_d2c36fb6Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Stake required'
            require ext_code.size(mimAddress)
            staticcall mimAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_d22af06d > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0] - sub_d22af06d:
                if not sub_9192c4ff:
                    require sub_b010e915[address(msg.sender)].field_0 >= 0
                    if sub_ac2483d8[address(msg.sender)] > sub_b010e915[address(msg.sender)].field_64:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ac2483d8[msg.sender] = sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
                    require ext_code.size(mimAddress)
                    call mimAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(mimAddress)
                    staticcall mimAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_d22af06d = ext_call.return_data[0]
                    emit 0x9f30d2bc: (sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]), msg.sender
                else:
                    if balanceOf[address(msg.sender)] * sub_9192c4ff / sub_9192c4ff != balanceOf[address(msg.sender)]:
                        revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    require balanceOf[address(msg.sender)] * sub_9192c4ff >= 0
                    if sub_b010e915[address(msg.sender)].field_0 < 0:
                        if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                            revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
                    else:
                        if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) < balanceOf[address(msg.sender)] * sub_9192c4ff:
                            if sub_b010e915[address(msg.sender)].field_0 >= 0:
                                revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
                            if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                                revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
                    require sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= 0
                    if sub_ac2483d8[address(msg.sender)] > Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ac2483d8[msg.sender] = (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
                    require ext_code.size(mimAddress)
                    call mimAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(mimAddress)
                    staticcall mimAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_d22af06d = ext_call.return_data[0]
                    emit 0x9f30d2bc: ((Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]), msg.sender
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
                if not sub_9192c4ff:
                    if sub_b010e915[address(msg.sender)].field_0 > sub_b010e915[address(msg.sender)].field_0:
                        revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[456 len 28]
                else:
                    if 0 / ext_call.return_data[0] * sub_9192c4ff / sub_9192c4ff != 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    require 0 / ext_call.return_data[0] * sub_9192c4ff >= 0
                    if sub_b010e915[address(msg.sender)].field_0 - (0 / ext_call.return_data[0] * sub_9192c4ff) > sub_b010e915[address(msg.sender)].field_0:
                        if 0 / ext_call.return_data[0] * sub_9192c4ff >= 0:
                            revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[456 len 28]
                        if sub_b010e915[address(msg.sender)].field_0 - (0 / ext_call.return_data[0] * sub_9192c4ff) <= sub_b010e915[address(msg.sender)].field_0:
                            revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[456 len 28]
                    sub_b010e915[address(msg.sender)].field_0 += -1 * 0 / ext_call.return_data[0] * sub_9192c4ff
            else:
                if not ext_call.return_data[0] - sub_d22af06d:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalSupply) + sub_9192c4ff < sub_9192c4ff:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_9192c4ff += 0 / totalSupply
                else:
                    if ext_call.return_data[0] - sub_d22af06d << 64 / ext_call.return_data[0] - sub_d22af06d != 18446744073709551616:
                        revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] - sub_d22af06d << 64 / totalSupply) + sub_9192c4ff < sub_9192c4ff:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_9192c4ff += ext_call.return_data[0] - sub_d22af06d << 64 / totalSupply
                if not sub_9192c4ff:
                    require sub_b010e915[address(msg.sender)].field_0 >= 0
                    if sub_ac2483d8[address(msg.sender)] > sub_b010e915[address(msg.sender)].field_64:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ac2483d8[msg.sender] = sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
                    require ext_code.size(mimAddress)
                    call mimAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(mimAddress)
                    staticcall mimAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_d22af06d = ext_call.return_data[0]
                    emit 0x9f30d2bc: (sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]), msg.sender
                else:
                    if balanceOf[address(msg.sender)] * sub_9192c4ff / sub_9192c4ff != balanceOf[address(msg.sender)]:
                        revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require balanceOf[address(msg.sender)] * sub_9192c4ff >= 0
                    if sub_b010e915[address(msg.sender)].field_0 < 0:
                        if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                            revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[389 len 31]
                    else:
                        if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) < balanceOf[address(msg.sender)] * sub_9192c4ff:
                            if sub_b010e915[address(msg.sender)].field_0 >= 0:
                                revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[389 len 31]
                            if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                                revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[389 len 31]
                    require sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= 0
                    if sub_ac2483d8[address(msg.sender)] > Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ac2483d8[msg.sender] = (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
                    require ext_code.size(mimAddress)
                    call mimAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(mimAddress)
                    staticcall mimAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_d22af06d = ext_call.return_data[0]
                    emit 0x9f30d2bc: ((Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]), msg.sender
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
                if not sub_9192c4ff:
                    if sub_b010e915[address(msg.sender)].field_0 > sub_b010e915[address(msg.sender)].field_0:
                        revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[520 len 28]
                else:
                    if 0 / ext_call.return_data[0] * sub_9192c4ff / sub_9192c4ff != 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    require 0 / ext_call.return_data[0] * sub_9192c4ff >= 0
                    if sub_b010e915[address(msg.sender)].field_0 - (0 / ext_call.return_data[0] * sub_9192c4ff) > sub_b010e915[address(msg.sender)].field_0:
                        if 0 / ext_call.return_data[0] * sub_9192c4ff >= 0:
                            revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[520 len 28]
                        if sub_b010e915[address(msg.sender)].field_0 - (0 / ext_call.return_data[0] * sub_9192c4ff) <= sub_b010e915[address(msg.sender)].field_0:
                            revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[520 len 28]
                    sub_b010e915[address(msg.sender)].field_0 += -1 * 0 / ext_call.return_data[0] * sub_9192c4ff
        else:
            if totalSupply * arg1 / arg1 != totalSupply:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_d2c36fb6Address)
            call sub_d2c36fb6Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Stake required'
            require ext_code.size(mimAddress)
            staticcall mimAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_d22af06d > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0] - sub_d22af06d:
                if not sub_9192c4ff:
                    require sub_b010e915[address(msg.sender)].field_0 >= 0
                    if sub_ac2483d8[address(msg.sender)] > sub_b010e915[address(msg.sender)].field_64:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ac2483d8[msg.sender] = sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
                    require ext_code.size(mimAddress)
                    call mimAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(mimAddress)
                    staticcall mimAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_d22af06d = ext_call.return_data[0]
                    emit 0x9f30d2bc: (sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]), msg.sender
                else:
                    if balanceOf[address(msg.sender)] * sub_9192c4ff / sub_9192c4ff != balanceOf[address(msg.sender)]:
                        revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    require balanceOf[address(msg.sender)] * sub_9192c4ff >= 0
                    if sub_b010e915[address(msg.sender)].field_0 < 0:
                        if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                            revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
                    else:
                        if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) < balanceOf[address(msg.sender)] * sub_9192c4ff:
                            if sub_b010e915[address(msg.sender)].field_0 >= 0:
                                revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
                            if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                                revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
                    require sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= 0
                    if sub_ac2483d8[address(msg.sender)] > Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ac2483d8[msg.sender] = (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
                    require ext_code.size(mimAddress)
                    call mimAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(mimAddress)
                    staticcall mimAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_d22af06d = ext_call.return_data[0]
                    emit 0x9f30d2bc: ((Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]), msg.sender
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (totalSupply * arg1 / ext_call.return_data[0]) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg1 / ext_call.return_data[0]
                if (totalSupply * arg1 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0]
                emit Transfer((totalSupply * arg1 / ext_call.return_data[0]), 0, msg.sender);
                if not sub_9192c4ff:
                    if sub_b010e915[address(msg.sender)].field_0 > sub_b010e915[address(msg.sender)].field_0:
                        revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[456 len 28]
                else:
                    if totalSupply * arg1 / ext_call.return_data[0] * sub_9192c4ff / sub_9192c4ff != totalSupply * arg1 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    require totalSupply * arg1 / ext_call.return_data[0] * sub_9192c4ff >= 0
                    if sub_b010e915[address(msg.sender)].field_0 - (totalSupply * arg1 / ext_call.return_data[0] * sub_9192c4ff) > sub_b010e915[address(msg.sender)].field_0:
                        if totalSupply * arg1 / ext_call.return_data[0] * sub_9192c4ff >= 0:
                            revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[456 len 28]
                        if sub_b010e915[address(msg.sender)].field_0 - (totalSupply * arg1 / ext_call.return_data[0] * sub_9192c4ff) <= sub_b010e915[address(msg.sender)].field_0:
                            revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[456 len 28]
                    sub_b010e915[address(msg.sender)].field_0 += -1 * totalSupply * arg1 / ext_call.return_data[0] * sub_9192c4ff
            else:
                if not ext_call.return_data[0] - sub_d22af06d:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalSupply) + sub_9192c4ff < sub_9192c4ff:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_9192c4ff += 0 / totalSupply
                else:
                    if ext_call.return_data[0] - sub_d22af06d << 64 / ext_call.return_data[0] - sub_d22af06d != 18446744073709551616:
                        revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] - sub_d22af06d << 64 / totalSupply) + sub_9192c4ff < sub_9192c4ff:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_9192c4ff += ext_call.return_data[0] - sub_d22af06d << 64 / totalSupply
                if not sub_9192c4ff:
                    require sub_b010e915[address(msg.sender)].field_0 >= 0
                    if sub_ac2483d8[address(msg.sender)] > sub_b010e915[address(msg.sender)].field_64:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ac2483d8[msg.sender] = sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
                    require ext_code.size(mimAddress)
                    call mimAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(mimAddress)
                    staticcall mimAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_d22af06d = ext_call.return_data[0]
                    emit 0x9f30d2bc: (sub_b010e915[address(msg.sender)].field_64 - sub_ac2483d8[address(msg.sender)]), msg.sender
                else:
                    if balanceOf[address(msg.sender)] * sub_9192c4ff / sub_9192c4ff != balanceOf[address(msg.sender)]:
                        revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require balanceOf[address(msg.sender)] * sub_9192c4ff >= 0
                    if sub_b010e915[address(msg.sender)].field_0 < 0:
                        if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                            revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[389 len 31]
                    else:
                        if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) < balanceOf[address(msg.sender)] * sub_9192c4ff:
                            if sub_b010e915[address(msg.sender)].field_0 >= 0:
                                revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[389 len 31]
                            if sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= balanceOf[address(msg.sender)] * sub_9192c4ff:
                                revert with 0, 32, 33, 0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[389 len 31]
                    require sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff) >= 0
                    if sub_ac2483d8[address(msg.sender)] > Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender] < sub_ac2483d8[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ac2483d8[msg.sender] = (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)] + sub_ac2483d8[msg.sender]
                    require ext_code.size(mimAddress)
                    call mimAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(mimAddress)
                    staticcall mimAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_d22af06d = ext_call.return_data[0]
                    emit 0x9f30d2bc: ((Mask(192, 64, sub_b010e915[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * sub_9192c4ff)) >> 64) - sub_ac2483d8[address(msg.sender)]), msg.sender
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (totalSupply * arg1 / ext_call.return_data[0]) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg1 / ext_call.return_data[0]
                if (totalSupply * arg1 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0]
                emit Transfer((totalSupply * arg1 / ext_call.return_data[0]), 0, msg.sender);
                if not sub_9192c4ff:
                    if sub_b010e915[address(msg.sender)].field_0 > sub_b010e915[address(msg.sender)].field_0:
                        revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[520 len 28]
                else:
                    if totalSupply * arg1 / ext_call.return_data[0] * sub_9192c4ff / sub_9192c4ff != totalSupply * arg1 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    require totalSupply * arg1 / ext_call.return_data[0] * sub_9192c4ff >= 0
                    if sub_b010e915[address(msg.sender)].field_0 - (totalSupply * arg1 / ext_call.return_data[0] * sub_9192c4ff) > sub_b010e915[address(msg.sender)].field_0:
                        if totalSupply * arg1 / ext_call.return_data[0] * sub_9192c4ff >= 0:
                            revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[520 len 28]
                        if sub_b010e915[address(msg.sender)].field_0 - (totalSupply * arg1 / ext_call.return_data[0] * sub_9192c4ff) <= sub_b010e915[address(msg.sender)].field_0:
                            revert with 0, 32, 36, 0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[520 len 28]
                    sub_b010e915[address(msg.sender)].field_0 += -1 * totalSupply * arg1 / ext_call.return_data[0] * sub_9192c4ff
    require ext_code.size(sub_d2c36fb6Address)
    staticcall sub_d2c36fb6Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_5a4cde17 = ext_call.return_data[0]
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_d22af06d = ext_call.return_data[0]
    emit Staked(arg1, totalSupply, msg.sender);
    emit BalanceSnapshot(sub_5a4cde17, sub_d22af06d);
}



}
