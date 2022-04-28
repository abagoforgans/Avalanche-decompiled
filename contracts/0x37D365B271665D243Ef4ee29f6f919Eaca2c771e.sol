contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint256 sub_c2ca1d01;
mapping of struct sub_60012465;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function sub_2411e0c6(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function decimals() payable {
    return decimals
}

function sub_60012465(?) payable {
    require calldata.size - 4 >= 32
    return sub_60012465[arg1].field_0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_77764930(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_c2ca1d01(?) payable {
    require calldata.size - 4 >= 32
    return sub_c2ca1d01[arg1]
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
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPermissionToWrap(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor6[address(arg1)] = uint8(arg2)
    emit SetPermissionToWrap(address(arg1), arg2);
}

function setPermissionToUnwrap(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor7[address(arg1)] = uint8(arg2)
    emit SetPermissionToUnwrap(address(arg1), arg2);
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

function addUnderlyingToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor6[address(arg1)] = 1
    stor7[address(arg1)] = 1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_60012465[address(arg1)].field_0 = uint8(ext_call.return_data[0])
    sub_60012465[address(arg1)].field_8 = 0
    emit AddUnderlyingToken(arg1);
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
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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

function unwrap(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if not stor7[address(arg1)]:
        revert with 0, 'it`s not allowed to unwrap'
    if arg2 <= 0:
        revert with 0, 'need non-zero amount'
    if not arg3:
        revert with 0, 'need non-zero address'
    if arg2:
        if 10^sub_60012465[address(arg1)].field_0 * arg2 / arg2 != 10^sub_60012465[address(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 10^decimals <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 10^decimals
        if 10^sub_60012465[address(arg1)].field_0 * arg2 / 10^decimals > sub_c2ca1d01[address(arg1)]:
            revert with 0, 'Insufficient reserve token'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(msg.sender)] -= arg2
        if arg2 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg2
        emit Transfer(arg2, msg.sender, 0);
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[356 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, 10^sub_60012465[address(arg1)].field_0 * arg2 / 10^decimals) >> 32
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, 10^sub_60012465[address(arg1)].field_0 * arg2 / 10^decimals) << 224, mem[420 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        else:
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
        if 10^sub_60012465[address(arg1)].field_0 * arg2 / 10^decimals > sub_c2ca1d01[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_c2ca1d01[address(arg1)] -= 10^sub_60012465[address(arg1)].field_0 * arg2 / 10^decimals
        emit Unwrap(address(arg1), arg2, 10^sub_60012465[address(arg1)].field_0 * arg2 / 10^decimals, arg3);
    else:
        if 10^decimals <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 10^decimals
        if 0 / 10^decimals > sub_c2ca1d01[address(arg1)]:
            revert with 0, 'Insufficient reserve token'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(msg.sender)] -= arg2
        if arg2 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg2
        emit Transfer(arg2, msg.sender, 0);
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[356 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, 0 / 10^decimals) >> 32
        mem[420 len 0] = 0
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, 0 / 10^decimals) << 224, mem[420 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if 0 / 10^decimals > sub_c2ca1d01[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_c2ca1d01[address(arg1)] -= 0 / 10^decimals
            emit Unwrap(address rg1, uint256 rg2, uint256 rg3, address rg4):
                        address(arg1),
                        arg2,
                        0,
                        0 / 10^decimals,
                        arg3,
        else:
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
            if 0 / 10^decimals > sub_c2ca1d01[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_c2ca1d01[address(arg1)] -= 0 / 10^decimals
            emit Unwrap(address(arg1), arg2, 0 / 10^decimals, arg3);
}

function wrap(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if not stor6[address(arg1)]:
        revert with 0, 'it`s not allowed to wrap'
    if arg2 <= 0:
        revert with 0, 'need non-zero amount'
    if not arg3:
        revert with 0, 'need non-zero address'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if arg2 + sub_c2ca1d01[address(arg1)] < sub_c2ca1d01[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_c2ca1d01[address(arg1)] += arg2
        if not arg2:
            if 10^sub_60012465[address(arg1)].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^sub_60012465[address(arg1)].field_0
            if not arg3:
                revert with 0, 'ERC20: mint to the zero address'
            if (0 / 10^sub_60012465[address(arg1)].field_0) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 0 / 10^sub_60012465[address(arg1)].field_0
            if (0 / 10^sub_60012465[address(arg1)].field_0) + balanceOf[address(arg3)] < balanceOf[address(arg3)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg3)] += 0 / 10^sub_60012465[address(arg1)].field_0
            emit Transfer((0 / 10^sub_60012465[address(arg1)].field_0), 0, arg3);
            emit Wrap(address rg1, uint256 rg2, uint256 rg3, address rg4):
                      address(arg1),
                      arg2,
                      0 / 10^sub_60012465[address(arg1)].field_0,
                      0,
                      arg3,
        else:
            if 10^decimals * arg2 / arg2 != 10^decimals:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            if 10^sub_60012465[address(arg1)].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^sub_60012465[address(arg1)].field_0
            if not arg3:
                revert with 0, 'ERC20: mint to the zero address'
            if (10^decimals * arg2 / 10^sub_60012465[address(arg1)].field_0) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 10^decimals * arg2 / 10^sub_60012465[address(arg1)].field_0
            if (10^decimals * arg2 / 10^sub_60012465[address(arg1)].field_0) + balanceOf[address(arg3)] < balanceOf[address(arg3)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg3)] += 10^decimals * arg2 / 10^sub_60012465[address(arg1)].field_0
            emit Transfer((10^decimals * arg2 / 10^sub_60012465[address(arg1)].field_0), 0, arg3);
            emit Wrap(address rg1, uint256 rg2, uint256 rg3, address rg4):
                      address(arg1),
                      arg2,
                      10^decimals * arg2 / 10^sub_60012465[address(arg1)].field_0,
                      0,
                      arg3,
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if arg2 + sub_c2ca1d01[address(arg1)] < sub_c2ca1d01[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_c2ca1d01[address(arg1)] += arg2
        if not arg2:
            if 10^sub_60012465[address(arg1)].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^sub_60012465[address(arg1)].field_0
            if not arg3:
                revert with 0, 'ERC20: mint to the zero address'
            if (0 / 10^sub_60012465[address(arg1)].field_0) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 0 / 10^sub_60012465[address(arg1)].field_0
            if (0 / 10^sub_60012465[address(arg1)].field_0) + balanceOf[address(arg3)] < balanceOf[address(arg3)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg3)] += 0 / 10^sub_60012465[address(arg1)].field_0
            emit Transfer((0 / 10^sub_60012465[address(arg1)].field_0), 0, arg3);
            emit Wrap(address(arg1), arg2, 0 / 10^sub_60012465[address(arg1)].field_0, arg3);
        else:
            if 10^decimals * arg2 / arg2 != 10^decimals:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if 10^sub_60012465[address(arg1)].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^sub_60012465[address(arg1)].field_0
            if not arg3:
                revert with 0, 'ERC20: mint to the zero address'
            if (10^decimals * arg2 / 10^sub_60012465[address(arg1)].field_0) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 10^decimals * arg2 / 10^sub_60012465[address(arg1)].field_0
            if (10^decimals * arg2 / 10^sub_60012465[address(arg1)].field_0) + balanceOf[address(arg3)] < balanceOf[address(arg3)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg3)] += 10^decimals * arg2 / 10^sub_60012465[address(arg1)].field_0
            emit Transfer((10^decimals * arg2 / 10^sub_60012465[address(arg1)].field_0), 0, arg3);
            emit Wrap(address(arg1), arg2, 10^decimals * arg2 / 10^sub_60012465[address(arg1)].field_0, arg3);
}



}
